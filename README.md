# EOS deb rebuild info

This repo contains information files for the [eos-deb-rebuild](https://github.com/eosswedenorg/eos-deb-rebuild) script.

The following chains are supported:

* `leap` (*default*) - AntelopeIO - [ [Node software](https://github.com/AntelopeIO/leap), [Contract Development Toolkit](https://github.com/AntelopeIO/cdt) ]

* `eos` - EOS Mainnet - [ [Node software](https://github.com/eosio/eos), [Contract Development Toolkit](https://github.com/eosio/eosio.cdt) ]

* `wax` - Worldwide Asset eXchange Chain - [ [Node software](https://github.com/worldwide-asset-exchange/wax-leap), [Contract Development Toolkit](https://github.com/worldwide-asset-exchange/wax-cdt) ]

* `wax-leap` - Worldwide Asset eXchange Chain - [ [Node software](https://github.com/cc32d9/wax-leap), [Contract Development Toolkit](https://github.com/worldwide-asset-exchange/wax-cdt) ]

* `wax-mandel` - cc32d9's Fork of WAX + mandel [ [Node software](https://github.com/cc32d9/wax-mandel) ]

* `daobet` - DAObet Chain - [ [Node software](https://github.com/DaoCasino/DAObet) ]

* `uos` - U°OS Chain - [ [Node software](https://github.com/UOSnetwork/uos) ]

* `fio` - [ [Node software](https://github.com/fioprotocol/fio), [Contract Development Toolkit](https://github.com/fioprotocol/fio.cdt) ]

* `volt` - [ [Node software](https://github.com/VOLTChain/volt)

* `mandel` - Eosio fork [ [Node software](https://github.com/eosnetworkfoundation/mandel) ]

## Install/Uninstall

run `make install` or `make uninstall`

## Debian package

Debian package can be built with the `make deb` command.

## Author

Henrik Hautakoski - [henrik@eossweden.org](mailto:henrik@eossweden.org)
