# Translating
# https://proplot.readthedocs.io/en/latest/subplots.html#Automatic-subplot-spacing
# to Julia

# Import proplot using PyCall
using PyCall
proplot = pyimport("proplot")

f, axs = proplot.subplots(
    nrows=3, ncols=3, axwidth=1.1, share=0
)
axs[5].format(
    title="title\ntitle\ntitle",
    suptitle="Tight layout with variable row-column spacing"
)
axs[2].format(ylabel="ylabel\nylabel\nylabel")
[ax.format(xlabel="xlabel\nxlabel\nxlabel") for ax in axs[1:2:5]]
[ax.format(
    rowlabels=["Row 1", "Row 2", "Row 3"],
    collabels=["Column 1", "Column 2", "Column 3"]
) for ax in axs]
f.savefig("figs/Automatic-subplot-spacing-1.svg", transparent=false)
