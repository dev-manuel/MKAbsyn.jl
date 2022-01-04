#= Some routines to pretty print the Absyn representation =#

function string(x::ForIterator)
  "@Record ITERATOR begin
    $(name)
    $(guardExp)
    $(range)
  end"
end

function string(x::PROGRAM)
 "@Record PROGRAM begin
    $(classes)
    $(within_)
  end"
end

function string(x::List)
  res = "{\n"
  for elem in x
    res = string(elem) * res * "\n"
  end
  res *= "\n}"
end


function string(x::WITHIN)
  "@Record WITHIN begin
    $(path)
  end"
end

function string(x::TOP)
  "@Record TOP"
end

function string(x::CLASS)
  "@Record CLASS begin
    $(x.name)
    $(x.partialPrefix)
    $(x.finalPrefix)
    $(x.encapsulatedPrefix)
    $(x.restriction)
    $(x.body)
    $(x.info)
    $(x.isReadOnly)
  end"
end


function string(x::PARTS)
 "@Record PARTS begin
    $(x.typeVars)
    $(x.classAttrs)
    $(x.classParts)
    $(x.ann)
    $(x.comment)
  end"
end

function string(x::DERIVED)
  "@Record DERIVED begin
    $(x.typeSpec)
    $(x.attributes)
    $(x.arguments)
    $(x.comment)
  end"
end

function string(x::ENUMERATION)
  "@Record ENUMERATION begin
    $(x.enumLiterals)
    $(x.comment)
  end"
end

function string(x::OVERLOAD)
  "@Record ENUMERATION begin
    $(x.functionNames)
    $(x.comment)
  end"
end

function string(x::CLASS_EXTENDS)
  "@Record CLASS_EXTENDS begin
    $(x.baseClassName)
    $(x.modifications)
    $(x.comment)
    $(x.parts)
    $(x.ann)
  end"
end

function string(x::PDER)
  "@Record PDER begin
    $(x.functionName)
    $(x.vars)
    $(x.comment)
  end"
end

function string(x::TPATH)
  "@Record TPATH begin
    $(x.path)
    $(x.arrayDim)
  end"
end

function string(x::TCOMPLEX)
  "@Record TCOMPLEX begin
    $(x.path)
    $(x.typeSpecs)
    4(x.arrayDim)
  end"
end

function string(x::ENUMLITERALS)
  "@Record ENUMLITERALS begin
    $(x.enumLiterals)
  end"
end

function string(x::ENUM_COLON)
  "@Record ENUM_COLON"
end

function string(x::ENUMLITERAL)
  "@Record ENUMLITERAL begin
    $(x.literal)
    $(x.comment)
  end"
end

function string(x::PUBLIC)
 "@Record PUBLIC begin
    $(x.contents)
  end"
end

function string(x::PROTECTED)
 "@Record PROTECTED begin
    $(x.contents)
  end"
end

function string(x::CONSTRAINTS)
 "@Record CONSTRAINTS begin
    $(x.contents)
  end"
end

function string(x::EQUATIONS)
 "@Record EQUATIONS begin
    $(x.contents)
  end"
end

function string(x::INITIALEQUATIONS)
 "@Record INITIALEQUATIONS begin
    $(x.contents)
  end"
end

function string(x::INITIALALGORITHMS)
 "@Record INITIALALGORITHMS begin
    $(x.contents)
  end"
end

function string(x::EXTERNAL)
 "@Record EXTERNAL begin
    $(x.contents)
  end"
end

function string(x::ELEMENTITEM)
"@Record ELEMENTITEM begin
    $(x.element)
  end"
end

function string(x::LEXER_COMMENT)
  "@Record LEXER_COMMENT begin
    $(comment)
  end"
end

function string(x::ELEMENT)
  "@Record ELEMENT begin
    $(finalPrefix)
    $(x.redeclareKeywords)
    $(x.innerOuter)
    $(x.specification)
    $(x.info)
    $(x.constrainClass)
  end"
end

function string(x::DEFINEUNIT)
  "@Record DEFINEUNIT begin
    $(x.name)
    $(x.args)
    $(x.info)
  end"
end

function string(x::TEXT) #= Not interesting to print=#
  "@Record TEXT"
end

function string(x::CONSTRAINTCLASS)
  "@Record CONSTRAINCLASS begin
    $(x.elementSpec)
    $(x.comment)
  end"
end

function string(x::CLASSDEF)
  "@Record CLASSDEF begin
    $(replaceable_)
    $(x.class_)
  end"
end

function string(x::EXTENDS)
  "@Record EXTENDS begin
    $(x.path_)
    $(x.elementArg)
    $(x.annotationOpt)
  end"
end

function string(x::IMPORT)
  "@Record IMPORT begin
    $(x.import_)
    $(x.comment)
    $(x.info)
  end"
