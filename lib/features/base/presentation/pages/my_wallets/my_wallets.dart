part of 'my_wallets_imports.dart';

class MyWallets extends StatefulWidget {
  const MyWallets({Key? key}) : super(key: key);

  @override
  State<MyWallets> createState() => _MyWalletsState();
}

class _MyWalletsState extends State<MyWallets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(title: "My Wallets"),
      body: ListView(
        children: [
          BuildWalletCard(),
          BuildAddWallet(),
        ],
      ),
    );
  }
}
