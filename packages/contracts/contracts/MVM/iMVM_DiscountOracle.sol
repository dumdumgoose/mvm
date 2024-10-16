// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

interface iMVM_DiscountOracle {
    function setDiscount(uint256 _discount) external;

    function setMinL2Gas(uint256 _minL2Gas) external;

    function setWhitelistedXDomainSender(address _sender, bool _isWhitelisted) external;

    function isXDomainSenderAllowed(address _sender) external view returns (bool);

    function setAllowAllXDomainSenders(bool _allowAllXDomainSenders) external;

    function getMinL2Gas() external view returns (uint256);

    function getDiscount() external view returns (uint256);

    function processL2SeqGas(address sender, uint256 _chainId) external payable;

    function withdrawToSeq(uint256 _amount, uint256 _chainId) external;
}
