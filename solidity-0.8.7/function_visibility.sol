// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.7;

contract functionVisibilities{
    // There are 4 types of visibilites in Solidity: public, private, internal, external


    // In public visibility, functions can be called: Outside, Within, Derived(Inheritance), Other(New Contract) or
    // using OOP (New Object) 
    function fun1() public pure returns (string memory) {
        return "This is public visibility - fun1";
    }
    
    // In private visibility, functions can be called: Only Within the contract( From One function to Another)
     function fun2() private pure returns (string memory) {
        return "This is private visibility - fun2";
    }

    // In Internal visibility, functions can be called: Within & Derived
     function fun3() internal pure returns (string memory) {
        return "This is internal visibility - fun3";
    }

    // In external visibility, functions can be called using: Outside, Derived and Other method
     function fun4() external pure returns (string memory) {
        return "This is external visibility - fun4";
    }

    // Here function 1 can be called within the contract by creating different function
    function withInExample() public pure returns (string memory){
        string memory var1 = fun3(); // Change fun1() to fun2,3,4 and you will notice the accessibility.
        return var1;
    }

}

// Here we are calling the different methods using Inheritance concept
// We are calling all the properties of functionVisibilities into functionVisibilitiesNext contract
// And this is the example of (Derived)
contract functionVisibilitiesNext is functionVisibilities{
    string public Var2 = fun1(); // If you change the contract to functionVisibilitiesNext, you will notice
    // Var2 is now public and accessing the value from fun1(). 
    // For more clearance, change the fun1() to 2,3,4.
}

// Here we are creating a new Object of previous functionVisibilities contract
// and calling the functions from different contract using OOP concept.
contract anotherContract{
    functionVisibilities AnotherfunVis = new functionVisibilities();
    string public Var3 = AnotherfunVis.fun1(); // Change the fun1() to other 2,3,4 for clearance.
}
