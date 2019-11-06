# Semana 10 - Aproximação de Funções

# Exercício 10.1 - Fazer no caderno

# Exercício 10.2

## Letra a

pol_exp <- function(x, n){
  if(class(x) != "numeric")
    stop("Erro")
  if(n < 0 || n %% 1 != 0)
    stop("Erro")
  fat <- 1
  som <- 1
  for(i  in 1:n){
    fat <- fat * i
    som <- som + (x^i) / fat
  }
  return(som)
}

pol_exp(2,100)

## Letra b

plot(exp,-4,4)
grid()
segments(x0=0,y0=0,x1=0,y1=150,lty=2)
curve(pol_exp(x,n=2),add=T,col="violet")
curve(pol_exp(x,n=3),add=T,col="red")
curve(pol_exp(x,n=4),add=T,col="blue")
curve(pol_exp(x,n=5),add=T,col="green")

# Exercício 10.3

## Letra a

AproxExp <- function(x, incremento){
  fat <- 1
  aprox <- 1
  for(i in 1:10){
    fat <- fat * i
    aprox <- aprox + x^i / fat
  }
  repeat{
    i <-  i + 1
    fat <- fat * i
    parcela <- x^i / fat
    if(abs(parcela) < incremento){
      return(aprox + parcela)
    }
      aprox = aprox + parcela
    }
}

## Letra b

AproxExp(1, 0.000000001)

AproxExp(-1, 0.00000001)

AproxExp(3, 0.00000001)

AproxExp(1^1/2, 0.0000000001)

AproxExp(7.3,0.00000001)

## Letra c

AproxExpi <- function(x, incremento){
  fat <- 1
  aprox <- 1
  for(i in 1:10){
    fat <- fat * i
    aprox <- aprox + x^i / fat
  }
  repeat{
    i <-  i + 1
    fat <- fat * i
    parcela <- x^i / fat
    if(abs(parcela) < incremento){
      return(list(aprox + parcela, i))
    }
    aprox = aprox + parcela
  }
}

AproxExpi(1, 0.000000001)

AproxExpi(-1, 0.00000001)

AproxExpi(3, 0.00000001)

AproxExpi(1^1/2, 0.0000000001)

AproxExpi(7.3,0.00000001)

## Letra d

AproxExpq <- function(x, incremento){
  x <- -x^2 / 2
  fat <- 1
  aprox <- 1
  for(i in 1:10){
    fat <- fat * i
    aprox <- aprox + x^i / fat
  }
  repeat{
    i <-  i + 1
    fat <- fat * i
    parcela <- x^i / fat
    if(abs(parcela) < incremento){
      return(aprox + parcela)
    }
    aprox = aprox + parcela
  }
}

# Exercício 10.4 - Fazer no caderno

# Exercício 10.5

## Letra a #### Está retornando um valor errado ####

pol_ln <- function(x,incremento){
  if(x < 0)
    stop("Erro!")
  if(x >= 2)
    return(-pol_ln(1/x, incremento))
  aprox <- 1
  for(i in 1:10){
    aprox <- aprox + ((x - 1)^i) / i
  }
  return(aprox)
}

## Letra b

plot(log,0,4)
grid()
segments(x0=1,y0=-4,x1=1,y1=10,lty=2)
curve(pol_ln(x,incremento = 2),add=T,col="violet")
curve(pol_ln(x,incremento = 3),add=T,col="red")
curve(pol_ln(x,incremento = 4),add=T,col="blue")
curve(pol_ln(x,incremento = 5),add=T,col="green")

# Exercício 10.6

## Letra a 

ln <- function(x,incremento){
  if(x <= 0)
    stop("Erro!")
  if(x >= 2)
    return(-ln(1/x, incremento))
  aprox <- 1
  for(i in 1:10){
    aprox <- aprox + ((x - 1)^i) / i
  }
  repeat{
    i <- i + 1
    parcela <- (((-1)^i+1) * (x - 1)^i) / i
    if(abs(parcela) < incremento)
      return(aprox + parcela)
  }
  aprox <- aprox + parcela
}

## Letra b

ln(0.1,0.000001)
ln(2,0.000001)
ln(10,0.000001)
ln(3.8,0.000001)

## Letra c

baseln <- function(x,b, incremento = 0.0001){
  lnx <- ln(x, incremento)
  lnb <- ln(b, incremento)
  return(lnx/lnb)
}

baseln(3,4)

# Exercício 10.7

sen <- function(x, incremento = 0.0001){
  if(x > pi)
    return(sen(x - 2 * pi, incremento))
  if(x < pi)
    return(sen(x + 2 * pi, incremento))
  aprox <- x
  for(i in 1:10){
    parcela <- ((((-1)^i) * (x^(2*i)+1)))/factorial(2*i + 1)
    aprox <- aprox + parcela
  }
  i <- 11
  repeat{
    parcela <- ((-1)^i * x^(2*i)+1)/factorial(2*i + 1)
    if(abs(parcela) < incremento)
      return(aprox)
    aprox <- aprox + parcela
    i <- i + 1
  }
}


## Letra b

sen(1)
sen(25)
sen(50)
sen (pi/3)

sin(2)
sin(25)
sin(50)
sin (pi/3)

## Letra c

cos <- function(x, incremento){
  x <- x  + pi/2
  if(abs(x) > pi )
    return(cos(x - 2 * pi, incremento))
  fat <- 1
  for(i in 1:10){
    fat <- fat * i
    aprox <- aprox + (x - x^i) / fat
    i <- i + 1
  }
  repeat{
    i <- i + 1
    fat <- 2*fat + 1
    parcela <- (-1)^i * x^2*i+1
    if(abs(parcela) < incremento)
      return(aprox + incremento)
  }
  aprox <- aprox + parcela
}

cos(5,0.00001)