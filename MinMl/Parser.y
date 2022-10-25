{
module MinMl.Parser where

import MinMl.Lexer
}

%name parser
%tokentype {Token}
%error {parseError}

%token
    num         { TokNum $$ }
    var         { TokVar $$ }
    '('         { TokOParen }
    ')'         { TokCParen }
    '+'         { TokSum }
    '-'         { TokRes }
    '*'         { TokMul }
    '='         { TokEq }
    '<'         { TokLt }
    '>'         { TokGt }
    '<='        { TokLe }
    '>='        { TokGe }
    '&&'        { TokAnd }
    '||'        { TokOr }
    b           { TokB $$ }
    if          { TokIf }
    then        { TokThen }
    else        { TokElse }
    let         { TokLet }
    letrec      { TokLetRec }
    in          { TokIn }
    end         { TokEnd }
    fun         { TokFun }
    '=>'        { TokArrow }

%right in
%right '=>'
%left else
%left '*'
%left '+' '-'
%left '<' '>' '=' '<=' '>='
%left '&&'
%left '||'
%%

MinMl   : num                                           { Num $1 }
        | var                                           { Var $1 }
        | '(' MinMl ')'                                 { $2 }
        | MinMl '+' MinMl                               { Sum $1 $3 }
        | MinMl '-' MinMl                               { Res $1 $3 }
        | MinMl '*' MinMl                               { Mul $1 $3 }
        | MinMl '<' MinMl                               { Lt $1 $3 }
        | MinMl '>' MinMl                               { Gt $1 $3 }
        | MinMl '=' MinMl                               { Eq $1 $3 }
        | MinMl '<=' MinMl                              { Le $1 $3 }
        | MinMl '>=' MinMl                              { Ge $1 $3 }
        | MinMl '&&' MinMl                              { And $1 $3 }
        | MinMl '||' MinMl                              { Or $1 $3 }
        | b                                             { B $1 }
        | if MinMl then MinMl else MinMl end            { If $2 $4 $6 }
        | let MinMl '=' MinMl in MinMl end                { Let $2 $4 $6 }
        | letrec MinMl '=' MinMl in MinMl end             { LetRec $2 $4 $6 }
        | fun MinMl '=>' MinMl                            { Fun $2 $4 }
        | '(' MinMl MinMl ')'                           { App $1 $2 }
        

{

parseError :: [Token] -> a
parseError _ = error "Parse error"


mainInter = getContents >>= print . parser . lexer

}