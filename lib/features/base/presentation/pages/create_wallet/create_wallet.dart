part of 'create_wallet_imports.dart';

class CreateWallet extends StatefulWidget {
  const CreateWallet({Key? key}) : super(key: key);

  @override
  State<CreateWallet> createState() => _CreateWalletState();
}

class _CreateWalletState extends State<CreateWallet> {
  final CreateWalletData createData =CreateWalletData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(title: "Create Wallet"),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BuildNameField(createData: createData),
            RecoveryPhraseCard(),
            Spacer(),
            CreateWalletButton(createData: createData),
          ],
        ),
      ),
    );
  }
}
