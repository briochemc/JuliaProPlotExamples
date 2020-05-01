# Translating
# https://proplot.readthedocs.io/en/latest/subplots.html#Shared-and-spanning-labels
# to Julia

# Import proplot using PyCall
using PyCall
proplot = pyimport("proplot")

N = 50
M = 40
colors = proplot.Colors("grays_r", M, left=0.1, right=0.8)
datas = []
for scale in (1, 3, 7, 0.2)
    data = scale * cumsum(rand(N, M) .- 0.5, dims=1)[N÷2+1:end, :]
    push!(datas, data)
end

# Same plot with different sharing and spanning settings
for share in (0, 1, 2, 3)
    f, axs = proplot.subplots(
        ncols=4, aspect=1, axwidth=1.2,
        sharey=share, spanx=share≥2
    )
    for (ax, data) in zip(axs, datas)
        ax.plot(data, cycle=colors)
        ax.format(
            suptitle="Axis-sharing level: $share, spanning labels $(share≥2 ? :on : :off)",
            grid=false, xlabel="spanning", ylabel="shared"
        )
    end
    f.savefig("figs/Shared-and-spanning-labels-1$(Char(97+share)).svg", transparent=false)
end
