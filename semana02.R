
# Semana 2 - Controle de Fluxo

#Exercício 2.1

print("Triângulos")
a <- readline("Insira um número: ")
a
b <- readline("Insira um número: ")
b
c <- readline("Insira um número: ")
c

## Verificando
if (a==b && a==c){
  print("É equilátero!")
}else{
  if (a!=b && a!=c && b!=c){
    print("É escaleno!")
  }else{
    print("É isósceles")
  }
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


impares = NULL
i <- 1
repeat{
  if (3*i >=100){
    break
  }
  impares[i] <- 3*i
  i=i+1
}

impares
