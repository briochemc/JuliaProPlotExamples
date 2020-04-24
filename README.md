
# JuliaProPlotExamples

The proplot examples translated to Julia using PyCall.jl and PyPlot.jl.

Click on the images below to be directed to the julia code that produced it


### Basics

#### Figures and subplots

[<img src="https://user-images.githubusercontent.com/4486578/80186449-57b25780-8651-11ea-85bf-81f3cf7c96e8.png" width=66%>](Basics/Figures-and-subplots-1.jl)
[<img src="https://user-images.githubusercontent.com/4486578/80186451-584aee00-8651-11ea-9f11-0745f3aa28ca.png" width=66%>](Basics/Figures-and-subplots-2.jl)
[<img src="https://user-images.githubusercontent.com/4486578/80186453-58e38480-8651-11ea-8f06-a6462553fde0.png" width=66%>](Basics/Figures-and-subplots-3.jl)

#### Formatting subplots

[<img src="https://user-images.githubusercontent.com/4486578/80186455-597c1b00-8651-11ea-9f53-cc4661ceedd9.png" width=66%>](Basics/Formatting-subplots.jl)

#### Changing rc settings

[<img src="https://user-images.githubusercontent.com/4486578/80186436-541ed080-8651-11ea-88a1-5e69b19a6ea3.png" width=66%>](Basics/Changing-rc-settings.jl)

#### Subplot grids

[<img src="https://user-images.githubusercontent.com/4486578/80186458-5aad4800-8651-11ea-8030-bdcc7abdf7f8.png" width=66%>](Basics/Subplot-grids.jl)


### Notes

1. The scoping rules are a bit different between Python and Julia, which require some tweaking for the examples to work.

1. You can't format all the subplots at once with `axs.format` AFAIK, so you have to loop through all axes and format each of them.

1. `f, axs = proplot.subplots()` returns a vector of axes, even if you specify multiple columns, so that you need to reshape (and transpose) the `axs` array to get access to the axes in the "expected" way.
