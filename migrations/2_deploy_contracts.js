/** Migrations are used to change the state of the blockchain.
This is the second tast in the migration directory. 
The purpose of this file is to deploy the smart contract to out local blockchain - truffle.  */

var TodoList = artifacts.require("./ToDoList.sol");

module.exports = function(deployer) {
    deployer.deploy(TodoList);
};
