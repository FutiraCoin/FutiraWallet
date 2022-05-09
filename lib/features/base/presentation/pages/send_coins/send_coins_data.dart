part of 'send_coins_imports.dart';

class SendCoinsData {

  final GlobalKey<FormState> formKey = GlobalKey();
  final TextEditingController address = TextEditingController();
  final TextEditingController amount = TextEditingController();

  setTransferCoins(BuildContext context)async{
    if (formKey.currentState!.validate()) {
      var wallet = context.read<WalletCubit>().state.wallet;
      address.text = "0xf5cbB0CcA6dCB267BC458C6372A13A999Bf7fe2A";
      await WalletTransferHandler.transfer(wallet.network, address.text, amount.text);
    }

  }

}