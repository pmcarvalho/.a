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
--5. Defina uma função que receba uma string, possivelmente contendo espaços, e que retorne outra string substituindo os demais caracteres por '-'.

--lambda


substituiCaracteresl :: String -> String

substituiCaracteresl s = map(\c-> if c == ' ' then ' ' else '-')s


--aux
substituiCaracteres :: String -> String

substituiCaracteres s = map(substituiCaracteresAux)s

substituiCaracteresAux :: Char -> Char

substituiCaracteresAux c =  if c == ' ' then ' ' else '-'
--6. Escreva uma função firstName :: String -> String que, dado o nome completo de uma pessoa, obtenha seu primeiro nome. Suponha que cada parte do nome seja separada por um espaço e que não existam espaços no início ou fim do nome.


firstName :: String -> String

firstName s = takeWhile(/= ' ')s

--7. Escreva uma função isInt :: String -> Bool que verifique se uma dada string só contém dígitos de 0 a 9.


isInt :: String -> Bool

isInt s = length(filter(\c-> c>'9' || c<'0')s) == 0