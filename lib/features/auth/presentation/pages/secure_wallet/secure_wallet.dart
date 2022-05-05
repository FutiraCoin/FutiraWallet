part of 'secure_wallet_imports.dart';

class SecureWallet extends StatefulWidget {
  const SecureWallet({Key? key}) : super(key: key);

  @override
  State<SecureWallet> createState() => _SecureWalletState();
}

class _SecureWalletState extends State<SecureWallet> {
  final SecureWalletData secureData = SecureWalletData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(title: "Secure Your Wallet"),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: SvgPicture.asset(
                    Res.safe,
                    height: 120,
                    // // color: MyColors.grey,
                    // width: MediaQuery.of(context).size.width * .6,
                  ),
                ),
                MyText(
                  alien: TextAlign.center,
                    letterSpace: 1.1,
                    title:
                        "*Don’t risk losing your funds. Product your wallet by saving your secret recovery Phase in a place you trust. It’s the only way to recover your wallet. if you get locked out of the app or get a new device.",
                    color: MyColors.blackOpacity,
                    size: 10),
              ],
            ),
          ),
          SecureWalletButtons(secureData: secureData,),
        ],
      ),
    );
  }
}
