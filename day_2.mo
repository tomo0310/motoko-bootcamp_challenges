import Nat8 "mo:base/Nat8";
import Nat "mo:base/Nat";
import Char "mo:base/Char";
import Text "mo:base/Text";
import Array "mo:base/Array";

actor {

    // Challenge 1 : Write a function nat_to_nat8 that converts a Nat n to a Nat8. Make sure that your function never trap.
    // dfx canister call day_2 nat_to_nat8 '(255)'
    public func nat_to_nat8(n : Nat8) : async Nat {
        return (Nat8.toNat(n));
    };

    // Challenge 2 : Write a function max_number_with_n_bits that takes a Nat n and returns the maximum number than can be represented with only n-bits.
    // dfx canister call day_2 max_number_with_n_bits '(8)'
    public func max_number_with_n_bits(n : Nat) : async Nat {
        return (2**n)-1;
    };

    // Challenge 3 : Write a function decimal_to_bits that takes a Nat n and returns a Text corresponding to the binary representation of this number.
    // Note : decimal_to_bits(255) -> "11111111".
    // dfx canister call day_2 decimal_to_bits '(60)'
    public func decimal_to_bits(n : Nat) : async Text {
        var strings: Text = "";
        var div : Nat = n;

        while (div > 0){
            strings := Nat.toText(div % 2) # strings;
            div := (div - (div % 2)) / 2;
        };
        return strings;
    };

    // Challenge 4 : Write a function capitalize_character that takes a Char c and returns the capitalized version of it.
    // dfx canister call day_2 capitalize_character '(97)'
    public func capitalize_character(c : Char) : async Text {
        let n : Nat32 = Char.toNat32(c) - 32;
        let char : Char = Char.fromNat32(n);
        return (Char.toText(char));
    };

    // Challenge 5 : Write a function capitalize_text that takes a Text t and returns the capitalized version of it.
    // dfx canister call day_2 capitalize_text '("hello")'
    public func capitalize_text(t : Text) : async Text {
        var strings: Text = "";
        for(c in t.chars()){
            let n : Nat32 = Char.toNat32(c) - 32;
            strings := strings # Char.toText(Char.fromNat32(n))
        };
        return strings;
    };

    // Challenge 6 : Write a function is_inside that takes two arguments : a Text t and a Char c and returns a Bool indicating if c is inside t .
    // dfx canister call day_2 is_inside '("hello",97)'
    // dfx canister call day_2 is_inside '("hello",101)'
    public func is_inside(t : Text, c : Char) : async Bool {
        let p : Text.Pattern = #char(c);
        return (Text.contains(t, p));
    };

    // Challenge 7 : Write a function trim_whitespace that takes a text t and returns the trimmed version of t. Note : Trim means removing any leading and trailing spaces from the text : trim_whitespace(" Hello ") -> "Hello".
    // dfx canister call day_2 trim_whitespace '(" Hello ")'
    public func trim_whitespace(t : Text) : async Text {
        let p : Text.Pattern = #text(" ");
        let trimmed : Text = Text.trim(t,p);
        return trimmed;
    };

    // Challenge 8 : Write a function duplicated_character that takes a Text t and returns the first duplicated character in t converted to Text. Note : The function should return the whole Text if there is no duplicate character : duplicated_character("Hello") -> "l" & duplicated_character("World") -> "World".
    public func duplicated_character(t : Text) : async Text {
        return t;
    };

    // Challenge 9 : Write a function size_in_bytes that takes Text t and returns the number of bytes this text takes when encoded as UTF-8.
    // dfx canister call day_2 size_in_bytes '("hello")'
    public func size_in_bytes(t : Text) : async Nat {
        let b : Blob = Text.encodeUtf8(t);
        let n : Nat = b.size();
        return n;
    };

    // Challenge 10 : Bubble sort
    public func bubble_sort(array : [Nat]) : async [Nat] {
        return array;
    };

};