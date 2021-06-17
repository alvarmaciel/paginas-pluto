### A Pluto.jl notebook ###
# v0.14.7

using Markdown
using InteractiveUtils

# ╔═╡ 2fe2f106-b028-4821-94e4-2ecc2b995e14
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

# ╔═╡ f40fe198-e3d9-4095-a3fa-a0dedf273572
j = JSON3.read(HTTP.get("https://pokeapi.co/api/v2/type/3").body)

# ╔═╡ 7b86d6e7-b359-4f25-8bc3-ff76731bdfbd
typeof(j)

# ╔═╡ 55a39434-074c-4ef6-a724-6d7cbe07283a


# ╔═╡ 99da4570-e5c0-460b-b7dd-4508797edb2b
all_type3_pokemon_names = [x["pokemon"]["name"] for x in j[:pokemon]]

# ╔═╡ fb7e576c-cb62-446b-b705-85ad10478204
j

# ╔═╡ efdb11d8-3102-4395-ac88-89fed22efdb1


# ╔═╡ Cell order:
# ╠═2fe2f106-b028-4821-94e4-2ecc2b995e14
# ╠═f40fe198-e3d9-4095-a3fa-a0dedf273572
# ╠═7b86d6e7-b359-4f25-8bc3-ff76731bdfbd
# ╠═55a39434-074c-4ef6-a724-6d7cbe07283a
# ╠═99da4570-e5c0-460b-b7dd-4508797edb2b
# ╠═fb7e576c-cb62-446b-b705-85ad10478204
# ╠═efdb11d8-3102-4395-ac88-89fed22efdb1
