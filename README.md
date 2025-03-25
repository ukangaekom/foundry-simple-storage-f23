## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

-   **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
-   **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
-   **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
-   **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```

### Conversion
For converting hex to number, use cast

``` cast --to-base 0x02a2```

### How to Deploy

Installing foundry forge-std for deployment on terminal

``` forge install foundry-rs/forge-std --no-commit ```

``` forge create simpleStorage --rpc-url <IP ADDRESS> --interactive ```

### How to Deploy with Script 

``` forge script scripts/<Deployment script name>.sol  --rpc-url <RPC URL> ```


``` forge script scripts/<Deployment script name>.sol --rpc-url <RPC URL> --broadcast --private-key <key> ```

Note: ``` Use keystore file or --interactive for deploying contract with real money. ```

### Encrypting Key with Cast Wallet

```cast wallet import defaultKey --interactive```
```Enter private key: <Enter you private key> ```
```Enter your password: <Enter password>```


You can check your wallet through 
``` cast wallet list ```


### Using the encrypted key in your project

```forge script script/<deployscriptname>:function --rpc-url <RPC URL>  --account defaultKey --sender <Address associated with private key> --broadcast -vvvv ```


After this you will enter your keystore password.

