import 'package:flutter_tdd/core/service/address_service.dart';
import 'package:flutter_tdd/core/service/contract_locator.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../service/configuration_service.dart';
import 'di.config.dart';
import 'mnemonics_helper.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies() async => $initGetIt(getIt);

Future<void> createProviders() async {
  final sharedPrefs = await SharedPreferences.getInstance();

  final configurationService = ConfigurationService(sharedPrefs);

  final addressService = AddressService(configurationService);

  final contractLocator = await ContractLocator.setup();

  final mnemonicsHelper = await MnemonicsHelper(addressService);

  getIt.registerSingleton(sharedPrefs);
  getIt.registerSingleton(configurationService);
  getIt.registerSingleton(addressService);
  getIt.registerSingleton(contractLocator);
  getIt.registerSingleton(mnemonicsHelper);
}