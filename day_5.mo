import HashMap "mo:base/HashMap";
import Principal "mo:base/Principal";
actor {

    // let anonymous_principal : Principal = Principal.fromText("2vxsx-fae");
    // let users = HashMap.HashMap<Principal, Text>(0, Principal.equal, Principal.hash);
    // users.put(anonymous_principal, "This is the anonymous principal");

    // public func test() : async ?Text {
    //     return(users.get(Principal.fromText("2vxsx-fae")));
    // };

    // Challenge 1
    public func is_anonymous() : async Bool {
        return true;
    };

    // Challenge 2
    let anonymous_principal : Principal = Principal.fromText("2vxsx-fae");
    let favoriteNumber = HashMap.HashMap<Principal, Nat>(0, Principal.equal, Principal.hash);
    favoriteNumber.put(anonymous_principal, 0);

    // Challenge 3
    // public func add_favorite_number(n : Nat) : async () {
    // };
    public func show_favorite_number() : async ?Nat {
        let n : Nat = 0;
        return ?n;
    };

    // Challenge 4
    public func add_favorite_number(n : Nat) : async () {
    };

    // Challenge 5
    public func update_favorite_number(n : Nat) : async () {
    };

    public func delete_favorite_number(n : Nat) : async () {
    };

    // Challenge 6
    public func deposit_cycles() : async Nat {
        return 0;
    };

    // Challenge 7
    public func withdraw_cycles() : async Nat {
        return 0;
    };

    // Challenge 8
    private var count : Nat = 0;
    public func increment_counter(n : Nat) : async Nat {
        count := count + n;
        return count;
    };
    public func clear_counter() : async Nat {
        count := 0;
        return count;
    };

    // Challenge 9

    // Challenge 10



};