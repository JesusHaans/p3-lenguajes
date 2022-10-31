{
module MinHs.Parser where

import MinHs.Lexer
}

%name parser
%tokentype {Token}
%error {parseError}

%token
      var             { TokenVar $$ }
      num             { TokenNum $$ }
      bool            { TokenBool $$ }
      '('             { TokenOB }
      ')'             { TokenCB }
      '-'             { TokenRes }
      '*'             { TokenMult }
      '=='            { TokenEquals }
      '('             { TokenOB }
      ')'             { TokenCB }
      '-'             { TokenRes }
      '*'             { TokenMult }
      '=='            { TokenEquals }
      if              { TokenIf }
      then            { TokenThen }
      else            { TokenElse }
      letrec          { TokenLetrec }
      '->'            { TokenArrow }
      '::'            { TokenDots }
      '='             { TokenEq }
      Nat             { TokenNat }
      Bool            { TokenBoolean }
      in              { TokenIn }
      end             { TokenEnd }
      '['             { TokenOBrack }
      ']'             { TokenCBrack }
      recfun          { TokenRecfun }
      lam             { TokenLam }

%left else
%right '->' '='
%nonassoc '=='
%left '-'
%left '*'
%%

Exp   : num                             { Num $1 }
      | var                             { Var $1 }
      | bool                            { B $1 }
      | '(' Exp ')'                     { $2 }
      | Exp '-' Exp                     { Sub $1 $3 }
      | Exp '*' Exp                     { Prod $1 $3 }
      | Exp '==' Exp                    { Equal $1 $3 }
      | if Exp then Exp else Exp        { If $2 $4 $6 }
      | lam var '->' Exp                { Lam $2 $4 }
      | letrec var '=' Exp in Exp end   { Letrec $2 $4 $6 }
      | '(' Exp Exp')'                  { App $2 $3 }
      | recfun var '::' '('Type '->' Type')' vars '=' Exp   {Recfun $2 $5 $7 $9 $11}
      | '[' Exp exps ']'                { AppT $2 $3 }

vars : var          {[$1]}
     | var vars     { $1:$2 }

exps : Exp          {[$1]}
     | Exp exps     { $1:$2 }

Type : Nat              {Nat}
     | Bool             {Boolean}
     | Type '->' Type   {Func $1 $3}



{
parseError :: [Token] -> a
parseError _ = error "Parse error"

mainInter = getContents >>= print . parser . lexer
}