part of 'watch_wallet_imports.dart';

class WatchWallet extends StatefulWidget {
  const WatchWallet({Key? key}) : super(key: key);

  @override
  State<WatchWallet> createState() => _WatchWalletState();
}

class _WatchWalletState extends State<WatchWallet> {
  final WatchWalletData walletData = WatchWalletData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
          title:"Watch Wallet",),
      body: Column(
        children: [
          Flexible(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              children: [
                MyText(
                  alien: TextAlign.center,
                  title:
                  "You can only view your wallet balance and transaction info anytime in the watch wallet.",
                  color: MyColors.primary,
                  size: 10,
                  letterSpace: 1.1,
                ),
                WatchWalletForm(walletData:walletData),

              ],
            ),
          ),
           WatchWalletButton(walletData: walletData,),
        ],
      ),
    );
  }
}
