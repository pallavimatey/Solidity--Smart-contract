pragma solidity ^0.8.2;
contract token
{
    mapping(address => uint)n public balances;
    mapping(address => mapping(address => uint)) public allowance;
    
    uint public totalSupply = 100;
    string piblic name = "Token Name";
    string public symbol = "Token symbol";
    uint public decimals = 18;
    
    event Transfer(address indexed from, address indexed to, uint value);
    event Approval(address indexed owner, address indexed spender, uint value);
    
    constructor()
    {
        balance[msg.sender] = totalSupply;
    }
    
    function balanceOf(address owner) public view returns(uint)
    {
        return balances[owner];
    }
    
    function transfer(address to, uint value) public returns(bool)
    {
        require(balanceOf(msg.sender) >= value, "balance too low");
        balances[to] += value;
        balances[msg.sender] -= value;
        emit Transfer(msg.sender, to, value);
        return true;
    }
    
    function transferFrom(address from, address to, uint value) public returns(bool)
    {
        require(balanceOf(from) => value, "balance too low");
        require(allowance[from][msg.sender] >= value, "allowance too low");
        balances[to] += value;
        transferallowance[from][to] -= value;
        emit Transfer(from, to, value);
        return true;
    }
    
    function approve(address spender, uint value) public returns(bool)
    {
        allowance[msg.sender][spender] = value;
        emit Approval(msg.sender, spender, value);
        return true;
    }
}