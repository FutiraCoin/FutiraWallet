part of 'add_custom_wallet_imports.dart';

class AddCustomWalletData {
  GlobalKey<CustomButtonState> btnKey = GlobalKey<CustomButtonState>();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController name = TextEditingController();
  TextEditingController symbol = TextEditingController();
  TextEditingController contract = TextEditingController();
  TextEditingController imageLink = TextEditingController();

  addCustomWallet(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      btnKey.currentState!.animateForward();
      CustomWalletTableCompanion companion = CustomWalletTableCompanion(
        name: drift.Value(name.text),
        contract: drift.Value(contract.text),
        imageLink: drift.Value(imageLink.text),
        symbol: drift.Value(symbol.text),
      );
      int? result = await SetCustomWallet().call(companion);
      btnKey.currentState!.animateReverse();
      if (result != null) {
        print("==ADDED SUCCESSFULLY==");
        AutoRouter.of(context).popAndPush(ShowCustomWalletRoute());
      }
    }
  }
}
