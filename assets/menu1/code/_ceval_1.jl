# This file was generated, do not modify it. # hide
using Symbolics

@variables t x y

D = Differential(t)

z = t + t^2

D(z) # symbolic representation of derivative(t + t^2, t)

expand_derivatives(D(z))
 
Symbolics.jacobian([x + x*y, x^2 + y],[x, y])

B = simplify.([t^2 + t + t^2  2t + 4t
                  x + y + y + 2t  x^2 - x^2 + y^2])

simplify.(substitute.(B, (Dict(x => y^2),)))

substitute.(B, (Dict(x => 2.0, y => 3.0, t => 4.0),))

