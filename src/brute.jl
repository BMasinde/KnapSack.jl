"""
    An implementation of the Knapsack combinatorial optimization
    problem via brute force algorithm.
    This is not the most efficient way for large data. Limit use to
    small sets of data approximately not more than 30 objects to
    fit in the Knapsack

"""

# custom datatype for the weight to be either int or float
IntOrFloat = Union{Int, Float64}

function brute(X::DataFrame, w::IntOrFloat)
    # check for  correctness of input

    # n number of elements in X
    n = size(X, 1)

    # create subsets first
    combs = collect(combinations(1:size(X, 1)))

    # max_value from iteration
    max_value = 0

    best_comb = Int[]

    max_weight = 0
# iterate over combinations
    for i in 1:length(combs)

        # value of combination
        value = sum(X[combs[i], 2])

        # weight of combination
        weight = sum(X[combs[i], 1])

        # condition
        if value >= max_value && weight <= w
            max_value = value

            best_comb = combs[i]

            max_weight = weight
        end

    end

    return([best_comb, max_value, max_weight])
end
