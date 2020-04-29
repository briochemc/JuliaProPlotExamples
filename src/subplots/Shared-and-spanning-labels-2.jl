# Translating
# https://proplot.readthedocs.io/en/latest/subplots.html#Shared-and-spanning-labels
# to Julia

# Import proplot using PyCall
using PyCall
proplot = pyimport("proplot")

proplot.rc.reset()
proplot.rc.cycle = "Set3"
titles = ["With redundant labels", "Without redundant labels"]

# Same plot with and without default sharing settings
for mode in (0, 1)
    f, axs = proplot.subplots(
        nrows=4, ncols=4, share=3*mode,
        span=mode, axwidth=1
    )
    for ax in axs
        ax.plot(cumsum(rand(100, 20) .- 0.4, dims=1))
        ax.format(
            xlabel="xlabel", ylabel="ylabel", suptitle=titles[mode+1],
            abc=true, abcloc="ul",
            grid=false, xticks=25, yticks=5
        )
    end
    f.savefig("figs/Shared-and-spanning-labels-2$(Char(97+mode)).svg", transparent=false)
end
