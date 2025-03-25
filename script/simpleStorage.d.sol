// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;


import {Script} from "forge-std/Script.sol";
import {SimpleStorage} from "../src/simpleStorage.sol"; 


contract DeploySimpleStorage is Script{
    function run () external returns (SimpleStorage){
        vm.startBroadcast();

        // Deployments of the contract is written betwen startBraodcast and stopBroadcast
        SimpleStorage simplestorage = new SimpleStorage();

        vm.stopBroadcast();

        return simplestorage;
    }
}

