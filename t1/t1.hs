import Data.Char


-- 1 Crie uma função isVowel :: Char -> Bool que verifique se um caracter é uma vogal ou não.


isVowel :: Char -> Bool

isVowel c = elem (toLower(c)) "aeiou"
-- 2. Escreva uma função addComma, que adicione uma vírgula no final de cada string contida numa lista.


addComma :: [String] -> [String]

addComma s = map(\c -> c ++ ",")s
-- 3. Crie uma função htmlListItems :: [String] -> [String], que receba uma lista de strings e retorne outra lista contendo as strings formatadas como itens de lista em HTML.


--lambda

htmlListItems :: [String] -> [String]

htmlListItems s = map(\c -> "<LI>" ++ c ++ "</LI>")s
--aux
htmlListlItems :: [String] -> [String]

htmlListlItems s = map htmlListlAux s


htmlListlAux :: String -> String

htmlListlAux s = "<LI>" ++ s ++ "</LI>"
--4. Defina uma função que receba uma string e produza outra retirando as vogais.


--lambda
retiraVogaisl :: String -> String

retiraVogaisl s = filter(\c-> notElem (toLower(c)) "aeiou")s


--aux
retiraVogais :: String -> String

retiraVogais s = filter(isntVowel)s


isntVowel :: Char -> Bool

isntVowel c = notElem (toLower(c)) "aeiou"