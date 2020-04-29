# Translating
# https://proplot.readthedocs.io/en/latest/colorbars_legends.html#Axes-colorbars-and-legends
# to Julia

# Import proplot using PyCall
using PyCall
proplot = pyimport("proplot")

proplot.rc.abc=true
f, axs = proplot.subplots(ncols=2, share=0)

# Colorbars
ax = axs[1]
m = ax.heatmap(rand(10, 10), colorbar="t", cmap="dusk")
ax.colorbar(m, loc="r")
ax.colorbar(m, loc="ll", label="colorbar label")
ax.format(title="Axes colorbars", suptitle="Axes colorbars and legends demo")

# Legends
ax = axs[2]
ax.format(title="Axes legends", titlepad="0em")
hs = ax.plot(
    cumsum(rand(10, 5) .- 0.5, dims=1), linewidth=3,
    cycle="ggplot", legend="t",
    labels=["a","b","c","d","e"], legend_kw=Dict("ncols" => 5, "frame" => false)
)
ax.legend(hs, loc="r", ncols=1, frame=false)
ax.legend(hs, loc="ll", label="legend label")
[ax.format(xlabel="xlabel", ylabel="ylabel") for ax in axs]

f.savefig("figs/Axes-colorbars-and-legends-1.svg", transparent=false)
