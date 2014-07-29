Palindromes Below
For example in base 2 (binary)
1 = "1"
2 = "10"
3 = "11"
4 = "100"
Therefore 1 and 3 are palindromes in base two and the method should return the following.
5.palindrome_below(2)
=> [1, 3]


Blackjack Scorer
Description:

Write a function called scoreHand that determines the score of a hand in the card game Blackjack (aka 21).
This function takes one parameter which is an array of strings that represent each card in the hand. Each card will be one of the following strings: "2",..,"10", "J", "Q", "K", "A"
It returns a number which is the score of the hand. Return the highest score of the cards that is less than or equal to 21. If there is no score less than or euqal to 21 return the smallest score more than 21.
Scoring rules: In Blackjack number cards count as their face value (2 through 10). Jack, Queen and King count as 10. An Ace can be counted as either 1 or 11.
Blackjack Scorer Examples
scoreHand(["A"]); //=> 11
scoreHand(["A", "J"]); //=> 21

scoreHand(["A", "10", "A"]); //=> 12
scoreHand(["5", "3", "7"]); //=> 15
scoreHand(["5", "4", "3", "2", "A", "K"]); //=> 25
Split hash by key(s)
Description:

Write a method which takes arguments:

hash
keys (comma-separated symbols or strings)
and it splits hash by given keys and returns array of hashes.

If a key given as an argument is not present in the hash, the method should raise an exception
In case there are any empty hash after splitting, it should be removed from resultant array.
For example:
# returns [ {:a=>1, :b=>2}, {:c=>3, :d=>4}, {:e=>5, :f=>6} ]
split_hash_by_key( { :a=>1, :b=>2, :c=>3, :d=>4, :e=>5, :f=>6 }, :c, :e )

#returns [ {:a=>1}, {:b=>2, :c=>3, :d=>4, :e=>5}, {:f=>6} ]
split_hash_by_key( { :a=>1, :b=>2, :c=>3, :d=>4, :e=>5, :f=>6 }, :b, :f )

#returns [ {"a"=>1, "b"=>2, "c"=>3}, {"d"=>4, "e"=>5, "f"=>6} ]
split_hash_by_key( { 'a'=>1, 'b'=>2, 'c'=>3, 'd'=>4, 'e'=>5, 'f'=>6 }, 'd' )

#returns [ {:a => 1, :b => 2} ]
split_hash_by_key( {:a => 1, :b => 2}, :a )

# raises an exception
split_hash_by_key( { :a=>1, :b=>2, :c=>3, :d=>4, :e=>5, :f=>6 }, 'b' )
