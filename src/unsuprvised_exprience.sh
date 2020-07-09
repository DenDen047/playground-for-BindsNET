#!/bin/bash

python3.6 batch_eth_mnist.py --update_rule NoOp --n_epochs 10
python3.6 batch_eth_mnist.py --update_rule Hebbian --n_epochs 10
python3.6 batch_eth_mnist.py --update_rule PostPre --n_epochs 10
python3.6 batch_eth_mnist.py --update_rule WeightDependentPostPre --n_epochs 5