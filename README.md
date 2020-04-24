
# JuliaProPlotExamples

The proplot examples translated to Julia using PyCall.jl and PyPlot.jl.

Click on the images below to be directed to the julia code that produced it


## Basics

### Figures and subplots


[<img src="https://user-images.githubusercontent.com/4486578/80190356-87fcf480-8657-11ea-94be-39bf4a465457.png" width=50%>
<img src="https://user-images.githubusercontent.com/4486578/80190357-892e2180-8657-11ea-82d4-082996f93f91.png" width=50%>
<img src="https://user-images.githubusercontent.com/4486578/80190363-8b907b80-8657-11ea-8c1e-216a9dcb663c.png" width=50%>](basics/Figures-and-subplots.jl)

### Formatting subplots

[<img src="https://user-images.githubusercontent.com/4486578/80190595-e75b0480-8657-11ea-86e8-f9d2223eb744.png" width=50%>](basics/Formatting-subplots.jl)

### Changing rc settings

[<img src="https://user-images.githubusercontent.com/4486578/80190715-13768580-8658-11ea-9077-82e8e674458b.png" width=50%>](basics/Changing-rc-settings.jl)

### Subplot grids

[<img src="https://user-images.githubusercontent.com/4486578/80191372-eecedd80-8658-11ea-9200-d063897efbcc.png" width=50%>](basics/Subplot-grids.jl)


## Notes

1. The scoping rules are a bit different between Python and Julia, which require some tweaking for the examples to work.

1. You can't format all the subplots at once with `axs.format` AFAIK, so you have to loop through all axes and format each of them.

1. `f, axs = proplot.subplots()` returns a vector of axes, even if you specify multiple columns, so that you need to reshape (and transpose) the `axs` array to get access to the axes in the "expected" way.
