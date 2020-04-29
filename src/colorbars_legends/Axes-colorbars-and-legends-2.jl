# Translating
# https://proplot.readthedocs.io/en/latest/colorbars_legends.html#Axes-colorbars-and-legends
# to Julia

# Import proplot using PyCall
using PyCall
proplot = pyimport("proplot")

f, axs = proplot.subplots(nrows=2, share=0, axwidth="55mm", panelpad="1em")
[ax.format(suptitle="Stacked colorbars demo") for ax in axs]
N = 10
# Repeat for both axes
for (j, ax) in enumerate(axs)
    ax.format(
        xlabel="data", xlocator=range(0, 0.8, length=5),
        title="Subplot #$(j)"
    )
    for (i, (x0, y0, x1, y1, cmap, scale)) in enumerate((
         (0, 0.5, 1, 1, "grays", 0.5),
         (0, 0, 0.5, 0.5, "reds", 1),
         (0.5, 0, 1, 0.5, "blues", 2)
    ))
        j == 2 && i == 1 && continue
        data = rand(N, N) * scale
        x, y = range(x0, x1, length=N+1), range(y0, y1, length=N+1)
        m = ax.pcolormesh(
            x, y, data, cmap=cmap,
            levels=range(0, scale, length=11)
        )
        ax.colorbar(m, loc="l", label="dataset #$(i)")
    end
end

f.savefig("figs/Axes-colorbars-and-legends-2.svg", transparent=false)
