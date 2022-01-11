/**
    * @description      : 
    * @author           : Michael
    * @group            : 
    * @created          : 11/01/2022 - 22:02:45
    * 
    * MODIFICATION LOG
    * - Version         : 1.0.0
    * - Date            : 11/01/2022
    * - Author          : Michael
    * - Modification    : 
**/
const Migrations = artifacts.require("Migrations");
const Todolist = artifacts.require("Todolist");

module.exports = function (deployer) {
  deployer.deploy(Migrations);
  deployer.deploy(Todolist);
};
