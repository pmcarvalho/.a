import Data.Char


-- 1 Crie uma fun��o isVowel :: Char -> Bool que verifique se um caracter � uma vogal ou n�o.


isVowel :: Char -> Bool

isVowel c = elem (toLower(c)) "aeiou"