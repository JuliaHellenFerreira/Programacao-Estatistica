# Revisão P2 - Prática

# Questão 1 - Produtório ((i/10) - 1), recursivo

produtorio <- function(n){
  if(n < 0 || n %% 1 != 0)
    stop("Erro")
  if(n == 0)
    return(-1)
  if(n == 1)
    return((1/10) - 1)
  return(((n/10) - 1) * produtorio(n - 1))
}

produtorio(6)

# Questão 2 - Sem recursividade

produtorio1 <- function(n){
  if(n < 0 || n %% 1 != 0)
    stop("Erro")
  prod <- 1
  conta <- 1
  for(i in 1 : n){
    conta <- ((i / 10 ) - 1)
    prod <- prod * conta
  }
  return(prod)
}

produtorio1(9)

# Questão 3 - xn <- ((xn - 1 + xn - 2) / 2) + 1

serie <- function(n){
  if(n < 0 || n %% 1 != 0)
    stop("Erro")
  if(n == 0)
    return(-0.5)
  return(((((n - 1)+(n-2))/2) + 1) + serie(n - 1))
}

serie(2)

# Questão 4

ordbolha <- function(v){
  if(!is.vector(v))
    stop("Erro")
  n <- length(v)
  if(n == 1)
    return(v[1])
  for(i in 1:(n - 1)){
    if(v[i] > v[i + 1]){
      aux <- v[i]
      v[i] <- v[i + 1]
      v[i + 1] <- aux
    }
  }
  w <- v[1:(n - 1)]
  wo <- ordbolha(w)
  vo <- c(wo,v[n])
  return(vo)
}

ordbolha(c(3,2,1,6,4,9))
