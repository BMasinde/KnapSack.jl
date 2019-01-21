# import all packages required including this package
using Knapsack
using Test
using Random
using Distributions
using DataFrames

# test function brute
# generate a DataFrame X

Random.seed!(1234)
# generate x1 as weight
x1 = Random.rand(1:4000,10)
# generate x2 as value
x2 = Random.rand(Uniform(0,1000), 10)
# construct X DataFrame
Xdata = DataFrame(hcat(x1,x2))

@test brute(Xdata, 2000)[1] == [1, 9, 10]

@test brute(Xdata, 2000)[2] == 1804.1179133774485

@test brute(Xdata, 2000)[3] == 1415.0
