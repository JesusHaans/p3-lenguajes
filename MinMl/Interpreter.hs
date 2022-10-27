module MinMl.Interpreter where

import MinMl.Parser
import MinMl.Lexer


eval:: MinMl -> Either Int Bool
eval e = case evaln e of
    (Num i) -> Left i
    (B b) -> Right b
    e' -> error "Exprecion Bloqueada"

evaln:: MinMl -> MinMl
evaln e = if e == e' then e else evaln e'
    where e' = evalg e

evalg:: MinMl -> MinMl
evalg (Num i) = Num i
evalg (B b) = B b
evalg (Var x) = error "Variable no definida"
evalg (If e1 e2 e3) = case evalg e1 of
    (B True) -> evalg e2
    (B False) -> evalg e3
    e1' -> If e1' e2 e3
evalg (Let x e1 e2) = evalg (subst (evalg e2) x (evalg e1))
evalg (LetRec f e1 e2) = error "LetRec no implementado"
evalg (App e1 e2) = case evalg e1 of
    (Fun x e1') -> evalg (subst e1' x (evalg e2))
    e1' -> App e1' e2 
evalg (Sum e1 e2) = case (evalg e1, evalg e2) of
    (Num i1, Num i2) -> Num (i1 + i2)
    (e1', e2') -> Sum e1' e2'
evalg (Res e1 e2) = case (evalg e1, evalg e2) of
    (Num i1, Num i2) -> Num (i1 - i2)
    (e1', e2') -> Res e1' e2'
evalg (Mul e1 e2) = case (evalg e1, evalg e2) of
    (Num i1, Num i2) -> Num (i1 * i2)
    (e1', e2') -> Mul e1' e2'
evalg (Lt e1 e2) = case (evalg e1, evalg e2) of
    (Num i1, Num i2) -> B (i1 < i2)
    (e1', e2') -> Lt e1' e2'
evalg (Gt e1 e2) = case (evalg e1, evalg e2) of
    (Num i1, Num i2) -> B (i1 > i2)
    (e1', e2') -> Gt e1' e2'
evalg (Le e1 e2) = case (evalg e1, evalg e2) of
    (Num i1, Num i2) -> B (i1 <= i2)
    (e1', e2') -> Le e1' e2'
evalg (Ge e1 e2) = case (evalg e1, evalg e2) of
    (Num i1, Num i2) -> B (i1 >= i2)
    (e1', e2') -> Ge e1' e2'
evalg (Eq e1 e2) = case (evalg e1, evalg e2) of
    (Num i1, Num i2) -> B (i1 == i2)
    (e1', e2') -> Eq e1' e2'
evalg (And e1 e2) = case (evalg e1, evalg e2) of
    (B b1, B b2) -> B (b1 && b2)
    (e1', e2') -> And e1' e2'
evalg (Or e1 e2) = case (evalg e1, evalg e2) of
    (B b1, B b2) -> B (b1 || b2)
    (e1', e2') -> Or e1' e2'
evalg (Fun x e) = Fun x (evalg e)



subst:: MinMl -> String -> MinMl -> MinMl
subst (Num i) x e = Num i
subst (B b) x e = B b
subst (Var y) x e = if x == y then e else Var y
subst (If e1 e2 e3) x e = If (subst e1 x e) (subst e2 x e) (subst e3 x e)
subst (Let y e1 e2) x e = Let y (subst e1 x e) (subst e2 x e)
subst (LetRec f e1 e2) x e = LetRec f (subst e1 x e) (subst e2 x e)
subst (App e1 e2) x e = App (subst e1 x e) (subst e2 x e)
subst (Sum e1 e2) x e = Sum (subst e1 x e) (subst e2 x e)
subst (Res e1 e2) x e = Res (subst e1 x e) (subst e2 x e)
subst (Mul e1 e2) x e = Mul (subst e1 x e) (subst e2 x e)
subst (Lt e1 e2) x e = Lt (subst e1 x e) (subst e2 x e)
subst (Gt e1 e2) x e = Gt (subst e1 x e) (subst e2 x e)
subst (Le e1 e2) x e = Le (subst e1 x e) (subst e2 x e)
subst (Ge e1 e2) x e = Ge (subst e1 x e) (subst e2 x e)
subst (Eq e1 e2) x e = Eq (subst e1 x e) (subst e2 x e)
subst (And e1 e2) x e = And (subst e1 x e) (subst e2 x e)
subst (Or e1 e2) x e = Or (subst e1 x e) (subst e2 x e)
subst (Fun y e1) x e = Fun y (subst e1 x e)