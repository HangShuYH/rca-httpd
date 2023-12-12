## 编译运行httpd

```shell
cd httpd
./compile.sh #默认安装目录是/home/sh/httpd-2.4.49-trace
cd ..
export HTTPD_INSTALL=/home/sh/httpd-2.4.49-trace
export HTTPD_SRC=$(pwd)/httpd
export AURORA_SRC=$(pwd)/aurora
```

修改/home/sh/httpd-2.4.49-trace/conf/httpd.conf的监听端口为5325

```shell
$HTTPD_INSTALL/bin/httpd -X < $HTTPD_SRC/http_test
```
执行结果看到[+] Nice run， 说明httpd成功处理了一次请求并正常退出了。

## 使用Intel-pin提取trace

```shell
# 编译Pin
cd $AURORA_SRC/pin-3.28-98749-g6643ecee5-gcc-linux/source/tools/AuroraTracer
make obj-intel64/aurora_tracer.so
```
### 测试
```shell
# 测试pin是否能够正常提取trace
cd $AURORA_SRC/pin-3.28-98749-g6643ecee5-gcc-linux/
./pin -t source/tools/AuroraTracer/obj-intel64/aurora_tracer.so -logfile log -o out -- $HTTPD_INSTALL/bin/httpd -X < $HTTPD_SRC/http_test 
```
可以看到[+] Nice run，说明pin成功执行了httpd

### 提取Trace
准备必要的文件(inputs/crashes下面应该是导致崩溃的http包，inputs/non_crashes下面应该是不导致崩溃的http包)
```shell
cd $HTTPD_SRC
mkdir evaluation
mkdir -p evaluation/inputs/crashes
mkdir -p evaluation/inputs/non_crashes
mkdir -p evaluation/traces
cp http_test evaluation/inputs/crashes
cp http_test evaluation/inputs/non_crashes
export EVAL_DIR="$(pwd)/evaluation"
```
提取Trace
```shell
export PIN_ROOT="$AURORA_SRC/pin-3.28-98749-g6643ecee5-gcc-linux"
cd $AURORA_SRC/tracing/scripts
python3 ./tracing.py "$HTTPD_INSTALL/bin/httpd -X" $EVAL_DIR/inputs $EVAL_DIR/traces
python3 addr_ranges.py --eval_dir $EVAL_DIR $EVAL_DIR/traces 
ls $EVAL_DIR/traces # 生成crashes,logs,non_crashes,stats.txt, addresses.json
```
因为多线程下的log格式有所变化，addr_ranges.py的parse_logfile函数不适用，所以需要手动修改一下addresses.json(或者改一下parse_logfile函数)，把json的键的tid:xxx]删除，保留为heap_start: xxx的格式。

### root cause analysis
```shell
cp $HTTPD_INSTALL/bin/httpd $EVAL_DIR/httpd_trace
echo "-X @@" > $EVAL_DIR/arguments.txt

cd $AURORA_SRC/root_cause_analysis
# Build components
cargo build --release --bin monitor
cargo build --release --bin rca
# run root cause analysis
cargo run --release --bin rca -- --eval-dir $EVAL_DIR --trace-dir $EVAL_DIR --monitor --rank-predicates
# (Optional) enrich with debug symbols
cargo run --release --bin addr2line -- --eval-dir $EVAL_DIR
ls $EVAL_DIR # ranked_prediates_verbose.txt就是最终的文件
```

