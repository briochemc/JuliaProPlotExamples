# Translating
# https://proplot.readthedocs.io/en/latest/basics.html#Formatting-subplots
# to Julia

# Import proplot using PyCall
using PyCall
proplot = pyimport("proplot")

f, axs = proplot.subplots(ncols=2, nrows=2, share=0, tight=true, axwidth=1.7)
axs[1].plot(range(1, 10, length=80), cumsum(rand(80, 5) .- 0.5, dims=1))
[ax.format(
    suptitle="Format command demo",
    abc=true, abcloc="ul", abcstyle="a.",
    title="Main", ltitle="Left", rtitle="Right",  # different titles
    urtitle="Title A", lltitle="Title B", lrtitle="Title C",  # extra titles
    collabels=["Column label 1", "Column label 2"], rowlabels=["Row label 1", "Row label 2"],
    xlabel="x-axis", ylabel="y-axis",
    xlim=(1, 10), xticks=1, xscale="log",
    ylim=(-2, 2), yticks=proplot.arange(-2, 2), yticklabels=("a", "bb", "c", "dd", "e"),
    xtickdir="inout", xtickminor=false,
    ytickloc="both", yticklabelloc="both", ygridminor=true,
    linewidth=0.8, gridlinewidth=0.8, gridminorlinewidth=0.5,
) for ax in axs]
f.savefig("Formatting-subplots.svg", transparent=false)
