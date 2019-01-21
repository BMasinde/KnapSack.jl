# precompile
__precompile__

module Knapsack

# imports go Here
using Random
using DataFrames
using Combinatorics
using Distributions
# nuc function
# to make sure initial setup is correct


# export the function nuc for setup testing
export nuc
# export brute force algorithm
export brute
# infuture keep module clean with only imports of source files
# use include("file")

include("nuc.jl")
include("brute.jl")

end # module
