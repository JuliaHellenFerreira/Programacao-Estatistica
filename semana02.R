# Semana 2 - Controle de Fluxo

#Exercício 2.1

print("Triângulos")
a <- 2
a
b <- 3
b
c <- 4
c

## Verificando
if(a==b==c){
  print("É um triângulo equilátero!")
}else if(a!=b!=c){
  print("É um triângulo escaleno!")
}else{
  print("É um triâgulo isósceles!")
}

#Exercício 2.2
# Letra a

vet <- NULL
i <- 1
while (length(vet)<=100){
  vet[i] <- i*3
  i=i+1
}
vet

# Letra b


