module AbsynTests

using Test

@testset "Compiling Absyn via wildcard" begin
  using Absyn
  @show(PROGRAM)
end

@testset "Test that we have Absyn.Program"
  import Absyn
  @show(Program)
end

end
