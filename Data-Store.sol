pragma solidity ^0.5.0;

contract Crud {
    struct User {
        uint id;
        string Email;
        string Password;
    }
    User[] public users;
    uint public nextId = 1;
    
    
    function create(string memory Email, string memory Password) public  {
        users.push(User(nextId, Email, Password));
        nextId++;
    }
    
    function Insert(uint id,string memory Email, string memory Password) public  {
        users.push(User(id, Email, Password));
        nextId++;
    }


    
    function read(uint id) view public returns(uint , string memory, string memory) {
        uint i = find(id);
        return(users[i].id, users[i].Email, users[i].Password);
    }
    
    
    function update(uint id, string memory Email, string memory Password) public {
        uint i = find(id);
        users[i].Email = Email;
        users[i].Password = Password;
    }
    
    function destroy(uint id) public {
        uint i = find(id);
        delete users[i];
    }
    
    function find(uint id) view internal returns(uint) {
        for(uint i=0;i < users.length;i++) {
            if(users[i].id==id) {
                return i;
            }
        }
        revert("User does not exist");
    }
    
}
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    
