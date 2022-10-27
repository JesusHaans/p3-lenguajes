
module Test where

import Test.QuickCheck

import MinMl.Lexer as LexMl
import MinMl.Parser as ParMl
import MinMl.Interpreter as IntMl

--import MinHs.Lexer as LexHs
--import MinHs.Parser as ParHs
--import MinHs.Compiler as CompHs
--import MinHs.Interpreter as IntHs
import Data.Bool (Bool)

-- MinML
t1_ml :: Bool
t1_ml = IntMl.eval (ParMl.parser $ LexMl.lexer "letrec fact = fun x => if ( x = 0) then 1 else x * ( fact (x -1) ) in ( fact 5 ) end") == Left 120

t2_ml :: Bool
t2_ml = IntMl.eval (ParMl.parser $ LexMl.lexer "letrec fibo = fun x => if ( x <= 1) then x else ( ( fibo (x -1) ) + ( fibo (x -2) ) ) in ( fibo 8 ) end") == Left 21

t3_ml :: Bool
t3_ml = IntMl.eval (ParMl.parser $ LexMl.lexer "letrec dblSumGaus = fun x => ( ( x *( x + 1))) in ( dblSumGaus 100 ) end") == Left 10100

t4_ml :: Bool
t4_ml = IntMl.eval (ParMl.parser $ LexMl.lexer "letrec sumToNum = fun x => if ( x = 1) then x else ( x + ( sumToNum (x - 1) )) in ( sumToNum 100 ) end") == Left 5050

t5_ml :: Bool
t5_ml = IntMl.eval (ParMl.parser $ LexMl.lexer "letrec lettt = fun x => if ( x < 10 ) then ( let y = x in ( y * 10) end) else ( x + ( lettt ( x - 1))) in ( lettt 12 ) end") == Left 123

-- MinHS
{-
t1_hs :: Bool
t1_hs = IntHs.eval (CompHs.curry $ ParHs.parser $ LexHs.lexer "(recfun fact :: (Nat -> Nat) x = if (x == 0) then 1 else x * (fact (x -1)) 5)") == Left 120

t2_hs :: Bool
t2_hs = IntHs.eval (CompHs.curry $ ParHs.parser $ LexHs.lexer "(recfun factTail :: (Nat -> Nat -> Nat) x t = if (x == 0) then t else (factTail (x -1) (t*x)) 5 1)") == Left 120

t3_hs :: Bool
t3_hs = IntHs.eval (CompHs.curry $ ParHs.parser $ LexHs.lexer "(recfun fibo :: (Nat -> Nat) x = if (x <= 1) then x else ( (fibo (x -1)) + (fibo  (x -2)) ) 8)") == Left 21

t4_hs :: Bool
t4_hs = IntHs.eval (CompHs.curry $ ParHs.parser $ LexHs.lexer "(recfun pot :: (Nat -> Nat -> Nat) x p = if (p == 0) then 1 else x * (pot (x) (p-1)) 5 3)") == Left 125

t5_hs :: Bool
t5_hs = IntHs.eval (CompHs.curry $ ParHs.parser $ LexHs.lexer "(recfun letths :: (Nat -> Nat -> Nat) x z = if ( x < 10 ) then x + let y = x in ( y * 10) end else ( (letths (x-1) (z-1)) + let y = z in ( y * 10) end ) 12 3)") == Left 159
-}

main = do
    putStrLn "Test MinMl"
    quickCheck t1_ml
    quickCheck t2_ml
    quickCheck t3_ml
    quickCheck t4_ml
    quickCheck t5_ml
    putStrLn ""
    putStrLn "Test MinHs"
    {-
    quickCheck t1_hs
    quickCheck t2_hs
    quickCheck t3_hs
    quickCheck t4_hs
    quickCheck t5_hs
    -}