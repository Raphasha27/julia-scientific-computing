using Test
using ScientificComputing

@testset "ScientificComputing" begin
    @testset "Differential Equations" begin
        sol = solve_lorenz()
        @test length(sol.t) > 0
    end
    
    @testset "Optimization" begin
        result = optimize_rosenbrock()
        @test Optim.minimum(result) < 1e-6
    end
end
