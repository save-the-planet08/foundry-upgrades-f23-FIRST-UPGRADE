// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Initializable} from "lib/openzeppelin-contracts/contracts/proxy/utils/Initializable.sol";
import {UUPSUpgradeable} from "lib/openzeppelin-contracts/contracts/proxy/utils/UUPSUpgradeable.sol";
import {OwnableUpgradeable} from "lib/openzeppelin-contracts-upgradeable/contracts/access/OwnableUpgradeable.sol";

contract BoxV1 is   UUPSUpgradeable, OwnableUpgradeable{
    uint256 internal number;

    // @custom:oz-upgrades-unsafe-allow constructor
    /*constructor(){
        _disableInitializers();
    }

    function initialize() public initializer{
        __Ownable_init();
       __UUPSUpgradeable_init();
    }*/

    function getNumber() external view returns (uint256){
        return number;
    }

    function versioin() external pure returns (uint256){
        return 1;
    }

    function _authorizeUpgrade(address newImplementation) internal override {}
}