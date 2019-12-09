#Questao 1
#Letra a
x=c(1.1,1.2,1.3,1.4)
f=c(9.025013,11.02318,13.46374,16.44465)
df=NULL
df[1]=(f[2]-f[1])/0.1
df[2]=(f[3]-f[1])/0.2
df[3]=(f[4]-f[2])/0.2
df[4]=(f[4]-f[3])/0.1

#Letra b
x1=c(7.4,7.6,7.8,8)
f1=c(-68.31929,-71.69824,-75.15762,-78.69741)
df1=NULL
df1[1]=(f1[2]-f1[1])/0.2
df1[2]=(f1[3]-f1[1])/0.4
df1[3]=(f1[4]-f1[2])/0.4
df1[4]=(f1[4]-f1[3])/0.2

#Questao 2
#Letra a
funcao=function(x0){
  return(2*exp(2*x0))}  
funcao(x)
df

#Letra b
funcao1=function(x){
  return((1/(x+2))-2*(x+1))}
funcao1(x1)
df1

#Questao 3
#Letra a
#Domínio = Conjunto dos reais - {-1,1}.
funcao2=function(x){
  return(1/(x^(2)+1))}

#Letra b
#ver se precisa desse primeiro repeat, pq a funcao nao bate no eixo x.
funcao3=function(x0,incre){
  h=1
  x1=x0+h
  x2=x0-h
  d=(funcao2(x1)-funcao2(x2))/(2*h)
  repeat{
    h=h/2
    x1=x0+h
    x2=x0-h
    d1=(funcao2(x1)-funcao2(x2))/(2*h)
    if(abs(d-d1)<incre){
      return(d1)
    }
    d=d1
    }
}

#Letra c
funcao3(0,0.0001)
funcao3(-1/5,0.0001)
funcao3(1/3,0.0001)

#Letra d
funcao3rec=function(x0,incre,h=1){
  x1=x0+h
  x2=x0-h
  dv=(funcao2(x1)-funcao2(x2))/(2*h)
  h=h/2
  x1=x0+h
  x2=x0-h
  dn=(funcao2(x1)-funcao2(x2))/(2*h)
  if(abs(dn-dv)<incre){
    return(dn)
  }
  return(funcao3rec(x0,incre,h))
}

#Letra e
funcao3rec(0,0.0001)
funcao3rec(-1/5,0.0001)
funcao3rec(1/3,0.0001)

#Questao 4
funcao4=function(x){
  if((x<=1)&&(x>=(-2))) return(NULL)
  return(log(x^(2)+x-2))}
funcao4(3)
#Letra a
#quando x = -2 e x=1, tem-se f(x) = 0
#a funcao ln esta definida apenas para valores positivos
#entao x>1 ou x<-2

#Letra b
funcao434=function(x0,incre,h){
  x1=x0+h
  x2=x0-h
  if((x<=1) && (x>=(-2))){
    repeat{
      h=h/2
      x1=x0+h
      x2=x0-h
    }
  }
  d=(funcao4(x1)-funcao4(x2))/(2*h)
  repeat{
    h=h/2
    x1=x0+h
    x2=x0-h
    d1=(funcao4(x1)-funcao4(x2))/(2*h)
    if(abs(d-d1)<incre){
      return(d1)
    }
    d=d1
  }
}

#Letra c
funcao434(3,0.001,1)
funcao434(-5/2,0.001,0.1)
funcao434(4/3,0.001,0.25)

#Letra d
funcao434rec=function(x0,incre,h){
  x1=x0+h
  x2=x0-h
  if((x<=1) && (x>=(-2))){
    repeat{
      h=h/2
      x1=x0+h
      x2=x0-h
    }
  }
  dv=(funcao4(x1)-funcao4(x2))/(2*h)
  h=h/2
  x1=x0+h
  x2=x0-h
  dn=(funcao4(x1)-funcao4(x2))/(2*h)
  if(abs(dn-dv)<incre){
    return(dn)
  }
  return(funcao434rec(x0,incre,h))
}

#Letra e
funcao434rec(3,0.001,1)
funcao434rec(-5/2,0.001,0.1)
funcao434rec(4/3,0.001,0.25)

#Questao 5
#Letra a
#Conjunto dos reais

#Letra b
funcao123=function(x){return(exp(-x/3)*(1+(x/(x^2 + 1)))-1)}

#Letra c
funcao123.1=function(x0,incre=0.001,h){
  x1=x0+h
  x2=x0-h
  d=(funcao123(x1)-funcao123(x2))/(2*h)
  repeat{
    h=h/2
    x1=x0+h
    x2=x0-h
    d1=(funcao123(x1)-funcao123(x2))/(2*h)
    if(abs(d-d1)<incre){
      return(d1)
    }
    d=d1
  }
}

#Letra d
#Fazer dps...
plot(funcao123,xlim = c(-3,5))
abline(h=0)
plot(funcao123.1,xlim = c())
