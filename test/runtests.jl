using Knapsack
using Test

# include test files
@testset "Output Nucleotide String Tests" begin
    include("nuc_test.jl")
end

# brute algorithm test
@testset "brute algorithm gives correct output" begin
    include("brute_test.jl")

end
