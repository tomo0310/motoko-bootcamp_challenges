import List "mo:base/List";
import Array "mo:base/Array";
import Product "custom";
import Animal "animal";

actor {

    // Challenge 1 :
    public type Product = Product.Product;
    public func fun() : async Product{
        let table : Product = {
            title = "table";
            price = 310;
        };
        return table;
    };

    // Challenge 2 :
    public type Animal = Animal.Animal;
    let lion : Animal = {
        specie = "Lion";
        energy = 1;
    };

    // Challenge 4 :
    public func create_animal_then_takes_a_break(s : Text, e : Nat): async Animal{
        let animal : Animal = {
            specie = s;
            energy = e;
        };
        return animal;
    };

    // Challenge 5 :
    public type List<T> = ?(T, List<T>);
    var animals : List<Animal> = List.nil<Animal>();

    // Challenge 6 :
    // public func push_animal(animal : Animal):async {
    //     animals := List.push(animal,animals);
    // };
    public func get_animals(): async [Animal]{
        let array: [Animal] = List.toArray<Animal>(animals);
        return array;
    };

};