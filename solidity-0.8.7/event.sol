// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.7;

contract LudoGame{

      enum Level{
            EASY, // Array: 0
            MEDIUM, // "" 1
            HARD // "" 2
      }

      event gameEventLogs(address indexed _gamePlayer, uint _timeOfAction, Level indexed _levelSelected);
      // By marking a parameter as indexed, you enable efficient filtering and searching for events based on the indexed parameter value.
      constructor(){
            level_selected = Level.MEDIUM; // Default Level Selection is MEDIUM.
      }

      Level public level_selected;
      // DataType Visibility Variable
      // And Level is now the dataType for the variable level_selected

      function chooseEasy() public {
          level_selected = Level.EASY;
          emit gameEventLogs(msg.sender,block.timestamp,level_selected);
      }
      /*
      The Output of eventLog, if we call the function [chooseEasy]
            "_gamePlayer": "0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2",
		"_timeOfAction": "1685439843",
		"_levelSelected": 0
      */

      function chooseMedium() public {
          level_selected = Level.MEDIUM;
          emit gameEventLogs(msg.sender,block.timestamp,level_selected);
      }

      function chooseHard() public {
          level_selected = Level.HARD;
          emit gameEventLogs(msg.sender,block.timestamp,level_selected);
      }

 }
