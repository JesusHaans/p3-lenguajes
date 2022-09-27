{
module MinMl.Parser where

import MinMl.Lexer
}
{

mainInter = getContents >>= print . parser . lexer

}