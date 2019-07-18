module AbsynTests
using Absyn
using Test

@testset "Compiling Absyn via wildcard" begin
  @show(PROGRAM)
end

@testset "Test that we have Absyn.Program"
  @show(Program)
end

end
