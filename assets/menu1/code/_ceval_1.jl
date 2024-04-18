# This file was generated, do not modify it. # hide
using Symbolics, Plots
@variables t g # defining  the variables we intend to use in our function

D = Differential(t) # dy/dt, this dt is Differential(t)

y(g,t) = 0.5 * g * t^2 # motion equation 
@register_symbolic y(g, t) 
