# This file was generated, do not modify it. # hide
function average_speed1(y2, y1, t2, t1)
     Symbolics.value((y2 - y1) / 3)
end

yₜ₌₃ = substitute(y, Dict(g => 9.8, t => 3))
yₜ₌₀ = substitute(y, Dict(g => 9.8, t => 0))

averagespeed_till_t3 = average_speed1( yₜ₌₃, yₜ₌₀, 3, 0)

