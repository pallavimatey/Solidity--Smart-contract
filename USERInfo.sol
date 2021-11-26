pragma solidity ^0.4.18;
contract Login
{
    struct UserInfo
    {
        string Password;
        string Email;
        bool Status;
    }
    
    mapping (string => UserInfo) AllUsers;
    function SetUserInfo(string _Email, string _Password) public 
    {
        AllUsers[_Email].Password = _Password;
        AllUsers[_Password].Email = _Email;
        
        if (keccak256(AllUsers[_Email].Password) == keccak256([_Email].Password))
        {
            AllUsers[_Email].Status = true;
        }
        else AllUsers[_Email].Status = false;
    }
    function GetUserInfo(string _Email, string _Password) public view returns (string, string, bool) 
    {
        return (AllUsers[_Email].Password,AllUsers[_Email].Status);
    }
}
