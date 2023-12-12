#!/bin/bash

PREFIX="${PREFIX:-/home/sh/httpd-2.4.49-trace}"

echo -e " \e[32mAPR"
echo
echo "Running apr with: c-compiler:$CC $CFLAGS c++-compiler:$CXX $CXXFLAGS"
sleep 2
cd apr-1.6.5 &&make clean&& ./configure --prefix="$PREFIX" && apr=$(pwd)  && make -j && make install && cd ..

echo -e " \e[33mAPRUTIL"
echo
echo "Running aprutil with: c-compiler:$CC $CFLAGS c++-compiler:$CXX $CXXFLAGS"
sleep 2
cd apr-util-1.6.3 &&make clean&& ./configure --prefix="$PREFIX" --with-apr=$apr && aprutil=$(pwd) && make -j && make install && cd ..

echo -e " \e[34mPCRE"
echo
echo "Running pcre with: c-compiler:$CC $CFLAGS c++-compiler:$CXX $CXXFLAGS"
sleep 2
cd pcre-8.00 &&make clean&& ./configure --disable-cpp --prefix="$PREFIX" && pcre=$(pwd) && make -j && make install && cd ..


if [[ -z "$apr" || -z "$aprutil" || -z "$pcre" ]]; then
  echo "\e[0m[-] Dependencies compilation failed."
  echo APR: $apr
  echo APR-Util: $aprutil
  echo PCRE8: $pcre
  return 1;
fi

echo -e "\e[0m[+] Using the following paths"
echo $apr
echo $aprutil
echo $pcre
sleep 4

cd httpd-2.4.49
make clean
LIBS="-L$apr/.libs -L$aprutil/.libs -L$pcre/.libs " CFLAGS=" $CFLAGS -march=skylake -g -ggdb -fno-builtin -fno-inline" LDFLAGS="$CFLAGS" ./configure --enable-unixd --disable-pie --enable-mods-static=few --prefix="$PREFIX" --with-mpm=event --with-apr=$apr --with-apr-util=$aprutil --with-pcre=$pcre/pcre-config && make -j && make install && cd ..

