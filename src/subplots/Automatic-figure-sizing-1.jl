# Translating
# https://proplot.readthedocs.io/en/latest/subplots.html#Automatic-figure-sizing
# to Julia

# Import proplot using PyCall
using PyCall
proplot = pyimport("proplot")

# Cartopy projections
f, axs = proplot.subplots(ncols=2, nrows=3, proj="robin")
map(x -> x.format( 
    land=true, landcolor="k",
    suptitle="Auto figure sizing with grid of cartopy projections"
   ), axs)
f.savefig("figs/Automatic-figure-sizing-1a.svg", transparent=false)

# Images
f, axs = proplot.subplots(ncols=2, nrows=3)
colors = cumsum(rand(10, 20, 3), dims=3)
colors /= maximum(colors)
[ax.imshow(colors) for ax in axs]
[ax.format(
    suptitle="Auto figure sizing with grid of images"
) for ax in axs]
f.savefig("figs/Automatic-figure-sizing-1b.svg", transparent=false)
