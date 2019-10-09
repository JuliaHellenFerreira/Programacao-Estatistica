

#retorna uma lista de arrays
fatoracao = function(v){
  
  n = length(v)
  
  if(n == 1)
    return(list(v))
  
  if(n == 2)
    return(list(v,c(v[2],v[1])))
  
  w  = v[2:n]
  lw = fatoracao(w)
  N = length(lw)
  
  lv = list()
  k = 1
  for(i in 1:N){
    wi = lw[[i]]
    lv[[k]] = c(v[1],wi)
    k = k + 1
    for(j in 1:(n-2)){
      lv[[k]] = c(wi[1:j],v[1],wi[(j+1):(n-1)])
      k = k + 1
    }
    lv[[k]] = c(wi,v[1])
    k = k + 1
  }
  return(lv)
}


v = c(1,2,3,4,5)
fatoracao(v)
