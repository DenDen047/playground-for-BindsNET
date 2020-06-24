#!/bin/bash

# create an array of model names
models=(\
    'TwoLayerNetwork' \
    'DiehlAndCook2015' \
)

# make a file to recode the results
results_file='results.txt'
touch ${results_file}

# run all models
for m in "${models[@]}"
do
    echo "============ ${m} ============" >> ${results_file}
    python3.6 batch_eth_mnist.py --model ${m} >> ${results_file}
    echo -e "\n\n" >> ${results_file}
done

# python batch_eth_mnist.py --model TwoLayerNetwork
# python batch_eth_mnist.py --model DiehlAndCook2015
# python batch_eth_mnist.py --model DiehlAndCook2015v2
# python batch_eth_mnist.py --model IncreasingInhibitionNetwork
# python batch_eth_mnist.py --model LocallyConnectedNetwork
