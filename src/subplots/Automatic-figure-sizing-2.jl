# Translating
# https://proproplot.readthedocs.io/en/latest/subplots.html#Automatic-figure-sizing
# to Julia

# Import proplot using PyCall
using PyCall
proplot = pyimport("proplot")
#using PyPlot

# Loop through different axes widths
suptitle = "Effect of subplot properties on figure size"
for (i,axwidth) in enumerate(("4cm", "6cm"))
    f, axs = proplot.subplots(ncols=2, axwidth=axwidth)
    axs[1].format(
        suptitle=suptitle,
        title="axwidth = $axwidth", titleweight="bold",
        titleloc="uc", titlecolor="red9",
    )
    f.savefig("figs/Automatic-figure-sizing-2a-$i.svg", transparent=false)
end

# Loop through different aspect ratios
for (i, aspect) in enumerate((1, (3,2)))
    f, axs = proplot.subplots(ncols=2, nrows=2, axwidth=1.6, aspect=aspect)
    axs[1].format(
        suptitle=suptitle,
        title="aspect = $aspect", titleweight="bold",
        titleloc="uc", titlecolor="red9",
    )
    f.savefig("figs/Automatic-figure-sizing-2b-$i.svg", transparent=false)
end
