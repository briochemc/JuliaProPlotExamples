# Translating
# https://proplot.readthedocs.io/en/latest/subplots.html#Subplot-numbers-and-a-b-c-labels
# to Julia

# Import proplot using PyCall
using PyCall
proplot = pyimport("proplot")

f, axs = proplot.subplots(nrows=8, ncols=8, axwidth=0.7, space=0)
[ax.format(
    abc=true, abcloc="ur", xlabel="x axis", ylabel="y axis",
    xticks=[], yticks=[], suptitle="Subplot labels demo"
) for ax in axs]
f.savefig("figs/Subplot-numbers-and-a-b-c-labels.svg", transparent=false)
