// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.7;

contract LudoGame{

      enum Level{
            EASY, // Array: 0
            MEDIUM, // "" 1
            HARD // "" 2
      }

      constructor(){
            level_selected = Level.MEDIUM; // Default Level Selection is MEDIUM.
      }

      Level public level_selected;
      // DataType Visibility Variable

      function chooseEasy() public {
          level_selected = Level.EASY;
      }

      function chooseMedium() public {
          level_selected = Level.MEDIUM;
      }

      function chooseHard() public {
          level_selected = Level.HARD;
      }

 }
