import 'dart:async';
import 'dart:math';

import 'package:flutter_tdd/core/helpers/custom_toast.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/loading_helper.dart';
import 'package:flutter_tdd/core/models/network_type.dart';
import 'package:flutter_tdd/core/service/configuration_service.dart';
import 'package:web3dart/credentials.dart';

import '../service/contract_locator.dart';

class WalletTransferHandler {

 static Future<bool> transfer(NetworkType network, String to, String amount) async {
    final completer = Completer<bool>();
    final privateKey = getIt<ConfigurationService>().getPrivateKey();
    getIt<LoadingHelper>().showLoadingDialog();
    try {
      await getIt<ContractLocator>().getInstance(network).send(
        privateKey!,
        EthereumAddress.fromHex(to),
        BigInt.from(double.parse(amount) * pow(10, 18)),
        onTransfer: (from, to, value) {
          completer.complete(true);
        },
        onError: (ex) {
          CustomToast.showSimpleToast(msg: ex.toString());
          completer.complete(false);
        },
      );
    } catch (ex) {
      CustomToast.showSimpleToast(msg: ex.toString());
      completer.complete(false);
    }
    getIt<LoadingHelper>().dismissDialog();
    return completer.future;
  }
}
