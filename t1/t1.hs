import Data.Char


-- 1 Crie uma função isVowel :: Char -> Bool que verifique se um caracter é uma vogal ou não.


isVowel :: Char -> Bool

isVowel c = elem (toLower(c)) "aeiou"
-- 2. Escreva uma função addComma, que adicione uma vírgula no final de cada string contida numa lista.


addComma :: [String] -> [String]

addComma s = map(\c -> c ++ ",")s