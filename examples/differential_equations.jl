using DifferentialEquations

function lorenz!(du, u, p, t)
    sigma, rho, beta = p
    du[1] = sigma * (u[2] - u[1])
    du[2] = u[1] * (rho - u[3]) - u[2]
    du[3] = u[1] * u[2] - beta * u[3]
end

function solve_lorenz()
    u0 = [1.0, 0.0, 0.0]
    tspan = (0.0, 100.0)
    p = [10.0, 28.0, 8/3]
    
    prob = ODEProblem(lorenz!, u0, tspan, p)
    sol = solve(prob, Tsit5())
    
    return sol
end

function solve_predator_prey()
    function pp!(du, u, p, t)
        a, b, c, d = p
        du[1] = a * u[1] - b * u[1] * u[2]
        du[2] = -c * u[2] + d * u[1] * u[2]
    end
    
    u0 = [10.0, 5.0]
    tspan = (0.0, 50.0)
    p = [1.0, 0.1, 0.5, 0.02]
    
    prob = ODEProblem(pp!, u0, tspan, p)
    sol = solve(prob, Tsit5())
    
    return sol
end
