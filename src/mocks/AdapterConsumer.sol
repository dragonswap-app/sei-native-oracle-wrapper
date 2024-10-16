// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {SeiNativeOracleAdapter} from "../SeiNativeOracleAdapter.sol";

contract AdapterConsumer {
    function getExchangeRate(string calldata denom, bool applyDecimals)
        external
        view
        returns (uint256 rate, uint256 dec)
    {
        return SeiNativeOracleAdapter.getExchangeRate(denom, applyDecimals);
    }

    function getExchangeRates(bool applyDecimals) external view returns (uint256[] memory rate, uint256[] memory dec) {
        return SeiNativeOracleAdapter.getExchangeRates(applyDecimals);
    }

    function getOracleTwap(string calldata denom, uint64 lookbackSeconds, bool applyDecimals)
        external
        view
        returns (uint256 rate, uint256 dec)
    {
        return SeiNativeOracleAdapter.getOracleTwap(denom, lookbackSeconds, applyDecimals);
    }

    function getOracleTwaps(uint64 lookbackSeconds, bool applyDecimals) external view returns (uint256[] memory rate, uint256[] memory dec) {
        return SeiNativeOracleAdapter.getOracleTwaps(lookbackSeconds, applyDecimals);
    }

}
