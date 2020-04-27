# Translating
# https://proplot.readthedocs.io/en/latest/basics.html#Figures-and-subplots
# to Julia

# Import proplot using PyCall
using PyCall
proplot = pyimport("proplot")

# start of example
data = cumsum(2(rand(100, 5) .- 0.5), dims=1)

# Simple plot
f, axs = proplot.subplots(ncols=2)
axs[1].plot(data, lw=2)
axs[1].format(xticks=20, xtickminor=false)
[ax.format(
    suptitle="Simple subplot grid", title="Title",
    xlabel="x axis", ylabel="y axis"
) for ax in axs]
f.savefig("figs/Figures-and-subplots-1.svg")

# Complex grid
array = [  # the "picture"; 1 == subplot a, 2 == subplot b, etc.
    [1, 1, 2, 2],
    [0, 3, 3, 0],
]
f, axs = proplot.subplots(array, axwidth=1.8)
[ax.format(
    abc=true, abcloc="ul", suptitle="Complex subplot grid",
    xlabel="xlabel", ylabel="ylabel"
) for ax in axs]
axs[3].plot(data, lw=2)
f.savefig("figs/Figures-and-subplots-2.svg")

# Really complex grid
array = [  # the "picture"
    [1, 1, 2],
    [1, 1, 6],
    [3, 4, 4],
    [3, 5, 5],
]
f, axs = proplot.subplots(array, width=5, span=false)
[ax.format(
    suptitle="Really complex subplot grid",
    xlabel="xlabel", ylabel="ylabel", abc=true
) for ax in axs]
axs[1].plot(data, lw=2)
f.savefig("figs/Figures-and-subplots-3.svg")
