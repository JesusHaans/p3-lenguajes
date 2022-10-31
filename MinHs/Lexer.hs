module MinHs.Lexer where

import Data.Char
import Data.List


data Exp = Var String | Num Int | B Bool 
         | Sub Exp Exp | Equal Exp Exp | Prod Exp Exp
         | Lam String Exp | If Exp Exp Exp
         | Letrec String Exp Exp | App Exp Exp | Fix String Exp
         | Recfun String Type Type [String] Exp --- no utilzado (es parte del ejemplo parser recfun)
         | AppT Exp [Exp] --- no utilzado (es parte del ejemplo parser recfun)
         deriving Show

data Type = Nat | Boolean | Func Type Type deriving Show

data Token
      = TokenVar String
      | TokenNum Int
      | TokenBool Bool
      | TokenOB
      | TokenCB
      | TokenRes
      | TokenMult 
      | TokenEquals
      | TokenIf
      | TokenThen
      | TokenElse 
      | TokenLetrec
      | TokenArrow
      | TokenDots
      | TokenEq
      | TokenNat
      | TokenBoolean
      | TokenIn
      | TokenEnd
      | TokenOBrack
      | TokenCBrack
      | TokenRecfun
      | TokenLam
      deriving Show


lexer :: String -> [Token]
lexer [] = []
lexer (c:cs) 
      | isSpace c = lexer cs
      | isAlpha c = lexVar (c:cs)
      | isDigit c = lexNum (c:cs)
lexer ('-':'>':cs) = TokenArrow : lexer cs
lexer ('-':cs) = TokenRes : lexer cs
lexer ('*':cs) = TokenMult : lexer cs
lexer ('(':cs) = TokenOB : lexer cs
lexer (')':cs) = TokenCB : lexer cs
lexer ('[':cs) = TokenOBrack : lexer cs
lexer (']':cs) = TokenCBrack : lexer cs
lexer ('=':'=':cs) = TokenEquals : lexer cs
lexer ('=':cs) = TokenEq : lexer cs
lexer (':':':':cs) = TokenDots : lexer cs

lexNum cs = TokenNum (read num) : lexer rest
      where (num,rest) = span isDigit cs

lexVar cs =
   case span isAlpha cs of
      ("if", rest) -> TokenIf : lexer rest
      ("then", rest) -> TokenThen : lexer rest
      ("else", rest) -> TokenElse : lexer rest
      ("Nat", rest) -> TokenNat : lexer rest
      ("Bool", rest) -> TokenBoolean : lexer rest
      ("recfun", rest) -> TokenRecfun : lexer rest
      ("letrec", rest) -> TokenLetrec : lexer rest
      ("in", rest) -> TokenIn : lexer rest
      ("end", rest) -> TokenEnd : lexer rest
      ("lam", rest) -> TokenLam : lexer rest
      (var,rest)   -> TokenVar var : lexer rest