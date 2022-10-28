module MinMl.Interpreter where
import Data.List
import MinMl.Parser
import MinMl.Lexer


eval:: MinMl -> Either Int Bool
eval e = case evaln e of
    (Num i) -> Left i
    (B b) -> Right b
    e' -> error ( show e')
 
evaln:: MinMl -> MinMl
evaln e = if e == e' then e else evaln e'
    where e' = evalg e

evalg:: MinMl -> MinMl
evalg (Num x) = Num x
evalg (B x) = B x
evalg (Var x)  = Var x
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
evalg (If e1 e2 e3) = case evalg e1 of
    (B True) -> evalg e2
    (B False) -> evalg e3
    e1' -> If e1' e2 e3
evalg (App e1 e2) = case evalg e1 of
    (Fun x e1') -> evalg (subst e1' (x, e2))
    e1' -> App e1' (evalg e2) 
evalg (Fun x e) = Fun x (evalg e)
evalg (Let x e1 e2) = evalg (subst e2 (x, e1))
evalg (LetRec f e1 e2) = evalg (subst e2 (f, Fix f e1))
evalg e@(Fix id f) = evalg $ subst f (id,e)  -- -> asi tenemos que Fix f -> f (Fix f) (como en ejemplo de lab)


-- substitucion con chochos ya que en p2 no cheque las variables libres

subst:: MinMl -> (String, MinMl) -> MinMl
subst (Num i) _ = Num i
subst (B b) _ = B b
subst (Var x) (y, e) = if x == y then e else Var x
subst (If e1 e2 e3) s = If (subst e1 s) (subst e2 s) (subst e3 s)
subst e@(Let id e1 e2) s@(x, e') 
    | id `notElem` (fv e') && (x /= id ) = Let x (subst e1 s) (subst e2 s)
    | otherwise = e
subst e@(LetRec id e1 e2) s@(x, e')
    | id `notElem` (fv e') && (x /= id ) = LetRec x (subst e1 s) (subst e2 s)
    | otherwise = e
subst (App e1 e2) s = App (subst e1 s) (subst e2 s)
subst (Sum e1 e2) s = Sum (subst e1 s) (subst e2 s)
subst (Res e1 e2) s = Res (subst e1 s) (subst e2 s)
subst (Mul e1 e2) s = Mul (subst e1 s) (subst e2 s)
subst (Lt e1 e2) s = Lt (subst e1 s) (subst e2 s)
subst (Gt e1 e2) s = Gt (subst e1 s) (subst e2 s)
subst (Le e1 e2) s = Le (subst e1 s) (subst e2 s)
subst (Ge e1 e2) s = Ge (subst e1 s) (subst e2 s)
subst (Eq e1 e2) s = Eq (subst e1 s) (subst e2 s)
subst (And e1 e2) s = And (subst e1 s) (subst e2 s)
subst (Or e1 e2) s = Or (subst e1 s) (subst e2 s)
subst (Fun x e) s@(y, e')
    | x `notElem` (fv e') && (x /= y) = Fun x (subst e s)
    | otherwise = Fun x e
subst (Fix id e) s = Fix id (subst e s)




-- para checar variables libres

fv:: MinMl -> [String]
fv (Num i) = []
fv (B b) = []
fv (Var x) = [x]
fv (If e1 e2 e3) = (fv e1) ++ (fv e2) ++ (fv e3)
fv (Let x e1 e2) = filter (/=x) (fv e1) ++ filter (/=x) (fv e2)
fv (LetRec x e1 e2) = filter (/=x) (fv e1) ++ filter (/=x) (fv e2)
fv (App e1 e2) = (fv e1) ++ (fv e2)
fv (Sum e1 e2) = (fv e1) ++ (fv e2)
fv (Res e1 e2) = (fv e1) ++ (fv e2)
fv (Mul e1 e2) = (fv e1) ++ (fv e2)
fv (Lt e1 e2) = (fv e1) ++ (fv e2)
fv (Gt e1 e2) = (fv e1) ++ (fv e2)
fv (Le e1 e2) = (fv e1) ++ (fv e2)
fv (Ge e1 e2) = (fv e1) ++ (fv e2)
fv (Eq e1 e2) = (fv e1) ++ (fv e2)
fv (And e1 e2) = (fv e1) ++ (fv e2)
fv (Or e1 e2) = (fv e1) ++ (fv e2)
fv (Fun x e) = filter (/=x) (fv e)
fv (Fix x e) = filter (/=x) (fv e)






---- IntMl.eval (ParMl.parser $ LexMl.lexer "let y = 2 in ( y * 10) end") ----