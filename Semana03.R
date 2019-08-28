# Exercício 3.1

# Letra a

menor <- function(a,b){
  if(a < b){
    print(paste(a, "é menor que b"))
    return(a)
  }else{
    print(paste(b,"é menor que a"))
    return(b)
  }
}

menor(-100,100)

# Letra b

menor1 <- function(a,b,c){
  if(a < b && a < c){
    print(paste(a, "é menor que b e c"))
    return(a)
  }else{
    if(b < a && b < c){
      print(paste(b,"é menor que a e c"))
      return(b)
    }else{
      print(paste(c, "é menor que b e c"))
    return(c)
    }
  }
}

menor1(7,100,3)


# Exercício 3.2

triangulo <- function(a,b,c){
  if(a == b && a == c){
    print("É um triangulo equilatero")
  }else
    if(a != b && c != b){
      print("É um triangulo escaleno")
    }else{
      print("É um triangulo isosceles")
    }
}
triangulo(2,3,3)

# Exercício 3.3

# Letra a

reais <- function(vet){
  pos <- NULL
  for(i in 1: length(vet)){
    if(vet[i] > 0){
     pos<- c(pos,vet[i])
 }   }
  return(length(pos))
}
reais(c(2,-3,4))

# Letra b

nreais <- function(vet1, a){
  menores <- NULL
  for(i in 1:length(vet1)){
    if(vet1[i] < a){
      menores <- c(menores,vet1[i])
    }
  }
  return(length(menores))
}
nreais(c(1,2,3,4,5,6,7),4)

# EWxercício 3.4

# Letra a

multiplo <- function(m,n){
  mul <- NULL
  for( i in 1: n){
    mul[i] <- m*i
  }
  return(mul)
}
multiplo(2,35)






