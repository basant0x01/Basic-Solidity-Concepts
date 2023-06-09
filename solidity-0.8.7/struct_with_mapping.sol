// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.7;

contract MainContract{
      
      struct book{
            string author;
            string nameOfBook;
            uint bookId;
            bool isAvailable;
      }

      book JaycessSchooolBooks; // Creating a new variable of book

      mapping(uint=>book) public JaycessSchoolBookData; // Creating a mapping for new Object

      function registerBook(uint _bookId, string memory _authorName, string memory _bookName,bool _isBookAvailable) public {
            JaycessSchoolBookData[_bookId]=book(_authorName,_bookName,_bookId,_isBookAvailable);
      }

      function isBookAvailable(uint _bookId,string memory _searchBookName) public view returns (bool) {
            string memory bookInDatabase = JaycessSchoolBookData[_bookId].nameOfBook;
            if(keccak256(abi.encodePacked(_searchBookName)) == keccak256(abi.encodePacked(bookInDatabase))){
                  return true;
            }else{
                  return false;
            }
      }

 }
