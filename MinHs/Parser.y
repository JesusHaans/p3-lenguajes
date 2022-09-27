{
module MinHs.Parser where

import MinHs.Lexer
}
{
mainInter = getContents >>= print . parser . lexer
}