# Script referente a ativade 3 pratica 1, vinculado ao projeto imoveis
library(ggplot2)
# Leitura do banco de dados
dados = read.csv("imoveis.csv", header=T, sep=";")
attach(dados)

#Verificando os dados
head(dados)

str(dados)



nrow(dados)

#checando se existe NAN

dados |> na.omit() |> nrow()#sem valores NAN

#Analise descritiva
summary(dados)
sd(preco)
sd(metragem)
sd(idade)
sd(itens_embutidos)
sd(imposto_anual)

dados |> ggplot(aes(x = preco)) + geom_histogram(bins = 10, fill = "#69b3a2", color = "white") +
  labs(title = "Histograma dos precos", x = "Preço", y = "Freq.") + theme_minimal()

dados |> ggplot(aes(x = metragem, y = preco)) + geom_point(color = "red") +
  labs(title = "Preço x Metragem", x = "Preço", y = "Megtragem") + theme_minimal()
