using univaropt, Test


@testset "goldensection" begin
    @test univaropt.golden_section(x -> x^2, -20, 20) == 0.0
    @test univaropt.golden_section(x -> x^2+2, -20, 20) == 0.0
end