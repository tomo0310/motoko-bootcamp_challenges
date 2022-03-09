import Array "mo:base/Array";
import Text "mo:base/Text";

actor {

    // Challenge 1 :
    // dfx canister call day_3 swap '(vec{3;6;2;5},2,3)'
    private func swap( array : [var Nat], j : Nat, i : Nat): [var Nat]{
        var tmp = array[j];
        array[j] := array[i];
        array[i] := tmp;
        return array;
    };

    // Challenge 2 :
    // dfx canister call day_3 init_count '(5)'
    public func init_count(n : Nat): async [Nat]{
        return Array.tabulate(n,func(a : Nat) : Nat{
            return a;
        });
    };

    // Challenge 3 :
    // dfx canister call day_3 seven '(vec{3;6;7;5})'
    public func seven(array : [Nat]): async Text{

        for (value in array.vals()){
            if (value == 7){
                return "Seven is found";
            };
        };
        return "Seven not found";
    };

    // Challenge 4 :
    // dfx canister call day_3 nat_opt_to_nat '(1,3)'
    public func nat_opt_to_nat(n : ?Nat, m : Nat): async ?Nat {
        if (n==null){
            return ?m;
        };
        return n;
    };

    // // Challenge 5 :
    // dfx canister call day_3 day_of_the_week '(1)'
    public func day_of_the_week(n : Nat): async ?Text{
        let days : [Text] = ["Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"];
        if(1 <= n){
            if(n<=7){
                return ?days[n-1];
            };
        };
        return null;
    };

    // Challenge 6 :
    // dfx canister call day_3 populate_array '(vec{3;6;5})'
    public func populate_array(array : [?Nat]) : async [Nat]{
        return Array.map(array,func(a:?Nat):Nat{
            switch(a){
                case(null){
                    return 0;
                };
                case(?a){
                    return a;
                };
            };
        });
    };
    // Challenge 7 :
    public func sum_of_array(array : [Nat]): async Nat{
        return 0;
    };
    // Challenge 8 :
    public func squared_array(array : [Nat]): async [Nat]{
        return array;
    };
    // Challenge 9 :
    public func increase_by_index(array : [Nat]): async [Nat]{
        return array;
    };
    // Challenge 10 :
    // public func contains<A>(array : [A]){
    // };
};