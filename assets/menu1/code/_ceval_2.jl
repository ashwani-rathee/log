# This file was generated, do not modify it. # hide
yₜ = expand_derivatives(D(y)) # getting derivative

speed_at_t2 = simplify(substitute(yₜ, Dict(g => 9.8, t=> 3))) # assume the free fall on earth
