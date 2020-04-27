# Translating
# https://proplot.readthedocs.io/en/latest/basics.html#Changing-rc-settings
# to Julia

# Import proplot using PyCall
using PyCall
proplot = pyimport("proplot")

# Update global settings in several different ways
proplot.rc.cycle = "colorblind"
proplot.rc.color = "gray6"
proplot.rc.update(Dict("fontname" => "Noto Sans"))
proplot.rc["figure.facecolor"] = "gray3"
proplot.rc.axesfacecolor = "gray4"

# Apply settings to figure with context()
f, axs = proplot.subplots(ncols=2, aspect=1, width=6, span=false, sharey=2)
[ax.format(suptitlesize = 11, toplabelcolor="gray6", linewidth=1.5) for ax in axs]

# Plot lines
N, M = 100, 6
values = 1:M+1
for ax in axs
    data = cumsum(rand(N, M) .- 0.5, dims=1)
    ax.plot(data, linewidth=3, cycle="Grays")
end

# Apply settings to axes with format()
[ax.format(
    grid=false, xlabel="x label", ylabel="y label",
    collabels=["Column label 1", "Column label 2"],
    suptitle="Rc settings demo",
    suptitlecolor="gray7",
    abc=true, abcloc="l", abcstyle="A)",
    title="Title", titleloc="r", titlecolor="gray7"
) for ax in axs]
ay = axs[end].twinx()
ay.format(ycolor="red", linewidth=1.5, ylabel="secondary axis")
ay.plot(cumsum(rand(100) .- 0.2), color="r", lw=3)

# Reset persistent modifications from head of cell
proplot.rc.reset()
f.savefig("figs/Changing-rc-settings.svg")
