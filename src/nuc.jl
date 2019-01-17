
# import package Random
import Random

"""
function nuc generates a nucleotide sequence of length l
    ```julia
    nuc(5)
    ```
    should give a nucleotide sequence of length 5.
"""

function nuc(l::Int)
    seq = string("nucleotide sequence ", Random.randstring("ACTG", l))
    return seq
end
