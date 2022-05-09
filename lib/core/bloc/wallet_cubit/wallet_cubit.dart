import 'package:bloc/bloc.dart';
import 'package:flutter_tdd/core/helpers/custom_toast.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/models/network_type.dart';
import 'package:flutter_tdd/core/models/wallet.dart';
import 'package:flutter_tdd/core/service/address_service.dart';
import 'package:flutter_tdd/core/service/configuration_service.dart';
import 'package:flutter_tdd/core/service/contract_locator.dart';
import 'package:meta/meta.dart';
import 'package:web3dart/web3dart.dart' as web3;

part 'wallet_state.dart';

class WalletCubit extends Cubit<WalletState> {
  WalletCubit() : super(WalletInitial());

  // final AddressService _addressService;
  // final ConfigurationService _configurationService;
  // final ContractLocator _contractLocator;

  Future<void> initialise() async {
    final entropyMnemonic = getIt<ConfigurationService>().getMnemonic();
    final privateKey = getIt<ConfigurationService>().getPrivateKey();

    if (entropyMnemonic != null && entropyMnemonic.isNotEmpty) {
      _initialiseFromMnemonic(state.wallet.network, entropyMnemonic);
      return;
    }
    if (privateKey != null && privateKey.isNotEmpty) {
      _initialiseFromPrivateKey(state.wallet.network, privateKey);
      return;
    }
    CustomToast.showSimpleToast(msg: 'Wallet could not be initialised.');
    throw Exception('Wallet could not be initialised.');
  }

  Future<void> _initialiseFromMnemonic(
      NetworkType network, String entropyMnemonic) async {
    final mnemonic = getIt<AddressService>().entropyToMnemonic(entropyMnemonic);
    final privateKey = await getIt<AddressService>().getPrivateKey(mnemonic);
    final address = await getIt<AddressService>().getPublicAddress(privateKey);

    state.wallet.network = network;
    state.wallet.address = address.toString();
    state.wallet.privateKey = privateKey;
    emit(WalletUpdateState(state.wallet));
    await refreshBalance();
  }

  Future<void> _initialiseFromPrivateKey(
      NetworkType network, String privateKey) async {
    final address = await getIt<AddressService>().getPublicAddress(privateKey);
    state.wallet.network = network;
    state.wallet.address = address.toString();
    state.wallet.privateKey = privateKey;
    emit(WalletUpdateState(state.wallet));
    await refreshBalance();
  }

  Function()? listenTransfers(String? address, NetworkType network) {
    if (address == null || address.isEmpty) {
      return null;
    }

    final subscription = getIt<ContractLocator>()
        .getInstance(network)
        .listenTransfer((from, to, value) async {
      final fromMe = from.toString() == address;
      final toMe = to.toString() == address;

      if (!fromMe && !toMe) {
        return;
      }

      print('======= balance updated =======');

      await refreshBalance();
    });

    return subscription.cancel;
  }

  Future<void> changeNetwork(NetworkType network) async {
    state.wallet.network = network;
    emit(WalletUpdateState(state.wallet));
    await refreshBalance();
  }

  Future<void> refreshBalance() async {
    if (state.wallet.address?.isEmpty ?? true) {
      return;
    }

    final contractService = getIt<ContractLocator>().getInstance(state.wallet.network);

    print("=====> ${contractService.contract.abi.functions
        .fold("", (String prev, e) => prev + " - "+ e.name)}");

    final tokenBalance = await contractService
        .getTokenBalance(web3.EthereumAddress.fromHex(state.wallet.address!));

    contractService
        .getTokenDecimal(web3.EthereumAddress.fromHex(state.wallet.address!));

    contractService
        .getTokenSymbol(web3.EthereumAddress.fromHex(state.wallet.address!));

    final ethBalance = await contractService
        .getEthBalance(web3.EthereumAddress.fromHex(state.wallet.address!));
    state.wallet.ethBalance = ethBalance.getInWei;
    state.wallet.tokenBalance = tokenBalance;
    emit(WalletUpdateState(state.wallet));
  }

  Future<void> resetWallet() async {
    await getIt<ConfigurationService>().setMnemonic(null);
    await getIt<ConfigurationService>().setupDone(false);
  }

  String? getPrivateKey() {
    return getIt<ConfigurationService>().getPrivateKey();
  }

}
