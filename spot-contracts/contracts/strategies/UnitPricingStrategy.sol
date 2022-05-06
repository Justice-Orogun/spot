// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.4;
import { ITranche } from "../_interfaces/buttonwood/ITranche.sol";
import { IPricingStrategy } from "../_interfaces/IPricingStrategy.sol";

/*
 *  @title UnitPricingStrategy
 *
 *  @notice Every tranche has a price of ONE.
 *
 *  @dev This is a reasonable assumption for "non-equity" tranches.
 *
 */
contract UnitPricingStrategy is IPricingStrategy {
    uint8 private constant DECIMALS = 8;
    uint256 private constant ONE = 10**DECIMALS;

    /// @inheritdoc IPricingStrategy
    // solhint-disable-next-line no-unused-vars
    function computeTranchePrice(ITranche t) external pure override returns (uint256) {
        return ONE;
    }

    /// @inheritdoc IPricingStrategy
    function decimals() external pure override returns (uint8) {
        return DECIMALS;
    }
}
