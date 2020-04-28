# Translating
# https://proplot.readthedocs.io/en/latest/subplots.html#Automatic-figure-sizing
# to Julia

# Import proplot using PyCall
using PyCall
proplot = pyimport("proplot")

# Changing the reference subplot in the presence of unequal width/height ratios
suptitle = "Effect of reference subplot on figure size"
for ref in (1, 2)
    f, axs = proplot.subplots(
        ref=ref, nrows=3, ncols=3, wratios=(3, 2, 2),
        axwidth=1.1,
    )
    axs[ref].format(
        suptitle=suptitle,
        title="reference axes", titleweight="bold",
        titleloc="uc", titlecolor="red9"
    )
    f.savefig("figs/Automatic-figure-sizing-3a-$ref.svg", transparent=false)
end

# Changing the reference subplot in a complex grid
for (i,ref) in enumerate((3, 2))
    f, axs = proplot.subplots(
        [[1, 1, 2], [3, 4, 4]],
        hratios=(1, 1.5), wratios=(3, 2, 2),
        ref=ref, axwidth=1.1, span=false
    )
    axs[ref].format(
        suptitle=suptitle,
        title="reference axes", titleweight="bold",
        titleloc="uc", titlecolor="red9"
    )
    f.savefig("figs/Automatic-figure-sizing-3b-$i.svg", transparent=false)
end

