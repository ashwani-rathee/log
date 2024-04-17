+++
title = "Code blocks"
hascode = true
date = Date(2019, 3, 22)
rss = "A short description of the page which would serve as **blurb** in a `RSS` feed; you can use basic markdown here but the whole description string must be a single line (not a multiline string). Like this one for instance. Keep in mind that styling is minimal in RSS so for instance don't expect maths or fancy styling to work; images should be ok though: ![](https://upload.wikimedia.org/wikipedia/en/3/32/Rick_and_Morty_opening_credits.jpeg)"

tags = ["syntax", "code"]
+++


# Working with code blocks

\toc

```>
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

```

