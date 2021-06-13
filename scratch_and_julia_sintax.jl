### A Pluto.jl notebook ###
# v0.14.7

using Markdown
using InteractiveUtils

# ╔═╡ ab5e05cd-840c-4133-8808-b883c4f3a69e
begin
    import Pkg
    Pkg.activate(mktempdir())
    Pkg.add([
        Pkg.PackageSpec(name="PlutoUI", version="0.7"),
    ])
    using PlutoUI
end

# ╔═╡ 7987cc38-f28d-4ee4-8a1c-738ecc5f81da
md"""
!!! hint "Si querés interactuar con esta página"

Para usar la notebook hacé click en el botón arriba a la derecha

![](https://alvarmaciel.github.io/paginas-pluto/assets/img/edit.png)

y luego en el botón Binder

![](https://alvarmaciel.github.io/paginas-pluto/assets/img/binder.png)

>Toma un rato en cargar todo, pero con estos dos pasos se peude uasr la notebook

"""

# ╔═╡ 74499a68-c58c-11eb-278e-478d05fe686e
md"""
# Scratch and Julia syntax 

**One aspect of text-based languages that many learners struggle with is understanding the specific syntax (the rules of the language) required. Mistakes in a program are often due to not following these rules, and these mistakes are called syntax errors. Therefore, it is helpful to show the parallels and differences between a language that a learner has already mastered and the one they are trying to learn.**

In the next two steps I’ll show you a few Scratch blocks and their equivalent code in Python. The list is far from exhaustive, and is intended as a reference guide rather than an exercise to be worked through.

## Variable assignment

- In Scratch, a variable needs to be created before it can be assigned a value, whereas in Python, a variable is created when a value is assigned to it."""


# ╔═╡ 71935899-12a3-4ad4-9084-b8b8f7a3c720
md"""
![](https://rpf-futurelearn.s3-eu-west-1.amazonaws.com/block-to-text2/Screenshots/fl-b2t-w1-step06-createvar.png)"""

# ╔═╡ 0af4e606-09c5-4a6c-b4be-9c202058e192
md"""
![](https://rpf-futurelearn.s3-eu-west-1.amazonaws.com/block-to-text2/Screenshots/fl-b2t-w1-step06-variableassignment.png)
"""

# ╔═╡ 190473c5-abf5-488c-a81c-63b33d7c91e2
md"""
En Julia es necesario rodear los Strings o cualquier texto con comillas smples (') o dobles (")."""

# ╔═╡ c694ee4f-bcb0-4fd5-9fe7-c011523fd864
md"""
Corregí la variable `bienvenida` para que sea un string
"""

# ╔═╡ 0bbbe9f5-4870-4d11-886f-84aae2cc2cbd
bienvenida = 42

# ╔═╡ c34c3202-0d9e-4fca-bbdb-65217aa8bbef
if !(@isdefined bienvenida)
	md"""
!!! danger "Atencion"	
	no cambies el nombre de la variable es `bienvenida`
	"""
end

# ╔═╡ bc4a39ea-74b0-45d1-92d2-de89bb8b1c3d
md"""
!!! hint
    Acordate que los strings o cadenas de textos van entre comillas simples o dobles"
"""

# ╔═╡ 4b014a11-c362-42dd-8c3e-7e30cb564fa2
if (@isdefined bienvenida) && (bienvenida isa String)
	md"""
!!! correct "Muy Bien"
    Bien hecho
"""
	
else
	md"""
!!! warning "Atencion"
Todavía falta
"""
end

# ╔═╡ 0a6df781-6bef-4955-bb8d-75a99fd5f09c
md"""
## Increment a variable

- In Scratch, a variable’s value can be increased or decreased. To do this, you use a change block with a variable and the number to increment by, using a negative number to decrease the value.
- To increase or decrease the value of a variable in Julia, you must calculate the new value using the value stored in the variable, and assign this new value to the variable.
``` julia
puntos = puntos + 1
```

"""

# ╔═╡ 553e2e22-9b56-42ce-8f5a-4676c9faf024
md"""
## Simple output

- In Scratch, you make a sprite talk to provide output to the user of the program.
- Julia uses print statements to output text, numbers, or symbols.
- Again in Julia, you need to use single or double quotes if you are printing strings.
![](https://rpf-futurelearn.s3-eu-west-1.amazonaws.com/block-to-text2/Screenshots/fl-b2t-w1-step06-simpleoutput.png)
``` julia
print("Tu puntaje es asombroso!!!")
print(puntos)
```

"""

# ╔═╡ 77c8a723-499e-478d-a519-49b7274ad179
md"""
## Conditional loops

- Scratch’s conditional loop repeats until a certain statement is True.
- Julia’s conditional loop repeats as long as a certain statement is True.
- Notice that the code that is inside the loop is indented. Indentation is normally four spaces or a single tab. This can be compared to the way the Scratch conditional loop block brackets the code within it.
![](https://rpf-futurelearn.s3-eu-west-1.amazonaws.com/block-to-text2/Screenshots/fl-b2t-w1-step06-conditionalloop.png)
``` julia
while puntos > 10
	print(playing)
end

```

"""

# ╔═╡ Cell order:
# ╟─ab5e05cd-840c-4133-8808-b883c4f3a69e
# ╠═7987cc38-f28d-4ee4-8a1c-738ecc5f81da
# ╟─74499a68-c58c-11eb-278e-478d05fe686e
# ╟─71935899-12a3-4ad4-9084-b8b8f7a3c720
# ╟─0af4e606-09c5-4a6c-b4be-9c202058e192
# ╟─190473c5-abf5-488c-a81c-63b33d7c91e2
# ╟─c694ee4f-bcb0-4fd5-9fe7-c011523fd864
# ╠═0bbbe9f5-4870-4d11-886f-84aae2cc2cbd
# ╟─c34c3202-0d9e-4fca-bbdb-65217aa8bbef
# ╟─bc4a39ea-74b0-45d1-92d2-de89bb8b1c3d
# ╟─4b014a11-c362-42dd-8c3e-7e30cb564fa2
# ╟─0a6df781-6bef-4955-bb8d-75a99fd5f09c
# ╟─553e2e22-9b56-42ce-8f5a-4676c9faf024
# ╟─77c8a723-499e-478d-a519-49b7274ad179
