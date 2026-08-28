module ScientificComputing

export solve_ode, optimize_function, train_model

include("differential_equations.jl")
include("optimization.jl")
include("ml_flux.jl")

end
