pragma solidity ^0.4.20;
contract TRC20 {
    string public name;
    string public symbol;
    uint8 public decimals=8;
    uint256 public totalSupply;
    
    mapping (address => uint256) public balanceOf;
    
    uint initialSupply = 1000000;
    string tokenName = "ABC";
    string tokenSymbol = "XYZ";
    
    constructor() public{
        
    totalSupply = initialSupply*10*uint256(decimals);
    balanceOf[msg.sender] = totalSupply;
    name = tokenName;
    symbol = tokenSymbol;
    }
    
    function _transfer(address _from, address _to, uint _value) internal {
        require(_to!=0x0);
        require(balanceOf[_from] >=_value);
        require(balanceOf[_to] + _value >= balanceOf[_to]);
        
        uint previousBalance = balanceOf[_from] + balanceOf[_to];
        
        
    }
    function transfer(address _to, uint256 _value) public returns (bool success) {
        _transfer(msg.sender, _to, _value);
        return true;
    }
}