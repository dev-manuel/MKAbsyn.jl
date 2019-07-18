module AbsynTests
using Absyn
using Test

@testset "Compiling Absyn via wildcard" begin
  @test_nowarn @show(PROGRAM)
end

@testset "Test that we have Absyn.Program"
@test_nowarn @show(Program)
end

end
