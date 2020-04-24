
# JuliaProPlotExamples

The proplot examples translated to Julia using PyCall.jl and PyPlot.jl.

Click on the images below to be directed to the julia code that produced it


### Basics

#### Figures and subplots


[![Figures-and-subplots-1](Basics/Figures-and-subplots-1.jl)](https://user-images.githubusercontent.com/4486578/80186449-57b25780-8651-11ea-85bf-81f3cf7c96e8.png)

[![Figures-and-subplots-2](Basics/Figures-and-subplots-2.jl)](https://user-images.githubusercontent.com/4486578/80186451-584aee00-8651-11ea-9f11-0745f3aa28ca.png)

[![Figures-and-subplots-3](Basics/Figures-and-subplots-3.jl)](https://user-images.githubusercontent.com/4486578/80186453-58e38480-8651-11ea-8f06-a6462553fde0.png)

#### Formatting subplots

[![Formatting-subplots](Basics/Formatting-subplots.jl)](https://user-images.githubusercontent.com/4486578/80186455-597c1b00-8651-11ea-9f53-cc4661ceedd9.png)

#### Changing rc settings

[![Changing-rc-settings](Basics/Changing-rc-settings.jl)](https://user-images.githubusercontent.com/4486578/80186436-541ed080-8651-11ea-88a1-5e69b19a6ea3.png)

#### Subplot grids

[![Subplot-grids](Basics/Subplot-grids.jl)](https://user-images.githubusercontent.com/4486578/80186458-5aad4800-8651-11ea-8030-bdcc7abdf7f8.png)


### Notes

1. The scoping rules are a bit different between Python and Julia, which require some tweaking for the examples to work.

1. You can't format all the subplots at once with `axs.format` AFAIK, so you have to loop through all axes and format each of them.

1. `f, axs = proplot.subplots()` returns a vector of axes, even if you specify multiple columns, so that you need to reshape (and transpose) the `axs` array to get access to the axes in the "expected" way.
