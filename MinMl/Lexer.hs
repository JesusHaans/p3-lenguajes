module MinMl.Lexer where
import Data.Char
import Data.List

data MinMl = Num Int
      | Var String
      | B Bool
      | Sum MinMl MinMl
      | Res MinMl MinMl
      | Mul MinMl MinMl
      | Lt MinMl MinMl
      | Gt MinMl MinMl
      | Le MinMl MinMl
      | Ge MinMl MinMl
      | Eq MinMl MinMl
      | And MinMl MinMl
      | Or MinMl MinMl
      | If MinMl MinMl MinMl
      | Let String MinMl MinMl
      | LetRec String MinMl MinMl
      | Fun String MinMl
      | App MinMl MinMl
      | Fix String MinMl
      deriving (Show,Eq)
 

data Token
      = TokNum Int
      | TokVar String
      | TokOParen
      | TokCParen
      | TokSum
      | TokRes
      | TokMul
      | TokLt
      | TokGt
      | TokLe
      | TokGe
      | TokEq
      | TokAnd
      | TokOr
      | TokB Bool
      | TokLet
      | TokLetRec
      | TokIn
      | TokEnd
      | TokIf 
      | TokThen 
      | TokElse
      | TokFun
      | TokArrow 
      deriving Show


lexer :: String -> [Token]
lexer [] = []
lexer (c:cs) 
      | isSpace c = lexer cs
      | isAlpha c = lexVar (c:cs)
      | isDigit c = lexNum (c:cs)
lexer ('+':cs) = TokSum : lexer cs
lexer ('-':cs) = TokRes : lexer cs
lexer ('*':cs) = TokMul : lexer cs
lexer ('<':'=':cs) = TokLe : lexer cs
lexer ('>':'=':cs) = TokGe : lexer cs
lexer ('&':'&':cs) = TokAnd : lexer cs
lexer ('|':'|':cs) = TokOr : lexer cs
lexer ('=':'>':cs) = TokArrow : lexer cs
lexer ('(':cs) = TokOParen : lexer cs
lexer (')':cs) = TokCParen : lexer cs
lexer ('=':cs) = TokEq : lexer cs
lexer ('<':cs) = TokLt : lexer cs
lexer ('>':cs) = TokGt : lexer cs

lexNum cs = TokNum (read num) : lexer rest
      where (num,rest) = span isDigit cs

lexVar cs =
   case span isAlpha cs of
      ("let", rest) -> TokLet : lexer rest
      ("letrec", rest) -> TokLetRec : lexer rest
      ("in", rest) -> TokIn : lexer rest
      ("end", rest) -> TokEnd : lexer rest
      ("fun", rest) -> TokFun : lexer rest
      ("if", rest) -> TokIf : lexer rest
      ("then", rest) -> TokThen : lexer rest
      ("else", rest) -> TokElse : lexer rest
      ("true", rest) -> TokB True : lexer rest
      ("false", rest) -> TokB False : lexer rest
      (var,rest) -> TokVar var : lexer rest