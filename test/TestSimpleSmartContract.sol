pragma solidity >=0.4.22 <0.9.0;
import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/SimpleSmartContract.sol";

contract TestSimpleConstract{
    SimpleSmartContract scc = SimpleSmartContract(DeployedAddresses.SimpleSmartContract());

    function testConstructor_and_getName() public{
        string memory returnedName = scc.getName();
        Assert.equal(returnedName,'my name', "getName fuction should return 'my name'.");
    }

     function testSetName() public{
         scc.setName('this name');
         string memory newName = scc.getName();
        Assert.equal(newName,'this name', "setName fuction should return 'new name'.");
    }
    
}