end

function string(x::COMPONENTS)
  "@Record COMPONENTS begin
    $(x.attributes_)
    $(x.typeSpec)
    $(x.components)
  end"
end

function string(x::INNER)
  "@Record INNER"
end

function string(x::OUTER)
  "@Record OUTER"
end

function string(x::INNER_OUTER)
  "@Record INNER_OUTER"
end

function string(x::NOT_INNER_OUTER)
  "@Record NOT_INNER_OUTER"
end

#= TODO=#
function string(x::Import)
  "@Uniontype Import"
end

function string(x::GroupImport)
  "@Uniontype GroupImport"
end

function string(x::COMPONENTITEM)
  "@Record COMPONENTITEM begin
    $(x.component)
    $(x.condition)
    $(x.comment)
  end"
end

function sring(x::COMPONENT)
  "@Record COMPONENT begin
    $(x.name)
    $(x.arrayDim)
    $(x.modification)
  end"
end

function string(x::EQUATIONITEM)
  "@Record EQUATIONITEM begin
    $(x.equation_)
    $(x.comment)
    $(x.info)
  end"
end

function string(x::EQUATIONITEMCOMMENT)
  "@Record EQUATIONITEMCOMMENT"
end

function string(x::ALGORITHMITEM)
  "@Record ALGORITHMITEM begin
    $(x.algorithm_)
    $(x.comment)
    $(x.info)
  end"
end

function string(x::ALGORITHMITEMCOMMENT)
  "@Record ALGORITHMITEMCOMMENT"
end

function string(x::EQ_IF)
  "@Record EQ_IF begin
    $(x.ifExp)
    $(x.equationTrueItems)
    $(x.elseIfBranches)
    $(x.equationElseItems)
  end"
end

function string(x::EQ_EQUALS)
  "@Record EQ_EQUALS begin
    $(x.leftSide)
    $(x.rightSide)
  end"
end

function string(x::EQ_PDE)
  "@Record EQ_PDE begin
    $(x.leftSide)
    $(x.rightSide)
    $(x.domain)
  end"
end

function string(x::EQ_CONNECT)
  "@Record EQ_CONNECT begin
    $(x.connector1)
    $(x.connector2)
  end"
end

function string(x::EQ_FOR)
  "@Record EQ_FOR begin
    $(x.iterators)
    $(x.forEquations)
  end"
end

function string(x::EQ_WHEN_E)
  "@Record EQ_WHEN_E begin
    $(x.whenExp)
    $(x.whenEquations)
    $(x.elseWhenEquations)
  end"
end

function string(x::EQ_NORETCALL)
  "@Record EQ_NORETCALL begin
    $(x.functionName)
    $(x.functionArgs)
  end"
end

function string(x::EQ_FAILURE)
  "@Record EQ_FAILURE begin
    $(x.equ)
  end"
end

"""
TODO
"""
function string(x::Algorithm)
  "@Uniontype Algorithm"
end

function string(x::CLASSMOD)
  "@Record CLASSMOD begin
    $(x.elementArgLst)
    $(x.eqMod)
  end"
end

function string(x::NOMOD)
  "@Record NOMOD"
end

function string(x::EQMOD)
  "@Record EQMOD begin
     $(x.exp)
     $(x.info)
   end"
end

function string(x::MODIFICATION)
  "@Record MODIFICATION"
end

function string(x::REDECLARATION)
  "@Record REDECLARATION"
end

function string(x::ATTR)
  " @Record ATTR begin
      $(flowPrefix)
      $(streamPrefix)
      $(x.parallelism)
      $(x.variability)
      $(x.direction)
      $(x.isField)
      $(x.arrayDim)
      $(isMode)
  end"
end

function string(x::NONFIELD)
  "@Record NONFIELD"
end

function string(x::FIELD)
  "@Record FIELD"
end

function string(x::PARGLOBAL)
  "@Record PARGLOBAL"
end

function string(x::PARLOCAL)
  "@Record PARLOCAL"
end

function string(x::NON_PARALLEL)
  "@Record NON_PARALLEL"
end

function string(x::FLOW)
  "@Record FLOW"
end

function string(x::STREAM)
  "@Record STREAM"
end

function string(x::NOT_FLOW_STREAM)
  "@Record NOT_FLOW_STREAM"
end

function string(x::VAR)
  "@Record VAR"
end

function string(x::DISCRETE)
  "@Record DISCRETE"
end

function string(x::PARAM)
  "@Record PARAM"
end

function string(x::CONST)
  "@Record CONST"
end

function string(x::Direction)
  "@Record $(typeof(x))"
end

function string(x::Operator)
  "@Record $(typeof(x))"
end

#=TODO continue when bored..=#
