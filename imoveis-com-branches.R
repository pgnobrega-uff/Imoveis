# Script da aula 7 - 06/04 para praticar uso de branches no Git e GitHub(tarefa 2)
library(ggplot2)
# 1. Leitura do banco de dados
dados = read.csv("imoveis.csv", header=TRUE, sep = ";")
attach(dados)
# ver estrutura
str(dados)
head(dados)

# 2. Gráficos
dados |> ggplot(aes(x = metragem)) + geom_histogram(bins = 5, color = "gray", fill = "lightblue") + 
  theme_classic()

# 3. Medidas descritivas
mean(imposto_anual)
median(imposto_anual)
sd(imposto_anual)
