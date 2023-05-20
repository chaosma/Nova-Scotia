#!/bin/bash

circom ./examples/toy/toy.circom --r1cs --wasm --sym --c --output ./examples/toy/
cd examples/toy/toy_cpp && make
