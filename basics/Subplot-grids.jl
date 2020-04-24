# Translating
# https://proplot.readthedocs.io/en/latest/basics.html#Subplot-grids
# to Julia

# Import proplot using PyCall
using PyCall
proplot = pyimport("proplot")
using PyPlot

f, axs = proplot.subplots(ncols=4, nrows=4, axwidth=1.2)
[ax.format(
    xlabel="xlabel", ylabel="ylabel", suptitle="Subplot grid demo",
    grid=false, xlim=(0, 50), ylim=(-4, 4)
) for ax in axs]

# Must reshape axs (and transpose it...)
axs = permutedims(reshape(axs, 4, 4), [2, 1])

# Various ways to select subplots in the subplot grid
[ax.format(color="gray7", facecolor="gray3", linewidth=1) for ax in axs[:, 1]]
[ax.format(color="red", facecolor="gray3", linewidth=1) for ax in axs[1, :]]
axs[1].format(color="black", facecolor="gray5", linewidth=1.4)
[ax.format(facecolor="gray1") for ax in axs[2:end, 2:end]]
for ax in axs[2:end, 2:end]
    ax.plot(cumsum(rand(50, 5) .- 0.5, dims=1), cycle="Grays", lw=2)
end
