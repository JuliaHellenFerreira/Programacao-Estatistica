# Semana 10 - 

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


