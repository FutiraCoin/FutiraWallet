

import 'package:flutter_tdd/core/helpers/custom_toast.dart';
import 'package:flutter_tdd/core/service/address_service.dart';

class MnemonicsHelper {

  final AddressService addressService;

  MnemonicsHelper(this.addressService);

  late String mnemonic;

  
  void generateMnemonic() {
     mnemonic = addressService.generateMnemonic();
  }

  Future<bool> confirmMnemonic(String mnemonic) async {
    if (this.mnemonic != mnemonic) {
      CustomToast.showSimpleToast(msg: 'Invalid mnemonic, please try again.');
      return false;
    }
    await addressService.setupFromMnemonic(mnemonic);

    return true;
  }

  Future<bool> importFromMnemonic(String mnemonic) async {
    try {
      if (_validateMnemonic(mnemonic)) {
        final normalisedMnemonic = _mnemonicNormalise(mnemonic);
        await addressService.setupFromMnemonic(normalisedMnemonic);
        return true;
      }
    } catch (e) {
      CustomToast.showSimpleToast(msg: e.toString());
    }
    CustomToast.showSimpleToast(msg: 'Invalid mnemonic, it requires 12 words.');

    return false;
  }

  Future<bool> importFromPrivateKey(String privateKey) async {
    try {
      await addressService.setupFromPrivateKey(privateKey);
      return true;
    } catch (e) {
      CustomToast.showSimpleToast(msg: e.toString());
    }
    CustomToast.showSimpleToast(msg: 'Invalid private key, please try again.');

    return false;
  }

  String _mnemonicNormalise(String mnemonic) {
    return _mnemonicWords(mnemonic).join(' ');
  }

  List<String> _mnemonicWords(String mnemonic) {
    return mnemonic
        .split(' ')
        .where((item) => item.trim().isNotEmpty)
        .map((item) => item.trim())
        .toList();
  }

  bool _validateMnemonic(String mnemonic) {
    return _mnemonicWords(mnemonic).length == 12;
  }

}