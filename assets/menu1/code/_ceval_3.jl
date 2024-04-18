# This file was generated, do not modify it. # hide
function average_speed1(y2, y1, t2, t1)
     Symbolics.value((y2 - y1) / 3)
end

yₜ₌₃ = y(9.8, 3)
yₜ₌₀ = y(9.8, 0)

averagespeed_till_t3 = average_speed1( yₜ₌₃, yₜ₌₀, 3, 0)

