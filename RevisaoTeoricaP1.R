# Revisão - Teotica

# Exercício 1

# Letra a

## Código 1
c = 10
i = 0
while(i < 4){
  c = c + 1
  i = i + 1
}
## Código 2
c = 10
i = 0
while(i < 4){
  c = c + i
  i = i + 1
}
## Código 3
c = 10
i = 0
while(i < 4){
  i = i + 1
  c = c + i
  }

# Letra b

## Código 1
c <-  10
for(i in 0:3){
  c <- c + 1
  i <-  i + 1
}
## Código 2
c <- 10
for(i in 0:3){
  c <- c + i
  i <-  i + 1
}
## Código 3
c <- 10
for(i in 0:3){
  i <- i + 1
  c <- c + i
}

# Exercício 2

# Letra a

soma_elem = function(M){
  v <- NULL
  l = nrow(M)
  c = ncol(M)
  for(i in 1:l){
    soma <- 0
    for(j in 1:c){
      soma = soma + M[i,j]
    }
    v[i] <- soma
    }
  return(v)
  }
soma_elem(matrix(2, nrow = 3, ncol = 3))

## Soma das colunas:

soma_elem1 = function(M){
  v <- NULL
  l = nrow(M)
  c = ncol(M)
  soma <- 0
  for(j in 1:c){
    soma <- 0
    for(i in 1:l){
      soma = soma + M[i,j]
    }
    v <- soma
  }
  return(v)
}
M <- matrix(c(1,2,3,4), nrow = 2, ncol = 2, byrow = TRUE)
M
soma_elem1(M)

## Soma das diagonais:

soma_elem3 = function(M){
  v <- NULL
  l = nrow(M)
  c = ncol(M)
  soma <- 0
  if(l == c){
    for(i in 1:l){
      soma = soma + M[i,i]
    }
    v <- soma
    return(v)
  }else{
    print("Não é possível fazer, pois linhas e colunas são diferentes!")
  }
}
M <- matrix(c(1,2,3,4,5,6), nrow = 3, ncol = 2, byrow = TRUE)
M
soma_elem3(M)

# Letra b 

elem_pert(c(1,2,3),5)

elem_pert = function(v,a){
  soma=0
  n = length(v)
  for(i in 1:n){
    if(a==v[i]){ 
      soma=soma+1
    }
  }
  return(soma>=1)}


