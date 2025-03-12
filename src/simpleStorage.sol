pragma solidity ^0.8.25;




contract SimpleStorage{

    uint256 myFavoriteNumber;


    struct Person{
        uint256 favouriteNumber;
        string name;
    }


    mapping(string => uint256) public NameofPeople;

    Person[] public listofPeople;

    function store(uint256 _favourite_number) public {

        myFavoriteNumber = _favourite_number;

    }

    function retrieve() public view returns (uint256){

        return myFavoriteNumber;

    }

    function addPerson(string calldata _name, uint256 _favourite_number) public {

        NameofPeople[_name] = _favourite_number;

        listofPeople.push(Person(_favourite_number, _name));



    }
}