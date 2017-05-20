-- This is my first Haskell list
let firstList = [1,2,3,4,5]

-- Here is a list with two lists concatenated
let listOne = [1,2,3]
let listTwo = [7,8,9]
let concatList = listOne ++ listTwo

-- We're using a cons operator to contatenate two lists immediately
let firstNumbers = 1:[2,3,4,5]

-- We're getting a number out of that list!
let numberThree = firstNumbers !! 2

-- Lists can be compared in lexicographical order
let trueComparison = [1,3,3] > [1,2,3]

-- Here are a few list operations:
let one = head firstNumbers
let twoToFive = tail firstNumbers
let five = last firstNumbers
let oneToFour = init firstNumbers
let lengthList = length firstNumbers
let reverseFirstNumbers = reverse firstNumbers
let twoFirstNumbers = take 2 firstNumbers
let threeNumbers = drop 2 firstNumbers

-- Here are some true assertions
let true1 = lengthList == 5
let true2 = null []
let true3 = maximum firstNumbers == 5

-- Here are some false assertions
let false1 = null firstNumbers
let false2 = null (drop 3 firstNumbers)
let false3 = minimum firstNumbers == 0
let false4 = sum firstNumbers == 10

-- Here, we can use ranges to generate lists
let allLetters = ['a'..'z']
let tenFirstNumbers = [1..10]
let tenEvenNumbers = [0,2..18]
let reverseOrder = [20,19..1]
let cycleList = cycle [1,2,3] -- This list will never stop displaying 1,2,3, you have to slice it!
let repeatList = repeat 9 -- Same, but only with 9!

-- We're now using list comprehensions to generate lists
let evenNumbersUntil10 = [x*2 | x <- [0..5]]
-- The first part describes the output, the second part describes the predicate for the input set.
let bigEvenNumbers = [x*2 | x <- [0..10], x*2 >= 12]
let whatAreTheseNumbers = [x*2 | x <- [0..20], x `mod` 3 == 2] -- Using predicates to weed out the input set is called filtering.

-- Now, in a function!
boomBang xs = [if x `mod` 2 == 1 then "BOOM!" else "BANG!" | x <- xs, x < 10]

-- We can also draw inputs from several sources
let objects = [adjective ++ " " ++ noun | adjective <- ["nice", "sweet", "interesting"], noun <- ["duck", "cat", "bicycle"]]

-- For example, this is our own version of length
myLength l = sum [1 | _ <- l]
