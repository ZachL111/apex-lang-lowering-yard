include("../src/DomainReview.jl")
using .DomainReview

item = ReviewItem(56, 54, 26, 49)
@assert score(item) == 137
@assert lane(item) == "watch"
