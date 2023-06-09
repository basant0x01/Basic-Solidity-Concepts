### Example of Normal Inheritance in Solidity
```
// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.7;

contract MainContract{

      function func1() public pure returns (string memory) {
            return "This is MainContract";
      }
}

contract SecondContract{

      function func2() public pure returns (string memory) {
            return "This is SecondContract";
      }
}

contract ThirdContract is MainContract,SecondContract{

}
```


### Example of Multiple Inheritance in Solidity
```
// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.7;

contract cont1{

   string public whichFunction1;
   uint public num;

   function callMe1() public {
           whichFunction1 = "callMe1";
     }

   function everywhere() public virtual returns(uint) {
           num = 10;
           return num;
     }
}

contract cont2 is cont1{

   string public whichFunction2;

   function callMe2() public {
           whichFunction2 = "callMe2";
     }

   function everywhere() public virtual override returns(uint) {
           num = 20;
           return num;
     }
}

contract cont3 is cont1,cont2{

   function everywhere() public override(cont1,cont2) returns(uint) {
      num = 30;
      return num;
   }
}
```

### Example of Multiple Inheritance in Parent Constructor in Solidity
```
// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.7;

contract MainContract{

      string public name;
      uint public age;

      function func1() public pure returns (string memory) {
            return "This is MainContract";
      }

      constructor(string memory _name, uint _age){
            name = _name;
            age = _age;
      }
}

contract SecondContract {

      function func2() public pure returns (string memory) {
            return "This is SecondContract";
      }
}

// Technique(1) - Passing Fixed value to the Main constructor in Multiple Inheritance concept.
contract ThirdContract is MainContract("basant",23),SecondContract{

}

// Technique(2) - Passing dynamic value to the constructor in Multiple Inheritance concept.
contract ForthContract is MainContract,SecondContract{
       constructor(string memory _nameFromForthContract,uint _ageFromForthContract) MainContract(_nameFromForthContract,_ageFromForthContract){

     }
 }
```
