include("../src/Policy.jl")
using .Policy

signal_case_1 = Signal(74, 89, 12, 8, 6)
@assert score(signal_case_1) == 193
@assert classify(signal_case_1) == "accept"
signal_case_2 = Signal(87, 89, 9, 16, 7)
@assert score(signal_case_2) == 175
@assert classify(signal_case_2) == "accept"
signal_case_3 = Signal(72, 71, 26, 24, 11)
@assert score(signal_case_3) == 61
@assert classify(signal_case_3) == "review"
