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

# ╔═╡ ad530bb1-78bb-40a3-93c6-adec42207417
PlutoUI.TableOfContents(aside=true, title="Contenidos")

# ╔═╡ 74499a68-c58c-11eb-278e-478d05fe686e
md"""
# Scratch y sintaxis de Julia

**Un aspecto de los lenguajes basados en texto con el muchos estudiantes kidian es la comprención de la sintaxis especícifica (las reglas del lenguaje) requerida. Muchas veces los errores en un programa se deben a que no se siguene estas reglas, y estos erres son denominados errores de sintaxis o _sintax errors_.
Por lo tanto, es útil mostrar los paralelismos y las diferencias entre un idioma que un alumno ya ha dominado y el que está tratando de aprender.**

En los siguientes pasos, les mostraré algunos bloques de Scratch y su código equivalente en Julia. La lista está lejos de ser exhaustiva y está pensada como una guía de referencia más que como un ejercicio sobre el que trabajar.

"""


# ╔═╡ ee6d8355-542e-4e08-9279-4c05132d7302
md"""## Asignación de variables

- En scratch una variable necesita ser creada antes de que se le pueda asignar un valor, mientras que en Julia, una variable es creada cuando se le asigna un valor.
"""

# ╔═╡ 71935899-12a3-4ad4-9084-b8b8f7a3c720
md"""
![](assets/img/crearVariables.png)"""

# ╔═╡ 0af4e606-09c5-4a6c-b4be-9c202058e192
md"""
![](assets/img/puntosBienvendia.png)
"""

# ╔═╡ 7987cc38-f28d-4ee4-8a1c-738ecc5f81da
md"""
!!! hint "Si querés interactuar con esta página"
	Para usar la notebook hacé click en el boton arriba a la derecha
	![](https://alvarmaciel.github.io/paginas-pluto/assets/img/edit.png)
	
	y luego en el botón Binder
	
	![](https://alvarmaciel.github.io/paginas-pluto/assets/img/binder.png)
	>Toma un rato en cargar todo, pero con estos dos pasos se peude uasr la notebook
"""

# ╔═╡ 190473c5-abf5-488c-a81c-63b33d7c91e2
md"""
En Julia es necesario rodear los Strings o cualquier texto con comillas smples (') o dobles (")."""

# ╔═╡ c694ee4f-bcb0-4fd5-9fe7-c011523fd864
md"""
Corregí la variable `bienvenida` para que sea un string y poné un mensaje de bienvenida
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
!!! hint "Ayuda"
    Los strings o cadenas de textos van entre comillas simples o dobles
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
Todavía falta. No cambiaste la variable
"""
end

# ╔═╡ 0a6df781-6bef-4955-bb8d-75a99fd5f09c
md"""
## Incrementar una variable

- En Scratch, se puede aumentar o reducir el valor de una variable. Para hacer esto, se una un bloque _cambiar_ con la variable y el número a incrementar, y usamos un número negativo para reducir el valor.
- Para aumentar o o reducir el valor de una variable en Julia, tienen que calcular el nuevo monto usando el valor guardado en la variable, y asignandole el nuevo vvalor a la variable.
``` julia
puntos = puntos + 1
```
"""

# ╔═╡ 553e2e22-9b56-42ce-8f5a-4676c9faf024
md"""
## Salida simple output

- En Scratch, hacemos que un objeto hable para generar una salida al usuario del programa.
- Julia usa las sentencias ```print``` y ```println``` para generar una salida de texto, números o simbolos.
- En Julia, nececitan usar comillas simples o dobles para imprimer texto.
- En las notebooks interactivas como esta (PlutoJl) la salida de las sentencias ```print``` y ```println``` se visualizan en el REPL. Para visaulizar una salida en PlutoJl con solo enunciar la variable, la celda mostrará su valor.

![](assets/img/puntajePuntos.png)

En julia se escribe:
``` julia
print("Tu puntaje es asombroso!!!")
print(puntos)
```
"""

# ╔═╡ fb03bd9c-ed6c-48a5-a3cd-08a4af5b405a
md"""
En Pluto simplemente enunciamos las variables, si son más de dos sentencias en un bloque. además podemos incluir texto en formato markdown como este que estás viendo.
```julia
begin

end
```
"""

# ╔═╡ 1e9e7329-bcf0-4b72-a4c6-d13276d9577f
begin
	puntos = 42
	md""" 
	En esta celda pueden ver el código. 
	- Todo lo que está entre ```md``` y las comillas es texto. 
	- Para incorporar el valor de la variable al texto se usa el símbolo ```$```
	
	$bienvenida
	Tu puntaje es $puntos"""
end

# ╔═╡ 77c8a723-499e-478d-a519-49b7274ad179
md"""
## Estrucutras repetitivas condicionales

- La estructura de repetición condicional en Scratch es repetir **hasta** que cieta condición es Verdadera.
- La repetición condicional en Julia, repite **mientras**  cierta condición sea Verdadera.
- Pueden observar que el código dentro de la repetición está identado, La identación no es necesaria en Julia pero se recomienda. Se usan 4 espacios o un tab. Esto puede compararse a la forma en la que la los bloques de repeteción de Scratch encapsulan el código dentro de él.
![](assets/img/repetirHasta.png)
``` julia
while puntos < 10
	print(playing)
end
```
"""

# ╔═╡ f8e19d35-cb0c-4188-bd0f-ec298a493c1b
md"""
# Creditos y Licencia
Estos textos/imagenes/videos fueron creados en base al material de Raspberry Pi Foundation y están bajo la licencia [Open Government Licence v3.0.](http://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/).

This text/image/video was created by the Raspberry Pi Foundation and is licensed under the [Open Government Licence v3.0.](http://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/).
"""

# ╔═╡ Cell order:
# ╟─ad530bb1-78bb-40a3-93c6-adec42207417
# ╟─ab5e05cd-840c-4133-8808-b883c4f3a69e
# ╟─74499a68-c58c-11eb-278e-478d05fe686e
# ╟─ee6d8355-542e-4e08-9279-4c05132d7302
# ╟─71935899-12a3-4ad4-9084-b8b8f7a3c720
# ╟─0af4e606-09c5-4a6c-b4be-9c202058e192
# ╟─7987cc38-f28d-4ee4-8a1c-738ecc5f81da
# ╟─190473c5-abf5-488c-a81c-63b33d7c91e2
# ╟─c694ee4f-bcb0-4fd5-9fe7-c011523fd864
# ╠═0bbbe9f5-4870-4d11-886f-84aae2cc2cbd
# ╟─c34c3202-0d9e-4fca-bbdb-65217aa8bbef
# ╟─bc4a39ea-74b0-45d1-92d2-de89bb8b1c3d
# ╟─4b014a11-c362-42dd-8c3e-7e30cb564fa2
# ╟─0a6df781-6bef-4955-bb8d-75a99fd5f09c
# ╟─553e2e22-9b56-42ce-8f5a-4676c9faf024
# ╟─fb03bd9c-ed6c-48a5-a3cd-08a4af5b405a
# ╠═1e9e7329-bcf0-4b72-a4c6-d13276d9577f
# ╠═77c8a723-499e-478d-a519-49b7274ad179
# ╟─f8e19d35-cb0c-4188-bd0f-ec298a493c1b
