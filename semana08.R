Semana 08 - Algoritmo de Ordena√ß√£o

# Exerc√≠cio 8.1

v <- c(7,5,3,0,4,1,9)

## Letra a

ordbolha <- function(v){
  if( !is.vector(v))
    stop("O argumento de entrada precisa ser um vetor.")
  n <- length(v)
  for(j in 1: (n - 1)){         # Condi√ß√£o de parada foi dada
    for(i in 1: (n - j)){      # Condi√ß√£o de parada foi dada 
      if(v[i] > v[i + 1]){
        aux <- v[i]           # Trocando eles de posi√ß√£o
        v[i] <- v[i + 1]
        v[i + 1] <- aux
      }
    }
  }
  return(v)
}

# Letra b

ordbolharec <- function(v){
  if(!is.vector(v))
    stop("A entrada deve ser um vetor")
  n <- length(v)
  if(n == 1)
    return(v)
  for(i in 1:(n - 1)){
    if(v[i] > v[i + 1]){
      aux <- v[i]
      v[i] <- v[i + 1]
      v[i + 1] <- aux
    }
  }
  w <- v[1:(n-1)]
  wo <- ordbolharec(w)
  vo <- c(wo,v[n])
  return(vo) 
}

## Letra c

ordbolha1 <- function(v){
  if(!is.vector(v))
    stop("N„o È um vetor")
  n <- length(v)
  for(j in 1:(n - 1)){
    troca <- F
  for(i in 1:(n - j)){
    if(v[i] > v[i + 1]){
    aux <- v[i]
    v[i] <- v[i + 1]
    v[i + 1] <- aux
    troca <- T
    }
  }
    if(troca == F)
      break
  }
  return(v)
}

# Letra d

ordbolharec1 <- function(v){
  if(!is.vector(v))
    return(v)
  n <- length(v)
  if(n == 1)
    return(v)
  troca <- F
  for(i in 1:(n - 1)){
    if(v[i] > v[i + 1]){
    aux <- v[i]
    v[i] <- v[i + 1]
    v[i + 1] <- aux
    troca <- T
    }
  }
  if(troca == F)
    return(v)
  w <- v[1:(n - 1)]
  wo <- ordbolharec1(w)
  vo <- c(wo,v[n])
  return(vo)
}

# ExercÌcio 8.2

# Letra a

ordbolhacont <- function(v){
  if( !is.vector(v))
    stop("O argumento de entrada precisa ser um vetor.")
  n <- length(v)
  a <- 0                                # ComeÁando o contador
  for(j in 1: (n - 1)){         
    for(i in 1: (n - j)){  
      a <- a + 1                      # Incrementando o contador
      if(v[i] > v[i + 1]){
        aux <- v[i]                        
        v[i] <- v[i + 1]
        v[i + 1] <- aux
      }
    }
  }
  return(a)                # Incluindo o contador
}

# Letra b ###### Erro

ordbolhareccont <- function(v){
  if(!is.vector(v))
    stop("A entrada deve ser um vetor")
  n <- length(v)
  if(n == 1)
    return(0)
  a <- 0                             # Iniciando o contador
  for(i in 1:(n - 1)){
    if(v[i] > v[i + 1]){
      a <- a + 1                     # Incrementando o contador
      aux <- v[i]
      v[i] <- v[i + 1]
      v[i + 1] <- aux
    }
  }
  w <- v[1:(n-1)]
  aux <- ordbolhareccont(w)         # Chamando a forma recursiva
  wo <- aux[[1]]                   #  Pegando o primeiro elemento de aux
  a <- a + aux[[2]]               # acrecentando valores a 
  return(a) 
}

## Letra c

ordbolha1cont <- function(v){
  if(!is.vector(v))
    stop("N„o È um vetor")
  n <- length(v)
  a <- 0
  for(j in 1:(n - 1)){
    troca <- F
    for(i in 1:(n - j)){
      a <- a + 1
      if(v[i] > v[i + 1]){
        aux <- v[i]
        v[i] <- v[i + 1]
        v[i + 1] <- aux
        troca <- T
      }
    }
    if(troca == F)
      break
  }
  return(a)
}

## Letra d ###### Erro

ordbolharec1cont <- function(v){
  if(!is.vector(v))
    stop("Erro")
  n <- length(v)
  if(n == 1)
    return(a)
  troca <- F
  a <- 0
  for(i in 1:(n - 1)){
    a <- a + 1
    if(v[i] > v[i + 1]){
      aux <- v[i]
      v[i] <- v[i + 1]
      v[i + 1] <- aux
      troca <- T
    }
  }
  if(troca == F)
    return(a)
  w <- v[1:(n - 1)]
  aux <- ordbolharec1cont(w)
  wo <- aux[[1]]
  a <- a + aux[[2]]
  return(a)
}


