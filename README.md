
# Julia ProPlot Examples

Here you will find some (most?) of the [ProPlot](https://proplot.readthedocs.io/en/latest/index.html) examples from the documentation, but translated to Julia using [PyCall.jl](https://github.com/JuliaPy/PyCall.jl).

Note you must install ProPlot first. (And probably some other things.)

---

Click on the images below to be directed to the julia code that produced it. 

## Basics

### Figures and subplots


[<img src="https://gist.github.com/briochemc/205e88cd3bfb13dd8c42c539a32afe28/raw/8dc99126f838f4ed4cb1eaec5c9286caaa89b44e/Figures-and-subplots-1.svg">
<img src="https://gist.github.com/briochemc/205e88cd3bfb13dd8c42c539a32afe28/raw/8dc99126f838f4ed4cb1eaec5c9286caaa89b44e/Figures-and-subplots-2.svg">
<img src="https://gist.github.com/briochemc/205e88cd3bfb13dd8c42c539a32afe28/raw/8dc99126f838f4ed4cb1eaec5c9286caaa89b44e/Figures-and-subplots-3.svg">](basics/Figures-and-subplots.jl)

### Formatting subplots

[<img src="https://gist.github.com/briochemc/205e88cd3bfb13dd8c42c539a32afe28/raw/8dc99126f838f4ed4cb1eaec5c9286caaa89b44e/Formatting-subplots.svg">](basics/Formatting-subplots.jl)

### Changing rc settings

[<img src="https://gist.github.com/briochemc/205e88cd3bfb13dd8c42c539a32afe28/raw/8dc99126f838f4ed4cb1eaec5c9286caaa89b44e/Changing-rc-settings.svg">](basics/Changing-rc-settings.jl)

### Subplot grids

[<img src="https://gist.github.com/briochemc/205e88cd3bfb13dd8c42c539a32afe28/raw/8dc99126f838f4ed4cb1eaec5c9286caaa89b44e/Subplot-grids.svg">](basics/Subplot-grids.jl)

## Subplots features

### Automatic figure sizing

[<img src="https://gist.github.com/briochemc/205e88cd3bfb13dd8c42c539a32afe28/raw/8dc99126f838f4ed4cb1eaec5c9286caaa89b44e/Automatic-figure-sizing-1.svg">
<img src="https://gist.github.com/briochemc/205e88cd3bfb13dd8c42c539a32afe28/raw/8dc99126f838f4ed4cb1eaec5c9286caaa89b44e/Automatic-figure-sizing-2.svg">](subplots/Automatic-figure-sizing.jl)

## Notes

1. The scoping rules are a bit different between Python and Julia, which require some tweaking for the examples to work.

1. You can't format all the subplots at once with `axs.format` AFAIK, so you have to loop through all axes and format each of them.

1. `f, axs = proplot.subplots()` returns a vector of axes, even if you specify multiple columns, so that you need to reshape (and transpose) the `axs` array to get access to the axes in the "expected" way.

1. I saved the images via `f.savefig("X.svg", transparent=false)`.
