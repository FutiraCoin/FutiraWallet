part of 'add_custom_wallet_imports.dart';

class AddCustomWallet extends StatelessWidget {
  const AddCustomWallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AddCustomWalletData walletData = AddCustomWalletData();
    return Scaffold(
      appBar: DefaultAppBar(title: "AddCustomWallet"),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              children: [
                AddCustomWalletForm(
                  walletData: walletData,
                ),
              ],
            ),
          ),
          AddCustomWalletButton(
            walletData: walletData,
          ),
        ],
      ),
    );
  }
}
