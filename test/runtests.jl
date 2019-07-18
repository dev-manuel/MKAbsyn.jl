module AbsynTests
using Test

@testset "Absyn tests" begin

  @testset "Compiling Absyn via wildcard" begin
    using Absyn
    @test_nowarn @show(PROGRAM)
  end

  @testset "Test that we have Absyn.Program" begin
    import Absyn
    @test_nowarn @show(Absyn.PROGRAM)
  end

  @testset "Test Modelica style named imports" begin
    using Absyn: PROGRAM
    @test_nowarn @show(PROGRAM)
  end

end

end #= End Absyn tests =#
