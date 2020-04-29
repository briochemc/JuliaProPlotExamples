# Translating
# https://proplot.readthedocs.io/en/latest/subplots.html#Arbitrary-physical-units
# to Julia

# Import proplot using PyCall
using PyCall
proplot = pyimport("proplot")

f, axs = proplot.subplots(
    ncols=3, width="15cm", height="2.5in",
    wspace=("10pt", "20pt"), right="10mm",
)
panel = axs[3].panel_axes("r", width="2em")

# format each ax instead of the python context change using `with`
[ax.format(small="12px", large="15px") for ax in axs]
panel.format(small="12px", large="15px")

[ax.format(
    suptitle="Arguments with arbitrary units",
    xlabel="x axis", ylabel="y axis"
) for ax in axs]
f.savefig("figs/Arbitrary-physical-units.svg", transparent=false)
