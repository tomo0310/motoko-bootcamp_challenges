module{

    // Challenge 2 :
    public type Animal = {
        specie : Text;
        energy :  Nat
    };

    // Challenge 3 :
    public func animal_sleep(animal : Animal): Animal{
        //animal.energy : Nat += 10;
        let retAnimal : Animal = {
            specie = animal.specie;
            energy = animal.energy + 10;
        };
        return retAnimal;
    };

    //
}