# ExercÌcio 8.3

# Letra a

ordbolhacontv <- function(v){
  if( !is.vector(v))
    stop("O argumento de entrada precisa ser um vetor.")
  n <- length(v)
  a <- 0                                # ComeÁando o contador
  for(j in 1: (n - 1)){         
    for(i in 1: (n - j)){  
      a <- a + 1                      # Incrementando o contador
      if(v[i] > v[i + 1]){
        aux <- v[i]                        
        v[i] <- v[i + 1]
        v[i + 1] <- aux
      }
    }
  }
  return(list(v,a))                 # Incluindo o contador
}

# Letra b

ordbolhareccontv <- function(v){
  if(!is.vector(v))
    stop("A entrada deve ser um vetor")
  n <- length(v)
  if(n == 1)
    return(list(v,0))
  a <- 0                             # Iniciando o contador
  for(i in 1:(n - 1)){
    if(v[i] > v[i + 1]){
      a <- a + 1                     # Incrementando o contador
      aux <- v[i]
      v[i] <- v[i + 1]
      v[i + 1] <- aux
    }
  }
  w <- v[1:(n-1)]
  aux <- ordbolhareccontv(w)         # Chamando a forma recursiva
  wo <- aux[[1]]                   #  Pegando o primeiro elemento de aux
  a <- a + aux[[2]]               # acrecentando valores a 
  vo <- list(c(wo,v[n]),a)
  return(vo) 
}

## Letra c

ordbolha1contv <- function(v){
  if(!is.vector(v))
    stop("N„o È um vetor")
  n <- length(v)
  a <- 0
  for(j in 1:(n - 1)){
    troca <- F
    for(i in 1:(n - j)){
      a <- a + 1
      if(v[i] > v[i + 1]){
        aux <- v[i]
        v[i] <- v[i + 1]
        v[i + 1] <- aux
        troca <- T
      }
    }
    if(troca == F)
      break
  }
  return(list(v,a))
}

## Letra d

ordbolharec1contv <- function(v){
  if(!is.vector(v))
    return(v)
  n <- length(v)
  if(n == 1)
    return(list(v,a))
  troca <- F
  a <- 0
  for(i in 1:(n - 1)){
    a <- a + 1
    if(v[i] > v[i + 1]){
      aux <- v[i]
      v[i] <- v[i + 1]
      v[i + 1] <- aux
      troca <- T
    }
  }
  if(troca == F)
    return(list(v,a))
  w <- v[1:(n - 1)]
  aux <- ordbolharec1contv(w)
  wo <- aux[[1]]
  a <- a + aux[[2]]
  vo <- c(wo,v[n])
  return(list(vo,a))
}

# ExercÌcio 8.4

## Letra a

v1 <- c(10,9,8,7,6,5,4,3,2,1) 
ordbolhareccontv(v1)

## Letra b

v2 <- c(1,3,5,5,4,0,-1,2,6,-2) 
ordbolhareccontv(v2)

## Letra c

v3 <- c(2,0,4,6,8,10,12,14,16,18,20) 
ordbolhareccontv(v3)

## Letra d

v4 <- c("fabio","ana","pedro","bruno","bruna","marco")
ordbolhareccontv(v4)

# ExercÌcio 8.5

novafuncao <- function(v){
  if( !is.vector(v))
    stop("O argumento de entrada precisa ser um vetor.")
  n <- length(v)
  for(j in 1: (n - 1)){         
    for(i in 1: (n - j)){      
      if(v[i] > v[i + 1]){
        x11()
        plot(v)
        aux <- v[i]           
        v[i] <- v[i + 1]
        v[i + 1] <- aux
      }
    }
  }
  return(v)
}

v <- c(5,9,4,2,6,10,3,8,1,7)
w <- novafuncao(v)
plot(w)

# ExercÌcio 8.6

ordbolhad <- function(v){
  if( !is.vector(v))
    stop("O argumento de entrada precisa ser um vetor.")
  n <- length(v)
  for(j in 1: (n - 1)){         # Condi√ß√£o de parada foi dada
    for(i in 1: (n - j)){      # Condi√ß√£o de parada foi dada 
      if(v[i] < v[i + 1]){
        aux <- v[i]           # Trocando eles de posi√ß√£o
        v[i] <- v[i + 1]
        v[i + 1] <- aux
      }
    }
  }
  return(v)
}

# ExercÌcio 8.7 

