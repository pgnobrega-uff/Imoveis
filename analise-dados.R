# Script referente a ativade 3 pratica 1, vinculado ao projeto imoveis

# Leitura do banco de dados
dados = read.csv("imoveis.csv", header=T, sep=";")
attach(dados)

#Verificando os dados
head(dados)

str(dados)

summary(dados)

nrow(dados)

#checando se existe NAN

dados |> na.omit() |> nrow()#sem valores NAN
