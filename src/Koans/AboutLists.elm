module AboutLists exposing (testSuite)

import Assert
import Test exposing (describe, test)
import TestHelpers exposing (..)


testSuite =
    describe "About Lists"
        [ test "list literals are denoted by brackets"
            <| \() -> Assert.equal [ 1, 2, 3 ] xList
        , test "length gives the length of a list"
            <| \() -> Assert.equal (List.length [ 1, 2, 3 ]) xNum
        , test "isEmpty determines if a list is empty"
            <| \() -> Assert.equal (List.isEmpty []) xBool
        , test "reverse revereses a list"
            <| \() -> Assert.equal (List.reverse [ 1, 2, 3 ]) xList
        , test "member tests if a list includes a value"
            <| \() -> Assert.equal (List.member 2 [ 1, 2, 3 ]) xBool
        , test "head returns the first item in a list"
            <| \() -> Assert.equal (List.head [ 1, 2, 3 ]) (Just xNum)
        , test "minimum returns the minimum of a list of comparables"
            <| \() -> Assert.equal (List.minimum [ 1, 2, 3 ]) (Just xNum)
        , test "maximum returns the maximum of a list of comparables"
            <| \() -> Assert.equal (List.maximum [ 'a', 'b', 'c' ]) (Just xChar)
        , test "take returns the first n items in a list"
            <| \() -> Assert.equal (List.take 2 [ 1, 2, 3 ]) xList
        , test "drop returns the list without the first n items"
            <| \() -> Assert.equal (List.drop 2 [ 1, 2, 3 ]) xList
        , test "filter returns the elements that return true for a predicate function"
            <| \() -> Assert.equal (List.filter (\x -> x % 2 == 0) [ 1, 2, 3, 4 ]) xList
        , test "all tests whether all elements of a list return true for a predicate function"
            <| \() -> Assert.equal (List.all (\x -> x % 2 == 0) [ 2, 4 ]) xBool
        , test "any tests whether any elements of a list return true for a predicate function"
            <| \() -> Assert.equal (List.any (\x -> x % 2 == 0) [ 1, 2, 3 ]) xBool
        , test "repeat returns a list with n copies of a value"
            <| \() -> Assert.equal (List.repeat 4 1) xList
        , test "sum returns the sum of a list of numbers"
            <| \() -> Assert.equal (List.sum [ 1, 2, 3 ]) xNum
        , test "product returns the product of a list of numbers"
            <| \() -> Assert.equal (List.product [ 1, 2, 3 ]) xNum
        , test "sort sorts a list of comparables"
            <| \() -> Assert.equal (List.sort [ 'c', 'a', 'b' ]) xList
        , test "sortBy sorts using a function that returns a comparable"
            <| \() -> Assert.equal (List.sortBy (\x -> x % 3) [ 10, 6, 8 ]) xList
        , test ":: is the cons operator"
            <| \() -> Assert.equal (1 :: [ 2, 3 ]) xList
        , test "append puts 2 lists together"
            <| \() -> Assert.equal (List.append [ 1, 2 ] [ 3, 4 ]) xList
        , test "concat appends the elements in a list of lists"
            <| \() -> Assert.equal (List.concat [ [ 1, 2 ], [ 3, 4 ] ]) xList
        , test "intersperse puts a value between all elements of a list"
            <| \() -> Assert.equal (List.intersperse 1 [ 2, 3, 4 ]) xList
        , test "map applies a function to every element of a list"
            <| \() -> Assert.equal (List.map (\x -> 2 * x) [ 1, 2, 3 ]) xList
        , test "map2 applies a function to elements from 2 lists"
            -- corresponding functions exist up to map6
            <|
                \() -> Assert.equal (List.map2 (\x y -> x * y) [ 1, 2, 3 ] [ 4, 5, 6 ]) xList
        , test "indexedMap applies a function to the index of an element and that element"
            <| \() -> Assert.equal (List.indexedMap (\x y -> y - x) [ 1, 2, 3 ]) xList
        , test "foldl reduces a list from the left"
            <| \() -> Assert.equal (List.foldl (\x y -> x ++ y) "a" [ "b", "c", "d" ]) xString
        , test "foldr reduces a list from the right"
            <| \() -> Assert.equal (List.foldr (\x y -> x ++ y) "a" [ "b", "c", "d" ]) xString
        , test "scanl reduces a list from the left, building a list of intermediate results"
            <| \() -> Assert.equal (List.scanl (\x y -> x ++ y) "a" [ "b", "c", "d" ]) xList
        ]
