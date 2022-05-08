import 'network_type.dart';

class Wallet {

  factory Wallet.init()=> Wallet(
    ethBalance: BigInt.from(0),
    loading: false,
    address: "",
    privateKey: "",
    network: NetworkType.BSC,
    tokenBalance: BigInt.from(0),
  );

  NetworkType network;

  String? address;

  String? privateKey;

  BigInt tokenBalance;

  BigInt ethBalance;

  bool loading;

  Wallet({
    required this.network,
    this.address,
    this.privateKey,
    required this.tokenBalance,
    required this.ethBalance,
    required this.loading,
  });
}
