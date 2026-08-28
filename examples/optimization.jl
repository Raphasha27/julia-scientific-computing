using Optim

function rosenbrock(x)
    return (1 - x[1])^2 + 100 * (x[2] - x[1]^2)^2
end

function optimize_rosenbrock()
    initial_x = [-1.0, 1.0]
    result = optimize(rosenbrock, initial_x, BFGS())
    return result
end

function himmelblau(x)
    return (x[1]^2 + x[2] - 11)^2 + (x[1] + x[2]^2 - 7)^2
end

function optimize_himmelblau()
    initial_x = [0.0, 0.0]
    result = optimize(himmelblau, initial_x, BFGS())
    return result
end
