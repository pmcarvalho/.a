import Data.Char


-- 1 Crie uma fun��o isVowel :: Char -> Bool que verifique se um caracter � uma vogal ou n�o.


isVowel :: Char -> Bool

isVowel c = elem (toLower(c)) "aeiou"
-- 2. Escreva uma fun��o addComma, que adicione uma v�rgula no final de cada string contida numa lista.


addComma :: [String] -> [String]

addComma s = map(\c -> c ++ ",")s
-- 3. Crie uma fun��o htmlListItems :: [String] -> [String], que receba uma lista de strings e retorne outra lista contendo as strings formatadas como itens de lista em HTML.


--lambda

htmlListItems :: [String] -> [String]

htmlListItems s = map(\c -> "<LI>" ++ c ++ "</LI>")s
--aux
htmlListlItems :: [String] -> [String]

htmlListlItems s = map htmlListlAux s


htmlListlAux :: String -> String

htmlListlAux s = "<LI>" ++ s ++ "</LI>"