# This file was generated, do not modify it. # hide
using Symbolics

@variables t y g

D = Differential(t)

y = 0.5 * g * t^2

yₜ = expand_derivatives(D(y)) # getting derivative

speed_at_t2 = simplify(substitute(yₜ, Dict(g => 9.8, t=> 3))) # assume the free fall on earth

