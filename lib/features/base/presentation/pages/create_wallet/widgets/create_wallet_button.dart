part of 'create_wallet_widgets_imports.dart';

class CreateWalletButton extends StatelessWidget {
  final CreateWalletData createData;

  const CreateWalletButton({Key? key, required this.createData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoadingButton(
      title: "Create Wallet",
      onTap: (){},
      btnKey: createData.btnKey,
      margin: const EdgeInsets.symmetric(vertical: 15),
    );
  }
}
