# Julia Type-Specific Function Error

This example demonstrates a common issue in Julia where type-specific function definitions can lead to unexpected `MethodError` exceptions if the input type does not exactly match the declared type in the function signature.  The `bug.jl` file contains code showcasing the problem, and `bugSolution.jl` provides a solution.

The core problem is that while Julia is dynamically typed, specifying a type in a function signature (e.g., `x::Float64`) creates a type-specific method.  If you call the function with a type that doesn't match, the function won't work and Julia throws a MethodError.  This is different from languages where type checking is done only at runtime.

## How to Solve this

The solution is to use parametric types or create multiple methods for different types.