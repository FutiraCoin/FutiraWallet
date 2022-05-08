part of 'wallet_cubit.dart';

@immutable
abstract class WalletState {
  final Wallet wallet;

  WalletState(this.wallet);
}

class WalletInitial extends WalletState {
  WalletInitial() : super(Wallet.init());
}


class WalletUpdateState extends WalletState {
  WalletUpdateState(Wallet wallet) : super(wallet);
}
