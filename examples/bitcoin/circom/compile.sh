#cd examples/bitcoin/circom
cat bitcoin.circom > bitcoin_benchmark.circom
echo "component main { public [step_in] } = Main($1);" >> bitcoin_benchmark.circom
circom bitcoin_benchmark.circom --r1cs --sym --c
cd bitcoin_benchmark_cpp && make
