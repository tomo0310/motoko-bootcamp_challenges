import HashMap "mo:base/HashMap";
import Principal "mo:base/Principal";
import Result "mo:base/Result";

actor {
    // Challenge 1
    //ver TokenIndex : Nat;
    type Error = {
        #OK;
        #FileNotFound;
    };

    // // Challenge 2
    // let registry = HashMap.HashMap<TokenIndex,Principal>(0, Principal.equal, Principal.hash);

    // Challenge 3
    public type Result = Result.Result<(), Text>;
    public shared ({caller}) func register() : async Result {
        // if(Principal.isAnonymous(caller)){
        //     return #err("You need to be authenticated to register");
        // } else {
        //     return #ok;
        // }
        return #ok;
    };

    // Challenge 4
    public func transfer(to : Principal, tokenIndex : Nat) : async Result {
        let result : Result = #ok;
        return result;
    };

    // Challenge 5
    // Challenge 6
    // Challenge 7
    // Challenge 8
    // Challenge 9
    // Challenge 10
};