+++
title = "Code blocks"
hascode = true
date = Date(2019, 3, 22)
rss = "A short description of the page which would serve as **blurb** in a `RSS` feed; you can use basic markdown here but the whole description string must be a single line (not a multiline string). Like this one for instance. Keep in mind that styling is minimal in RSS so for instance don't expect maths or fancy styling to work; images should be ok though: ![](https://upload.wikimedia.org/wikipedia/en/3/32/Rick_and_Morty_opening_credits.jpeg)"

tags = ["syntax", "code"]
+++


# Problem Solving Symbolically

\toc

### Example 1

Dobby cliff dived from 250 ft high cliff. What's the instanteous speed at t = 2 and average speed during first 3 seconds of the fall?

##### Solution

Assuming free fall under gravity with no initial velocity, it will fall 
`y = 0.5 * g * t^2`
in t sec from initial position.
```>
using Symbolics

@variables t y g

D = Differential(t)

y = 0.5 * g * t^2

yₜ = expand_derivatives(D(y)) # getting derivative

speed_at_t2 = simplify(substitute(yₜ, Dict(g => 9.8, t=> 3))) # assume the free fall on earth

```

Average Speed will distance covered in the first 3 seconds of the fall, so 
```>
function average_speed1(y2, y1, t2, t1)
     Symbolics.value((y2 - y1) / 3)
end

yₜ₌₃ = substitute(y, Dict(g => 9.8, t => 3))
yₜ₌₀ = substitute(y, Dict(g => 9.8, t => 0))

averagespeed_till_t3 = average_speed1( yₜ₌₃, yₜ₌₀, 3, 0)

```

--- 
### Example 2

---

