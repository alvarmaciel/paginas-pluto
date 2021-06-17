### A Pluto.jl notebook ###
# v0.14.7

using Markdown
using InteractiveUtils

# ╔═╡ ccdc3522-c45c-11eb-152a-93999f4d6367
begin
    import Pkg
    # activate a clean environment
    Pkg.activate(mktempdir())

    Pkg.add([
        Pkg.PackageSpec(name="HTTP"),
        Pkg.PackageSpec(name="JSON3"),
        # ... keep adding your packages
    ])

    using HTTP
    using JSON3
    # ... place all usings and imports into this one cell
end

# ╔═╡ 20fc8448-c45f-11eb-0788-c9b8e5855477
begin
	j = JSON3.read(HTTP.get("https://pokeapi.co/api/v2/type/3").body)
#	j_dict = JSON.parse(j::AbstractString; dicttype=Dict, inttype=Int64)
end

# ╔═╡ c1d141bc-2b24-402e-adad-988b98d5b5b4
j

# ╔═╡ 22dd6dc2-c45f-11eb-098c-eb59381196f6
all_type3_pokemon_names = [x["pokemon"]["name"] for x in j[:pokemon]]

# ╔═╡ 460d14b8-c460-11eb-1879-9ba2f5fe8bfc
begin
	for x in j[:pokemon]
		poke_name = x["pokemon"]["name"]
		print(poke_name)
		poke_url = x["url"]
	end
end

# ╔═╡ Cell order:
# ╟─ccdc3522-c45c-11eb-152a-93999f4d6367
# ╠═20fc8448-c45f-11eb-0788-c9b8e5855477
# ╠═c1d141bc-2b24-402e-adad-988b98d5b5b4
# ╠═22dd6dc2-c45f-11eb-098c-eb59381196f6
# ╠═460d14b8-c460-11eb-1879-9ba2f5fe8bfc
