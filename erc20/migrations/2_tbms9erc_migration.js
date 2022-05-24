const TBMS9Erc20 = artifacts.require("TBMS9Erc20");

module.exports = function (deployer) {
  deployer.deploy(TBMS9Erc20);
};
