import Array "mo:base/Array";
import Iter "mo:base/Iter";

actor {

    // Challenge 1
    // dfx canister call day_1 add '(2,3)'
    public func add(n : Nat , m : Nat) : async Nat {
        return n + m;
    };

    // Challenge 2
    // dfx canister call day_1 square '(2)'
    public func square(n : Nat) : async Nat {
        return n * n;
    };

    // Challenge 3
    // dfx canister call day_1 days_to_second '(2)'
    public func days_to_second(n : Nat) : async Nat {
        return n * 60 * 60 * 24;
    };

    // Challenge 4
    // dfx canister call day_1 increment_counter '(2)'
    // dfx canister call day_1 increment_counter '(3)'
    // dfx canister call day_1 clear_counter '()'
    private var count : Nat = 0;
    public func increment_counter(n : Nat) : async Nat {
        count := count + n;
        return count;
    };
    public func clear_counter() : async Nat {
        count := 0;
        return count;
    };

    // Challenge 5
    // dfx canister call day_1 divide '(5,10)'
    // dfx canister call day_1 divide '(5,12)'
    public func divide(n : Nat, m : Nat) : async Bool {
        if (n % m == 0){
            return true;
        }else{
            return false;
        };
    };

    // Challenge 6
    // dfx canister call day_1 is_even '(2)'
    // dfx canister call day_1 is_even '(3)'
    public func is_even(n : Nat) : async Bool {
        if (n % 2 == 0){
            return true;
        }else{
            return false;
        };
    };

    // Challenge 7
    // dfx canister call day_1 sum_of_arrray '(vec{3;6;2;5})'
    public func sum_of_arrray(array : [Nat]) : async Nat {
        var sum : Nat = 0;
        for (value in array.vals()){
            sum := sum + value;
        };
        return sum;
    };

    // Challenge 8
    // dfx canister call day_1 maximum '(vec{3;6;2;5})'
    public func maximum(array : [Nat]) : async Nat {
        var max_val : Nat = 0;
        if (array.size() == 0){
            return 0;
        };
        for (value in array.vals()){
            if (max_val < value){
                    max_val := value;
            };
        };
       return max_val;
    };

    // Challenge 9
    // dfx canister call day_1 remove_from_array '(vec{3;6;2;5;2},2)'
    public func remove_from_array(array : [Nat], n : Nat) : async [Nat] {
        var filtered : [Nat] = Array.filter(array, func (val : Nat) : Bool {
            return val != n;
        });
        return filtered;
    };

    // // Challenge 10
    // // dfx canister call day_1 selection_sort '(vec{3;6;2;5})'
    public func selection_sort(array : [Nat]) : async [Nat] {
        let length = array.size();
        var sorted : [var Nat] = Array.thaw(array);
        for (j in Iter.range(0, length-1)){
            var minindex = j;
            for (i in Iter.range(j+1, length-1)){
                if (sorted[minindex] > sorted[i]){
                    minindex := i;
                };
            };
            let tmp = sorted[j];
            sorted[j] := sorted[minindex];
            sorted[minindex] := tmp;
        };
        return Array.freeze(sorted);
    };
};
