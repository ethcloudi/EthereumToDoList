pragma solidity ^0.5.0;

contract TodoList {

    /** Declare state variables - any data stored in this variable is written to storage on the blockchain */
    uint public taskCount = 0;
/** /** Define a struct data type */
     struct Task {
        uint id; //uint = unasigned integer, a non-negative number
        string content; // text of the task in the list
        bool completed; // checkbox status of the list
    } 

    /** Mapping in solidity: creates key vvalue pairs that get stored on the blockchain */
    mapping(uint => Task) public tasks;
    

    /** Function to create tasks */
    function createTask(string memory _content) public { // allow the function to accept one argument called _content, we specify the type is a string and will persis
        taskCount ++;
        tasks[taskCount] = Task(taskCount, _content, false);
    }  

   constructor () public {
    createTask("Check out dappuniversity.com");
   }
   
    
}