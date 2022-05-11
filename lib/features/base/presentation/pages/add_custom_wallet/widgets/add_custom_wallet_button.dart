part of 'add_custom_wallet_widgets_imports.dart';

class AddCustomWalletButton extends StatelessWidget {
  final AddCustomWalletData walletData;

  const AddCustomWalletButton({Key? key, required this.walletData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoadingButton(
      title: "Add Wallet",
      onTap: () => walletData.addCustomWallet(context),
      btnKey: walletData.btnKey,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
    );
  }
}
