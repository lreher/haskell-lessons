-- BASICS

-- definition
defineMe = "defined"

-- function syntax
doubleMe x = x + x

doubleUs x y = doubleMe x + doubleMe y

-- if statements
doubleIfSmall x = if x > 100
                    then x
                    else x*2

-- list concat
concated = [2,3] ++ [3,4]

-- add to start of list - cons operator
cons = 3 : [3,3]

-- LIST METHODS

-- head takes first element and returns it
getHead list = head list

-- tail takes a list and returns tail elements
getTail list = tail list

-- last takes a list and returns last element
getLast list = last list

--init takes a list and returns the initial elements except for the last
getInit list = init list

-- length gets length
getLength list = length list

-- null checks if list is empty
checkEmpty list = if null list then True else False

-- reverse reverts a list
reverseList list = reverse list

-- takes extracts X elements from start of list
takesList value list = take value list

-- drop drops X elements from start of list
dropList value list = drop value list

-- maximum gets max value of list
getMax list = maximum list

-- minimum gets max value of list
getMin list = minimum list

-- sum gets sum of list
getSum list = sum list

-- product gets product of list
getProduct list = product list

-- elem checks if element exists in list
checkInList value list = value `elem` list

-- INFINITE LISTS

infiniteOddRange = [2,4..]

-- cycle cycles through a list to infinity
get123s count = take count (cycle [1,2,3])

-- repeat repeats an element on a list to infinity
get1s count = take count (repeat 1)

-- LIST COMPREHENSION

-- BOOM on even, BANG on odds, takes in list, doesn't not accept number 8 or 11
boomBang list = [if x `mod` 2 == 0 then "BOOM" else "BANG" | x <- list, x /= 8, x /= 11]

-- using multiple lists (matrix sum)
getSums list1 list2 = [x + y | x <- list1, y <- list2]

-- using multiple lists and predictates
getHighSums list1 list2 = [x + y | x <- list1, y <- list2, x + y > 10]

-- create words combination
noun = ["banana", "carrot", "elderberry"]
adjectives = ["fancy", "grand", "fat"]

createNames = [x ++ " " ++ y | x <- noun, y <- adjectives]

-- a length function
length' list = sum [1 | _ <- list]

-- nested list comprehension
xss = [[1,3,5,2,3,1,2,4,5],[1,2,3,4,5,6,7,8,9],[1,2,4,2,1,6,3,1,3,2,3,6]]  
removeOdds = [ [x | x <- xs, even x] | xs <- xss]

-- TUPLES
tuple = (2,'3')
triple = (2,'3', [4])

-- fst gets first element of tuple
getFst = fst tuple

-- snd gets second element of tuple
getSnd = snd tuple

-- zip takes two lists and combines them into tuples
callZip = zip [1,2,3,4] ["a", "b", "c", "d"]

-- zip can be used with infinite lists 
infiniteZip = zip [1,5..] ["a", "b", "c", "d"]

-- PROBLEM
-- Find a triangle with integer sides, where all sides are less than or equal to 10, with a perimeter of 24

-- generate all tringles with sides less than or equal than 10
triangles = [(a,b,c) | a <- [1..10], b <- [1..10], c <- [1..10]]

-- generate all right tringles with sides less than or equal than 10
rightTriangles = [(a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2]

-- add predictate for perimeter = 24
rightTriangles' = [(a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a + b + c == 24]
