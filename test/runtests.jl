module MKAbsynTests
using Test

@testset "MKAbsyn tests" begin

  @testset "Compiling MKAbsyn via wildcard" begin
    using MKAbsyn
    @test_nowarn @show(PROGRAM)
  end

  @testset "Test that we have MKAbsyn.Program" begin
    import MKAbsyn
    @test_nowarn @show(MKAbsyn.PROGRAM)
  end

  @testset "Test Modelica style named imports" begin
    using MKAbsyn: PROGRAM
    @test_nowarn @show(PROGRAM)
  end

  @testset "Attempt to instantiate HelloWorld" begin
    using MKAbsyn
    using MetaModelica
    
    @test_nowarn begin
    try
      @show PARTS(list(), list(), list(PUBLIC(list(ELEMENTITEM(ELEMENT(false, NONE(), NOT_INNER_OUTER(), COMPONENTS(ATTR(false, false, NON_PARALLEL(), VAR(), BIDIR(), NONFIELD(), list()), TPATH(IDENT("Real"), NONE()), list(COMPONENTITEM(COMPONENT("x", list(), SOME(CLASSMOD(list(MODIFICATION(false, NON_EACH(), IDENT("start"), SOME(CLASSMOD(list(), EQMOD(INTEGER(1::ModelicaInteger), SOURCEINFO("/home/johti17/OpenModelica/OMCompiler/Examples/HelloWorld.mo", false, 2, 16, 2, 19)))), NONE(), SOURCEINFO("/home/johti17/OpenModelica/OMCompiler/Examples/HelloWorld.mo", false, 2, 10, 2, 19))), NOMOD()))), NONE(), NONE()))), SOURCEINFO("/home/johti17/OpenModelica/OMCompiler/Examples/HelloWorld.mo", false, 2, 3, 2, 20), NONE())), ELEMENTITEM(ELEMENT(false, NONE(), NOT_INNER_OUTER(), COMPONENTS(ATTR(false, false, NON_PARALLEL(), PARAM(), BIDIR(), NONFIELD(), list()), TPATH(IDENT("Real"), NONE()), list(COMPONENTITEM(COMPONENT("a", list(), SOME(CLASSMOD(list(), EQMOD(INTEGER(1::ModelicaInteger), SOURCEINFO("/home/johti1b/OpenModelica/OMCompiler/Examples/HelloWorld.mo", false, 3, 20, 3, 23))))), NONE(), NONE()))), SOURCEINFO("/home/johti17/OpenModelica/OMCompiler/Examples/HelloWorld.mo", false, 3, 3, 3, 23), NONE())))), EQUATIONS(list(EQUATIONITEM(EQ_EQUALS(CALL(CREF_IDENT("der", list()), FUNCTIONARGS(list(CREF(CREF_IDENT("x", list()))), list())), UNARY(UMINUS(), BINARY(CREF(CREF_IDENT("a", list())), MUL(), CREF(CREF_IDENT("x", list()))))), NONE(), SOURCEINFO("/home/johti17/OpenModelica/OMCompiler/Examples/HelloWorld.mo", false, 5, 3, 5, 19))))), list(), NONE())
      true
    catch
      false
    end
    end
  end
end

include("std.jl")

end #= End MKAbsyn tests =#
