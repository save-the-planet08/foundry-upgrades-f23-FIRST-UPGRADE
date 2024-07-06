// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Script} from "forge-std/Script.sol";
import {DevOpsTools} from "lib/foundry-devops/src/DevOpsTools.sol";
import {BoxV2} from "../src/BoxV2.sol";
import {BoxV1} from "../src/BoxV1.sol";

contract UpgradeBox is Script{
    function run() external returns (address){
        address mostRencentlyDeplyed = DevOpsTools.get_most_recent_deployment(
            "ERC1967Proxy",block.chainid
        );
        vm.startBroadcast();
        BoxV2 newBox = new BoxV2();
        vm.startBroadcast();
        address proxy = upgradeBox(mostRencentlyDeplyed, address(newBox));
        return proxy;
    }

    function upgradeBox(address proxyAddress, address newBox) public returns (address){
        vm.startBroadcast();
        BoxV1 proxy = BoxV1(proxyAddress);
        proxy.upgradeToAndCall(address(newBox), new bytes(0));
        vm.stopBroadcast();
        return address(proxy);
    }
}