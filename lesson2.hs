-- :: means 'has type of'
-- we can declare functions with types
removeNonUppercase :: [Char] -> [Char]
removeNonUppercase list = [ c | c <- list, c `elem` ['A'..'Z']]

-- declaring function with multiple parameters
addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z

-- COMMON TYPES

-- Int bound integer (to bit size)
int :: Int 
int = 2

-- Integer unbound integer 
integer :: Integer 
integer = 21231232141241241241241241244124124

-- Float floating point single precision
float :: Float 
float = 2.21314

-- Float floating point double precision
double :: Double
double = 2.213141234312412341234213

-- Bool boolean
bool :: Bool
bool = True

-- Char single character
char :: Char
char = 'A'