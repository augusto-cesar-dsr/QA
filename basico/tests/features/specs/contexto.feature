#language: pt

Funcionalidade: Trabalhar com contexto.

Contexto:
Dado que eu tenho 10 laranjas na bolsa.

Cenario: Colocar laranja.
Quando eu coloco 2 laranjas na bolsa.
Então eu verifico se o total das laranjas é 12.

Cenario: Retirar laranjas.
Quando eu retiro 2 laranjasda bolsa.
Então eu verifico com quantas laranjas eu fiquei na bolsa