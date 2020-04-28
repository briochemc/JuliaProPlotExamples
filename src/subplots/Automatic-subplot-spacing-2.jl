# Translating
# https://proplot.readthedocs.io/en/latest/subplots.html#Automatic-subplot-spacing
# to Julia

# Import proplot using PyCall
using PyCall
proplot = pyimport("proplot")

f, axs = proplot.subplots(
    ncols=4, nrows=3, wspace=(0, 0, nothing), hspace=(0, nothing), # auto spacing not working AFAIK
    bottom="5em", right="5em", span=false,
    axwidth=1.1,
)

# Must reshape axs (and transpose it...)
axs = permutedims(reshape(axs, 4, 3), [2, 1])

[ax.format(
    suptitle="Tight layout with user overrides",
    rowlabels=["Row 1", "Row 2", "Row 3"],
    collabels=["Column 1", "Column 2", "Column 3", "Column 4"]
) for ax in axs]
[ax.format(xtickloc="top") for ax in axs[1, :]]
[ax.format(xtickloc="both") for ax in axs[3, :]]
[ax.format(ytickloc="neither") for ax in axs[:, 2]]
[ax.format(ytickloc="right") for ax in axs[:, 3]]
[ax.format(ytickloc="both") for ax in axs[:, 4]]
[ax.format(title="Title\nTitle\nTitle", xlabel="xlabel") for ax in axs[end, :]]
[ax.format(ylabel="ylabel\nylabel") for ax in axs[:, 1]]
f.savefig("figs/Automatic-subplot-spacing-2.svg", transparent=false)
