+++
title = "Symbolic Programming"
hascode = true
date = Date(2019, 3, 22)
rss = "A short description of the page which would serve as **blurb** in a `RSS` feed; you can use basic markdown here but the whole description string must be a single line (not a multiline string). Like this one for instance. Keep in mind that styling is minimal in RSS so for instance don't expect maths or fancy styling to work; images should be ok though: ![](https://upload.wikimedia.org/wikipedia/en/3/32/Rick_and_Morty_opening_credits.jpeg)"

tags = ["syntax", "code"]
+++


# Problem Solving Symbolically

\toc

### Example 1

Dobby cliff dived from 250 m high cliff. What's the instanteous speed at t = 2 and average speed during first 3 seconds of the fall?

##### Solution

Assuming free fall under gravity with no initial velocity, it will fall 
`y = 0.5 * g * t^2`
in t sec from initial position.
```>
using Symbolics, Plots
@variables t g # defining  the variables we intend to use in our function

D = Differential(t) # dy/dt, this dt is Differential(t)

y(g,t) = 0.5 * g * t^2 # motion equation 
@register_symbolic y(g, t) 
```

```julia:gr
# gr()
# tvec = range(0, 5, length = 100)
# plot(y.(9.8, tvec))
# savefig(joinpath(@OUTPUT, "symbol.svg")) # hide
```
\fig{symbol.svg}

 So what's instantaneous speed at t = 2?
```>
yₜ = expand_derivatives(D(y)) # getting derivative

speed_at_t2 = simplify(substitute(yₜ, Dict(g => 9.8, t=> 3))) # assume the free fall on earth
```
So Instantaneous speed at t=2 is 29.4 m/s. \\n Average Speed will distance covered in the first 3 seconds of the fall, so 
```>
function average_speed1(y2, y1, t2, t1)
     Symbolics.value((y2 - y1) / 3)
end

yₜ₌₃ = y(9.8, 3)
yₜ₌₀ = y(9.8, 0)

averagespeed_till_t3 = average_speed1( yₜ₌₃, yₜ₌₀, 3, 0)

```
Average Speed is 14.7 m/s in first 3 seconds of the fall.

--- 
### Example 2

Population of a group of travelling soot balls(susuwatari) grew in 100 days and their population was measured at reqular intervals
and plotted in the following figure and it was found that the graph follows the logistic growth formula i.e. <br>
`p(L, k, t) = L / (1 + e ^ -kt)`  <br>
where 
- L is maximum population possible in a particular environment
- k is the growth rate of the population

\fig{/assets/soot_ball.webp}
---

