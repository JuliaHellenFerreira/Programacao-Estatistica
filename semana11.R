# Semana 11 - Aproximação de raízes de Funções Reais

# Exercício 11.1

## Letra a

curve(f(x),xlim=c(0.4,0.9))
abline(h=0)

f <- function(x){
  return(exp(x) - 1/x)
}

metodobissecao <- function(a,b,e,f){
  if(a == 0|| b == 0)
    stop("Erro!")
  if(f(a)*f(b) > 0)
    stop("Erro!")
  repeat{
    m <- (a + b) / 2
    if(abs(b - a) < 2 * e)
      return(m)
    if(f(m)*f(a) < 0)
      b <- m
    else 
      a <- m
  }
}

x0 <-  metodobissecao(0.5,1,0.00001,f)
points(x0,f(x0))

## Letra d

metodobissecao2 <- function(a,b,f,e){
  if(f(a)*f(b) > 0)
    stop("Erro!")
  m <- (a + b) / 2
  if(abs(b - a) < 2 * e)
    return(m)
  if(f(a)*f(m) < 0)
    return(metodobissecao2(a,m,f,e))
  return(metodobissecao2(m,b,f,e))
}

x0 <-  metodobissecao2(0.5,1,f,0.001)
points(x0,f(x0))

## Letra e

metodobissecao2.1 <- function(a,b,f,e,ma = NULL){
  if(a == 0 || b == 0)
    stop("Erro!")
  if(f(a)*f(b) > 0)
    stop("Erro!")
  m <- (a + b) / 2
  ma <- c(ma,m)
  if(abs(b - a) < 2 * e)
    return(ma)
  if(f(a)*f(m) < 0)
    return(metodobissecao2.1(a,m,f,e,ma))
  return(metodobissecao2.1(m,b,f,e,ma))
}

## Letra f

plot(0,xlab="x",ylab="f(x)",xlim=c(0,1),ylim=c(-1,1),type="n")
grid()
segments(x0=-1,y0=0,x1=2,y1=0)
segments(x0=0,y0=-2,x1=0,y1=2)
curve(exp(x)-1/x,col="blue",add=T)
for(i in 1:length(saida)){
  points(saida[i],0,col="red",pch=18,cex.lab=1)
  text(saida[i],-0.2,i,col="red")
}

# Exercício 11.2

## Letra a

f1 <- function(x){
  return(x^2 - 3)
}

metodobissecao2(1,2,f1,0.0001)
# Exercício 11.3

f2 <- function(x){
  return(exp(x) - 2 + x^2)
}

metodobissecao2(0,2,f2,0.001)

f2(0)*f2(2)
