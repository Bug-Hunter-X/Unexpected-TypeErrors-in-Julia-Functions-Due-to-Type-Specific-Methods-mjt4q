```julia
# Solution using parametric types
function myfunction3(x::T) where T <: Number
  if x > zero(T)
    return x^2
  else
    return -x^2
  end
 end

println(myfunction3(2))
println(myfunction3(2.0))
println(myfunction3(-2))
println(myfunction3(-2.0))

# Solution using multiple methods
function myfunction4(x::Int64)
  if x > 0
    return x^2
  else
    return -x^2 
  end
 end

function myfunction4(x::Float64)
  if x > 0
    return x^2
  else
    return -x^2 
  end
 end

println(myfunction4(2))
println(myfunction4(2.0))
println(myfunction4(-2))
println(myfunction4(-2.0))
```