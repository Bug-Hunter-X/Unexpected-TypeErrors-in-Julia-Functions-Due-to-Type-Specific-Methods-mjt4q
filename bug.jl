```julia
function myfunction(x)
  if x > 0
    return x^2
  else
    return -x^2 
  end
 end

println(myfunction(2))  # Output: 4
println(myfunction(-2)) # Output: -4

function myfunction2(x::Float64)
  if x > 0
    return x^2
  else
    return -x^2 
  end
 end

println(myfunction2(2.0))  # Output: 4.0
println(myfunction2(-2.0)) # Output: -4.0

println(myfunction2(2)) #ERROR: MethodError: no method matching myfunction2(::Int64)
```