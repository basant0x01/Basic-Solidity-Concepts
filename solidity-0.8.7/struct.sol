// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.7;

contract MainContract{
      
      struct book{
            string author;
            string nameOfBook;
            uint bookId;
            bool isAvailable;
      }

      book public JaycessSchooolBooks;

      function registerBooks(string memory _authorName, string memory _bookName,uint _bookId) public {
            JaycessSchooolBooks = book(_authorName,_bookName,_bookId,true);
      }

      function JaycessSchoolsAvailableBooks() public view returns (string memory){
            return JaycessSchooolBooks.nameOfBook;
      }

 }
