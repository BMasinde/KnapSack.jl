using Knapsack
using Test
using Random

# test function nuc
# set Random.seed
Random.seed!(1234)
@test nuc(5) == "nucleotide sequence AGGGT"
