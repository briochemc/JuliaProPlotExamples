
# Julia ProPlot Examples

Here you will find some (most?) of the [ProPlot](https://proplot.readthedocs.io/en/latest/index.html) examples from the documentation, but translated to Julia using [PyCall.jl](https://github.com/JuliaPy/PyCall.jl).

Note you must install ProPlot first. (And probably some other things.)

---

Click on the images below to be directed to the julia code that produced it. 

## Basics

### Figures and subplots


[<img src="figs/Figures-and-subplots-1.svg" width=30%>
<img src="figs/Figures-and-subplots-2.svg" width=30%>
<img src="figs/Figures-and-subplots-3.svg" width=30%>](src/basics/Figures-and-subplots.jl)

### Formatting subplots

[<img src="figs/Formatting-subplots.svg" width=50%>](src/basics/Formatting-subplots.jl)

### Changing rc settings

[<img src="figs/Changing-rc-settings.svg" width=50%>](src/basics/Changing-rc-settings.jl)

### Subplot grids

[<img src="figs/Subplot-grids.svg" width=50%>](src/basics/Subplot-grids.jl)

## Subplots features

### Automatic figure sizing

[<img src="figs/Automatic-figure-sizing-1a.svg" width=40%>
<img src="figs/Automatic-figure-sizing-1b.svg" width=40%>](src/subplots/Automatic-figure-sizing-1.jl)

[<img src="figs/Automatic-figure-sizing-2a-1.svg" width=24%>
<img src="figs/Automatic-figure-sizing-2a-2.svg" width=24%>
<img src="figs/Automatic-figure-sizing-2b-1.svg" width=24%>
<img src="figs/Automatic-figure-sizing-2b-2.svg" width=24%>](src/subplots/Automatic-figure-sizing-2.jl)

[<img src="figs/Automatic-figure-sizing-3a-1.svg" width=24%>
<img src="figs/Automatic-figure-sizing-3a-2.svg" width=24%>
<img src="figs/Automatic-figure-sizing-3b-1.svg" width=24%>
<img src="figs/Automatic-figure-sizing-3b-2.svg" width=24%>](src/subplots/Automatic-figure-sizing-3.jl)

### Automatic subplot spacing

[<img src="figs/Automatic-subplot-spacing-1.svg" width=50%>](src/subplots/Automatic-subplot-spacing-1.jl)
[<img src="figs/Automatic-subplot-spacing-2.svg" width=50%>](src/subplots/Automatic-subplot-spacing-2.jl)

### Arbitrary physical units

[<img src="figs/Arbitrary-physical-units.svg" width=50%>](src/subplots/Arbitrary-physical-units.jl)

### Subplot numbers and a-b-c labels

[<img src="figs/Subplot-numbers-and-a-b-c-labels.svg" width=50%>](src/subplots/Subplot-numbers-and-a-b-c-labels.jl)

### Shared and spanning labels

[<img src="figs/Shared-and-spanning-labels-1a.svg" width=24%>
<img src="figs/Shared-and-spanning-labels-1b.svg" width=24%>
<img src="figs/Shared-and-spanning-labels-1c.svg" width=24%>
<img src="figs/Shared-and-spanning-labels-1d.svg" width=24%>](src/subplots/Shared-and-spanning-labels-1.jl)

[<img src="figs/Shared-and-spanning-labels-2a.svg" width=40%>
<img src="figs/Shared-and-spanning-labels-2b.svg" width=40%>](src/subplots/Shared-and-spanning-labels-2.jl)

## Notes

1. Python's 0-based indexing means all the indices are shifted in these Julia examples.

1. The scoping rules are a bit different between Python and Julia, which require some tweaking for the examples to work.

1. You can't format all the subplots at once with `axs.format` AFAIK, so you have to loop through all axes and format each of them.

1. `f, axs = proplot.subplots()` returns a vector of axes, even if you specify multiple columns, so that you need to reshape (and transpose) the `axs` array to get access to the axes in Cartesian coordinates (i.e., as in `axs[i,j]`).

1. I saved the images via `f.savefig("X.svg", transparent=false)` in [figs/](figs/).
