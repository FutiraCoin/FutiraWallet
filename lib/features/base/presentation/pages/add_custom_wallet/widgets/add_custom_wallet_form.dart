part of 'add_custom_wallet_widgets_imports.dart';

class AddCustomWalletForm extends StatelessWidget {
  final AddCustomWalletData walletData;
  const AddCustomWalletForm({Key? key, required this.walletData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: walletData.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: MyText(title: "name", color: MyColors.black, size: 12),
          ),
          GenericTextField(
            hint: "add a name",
            fillColor: Colors.white,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.next,
            controller: walletData.name,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            validate: (value) => value!.validateEmpty(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: MyText(title: "symbol", color: MyColors.black, size: 12),
          ),
          GenericTextField(
            hint: "add a symbol",
            fillColor: Colors.white,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.next,
            controller: walletData.symbol,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            validate: (value) => value!.validateEmpty(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: MyText(title: "contract", color: MyColors.black, size: 12),
          ),
          GenericTextField(
            hint: "add a contract",
            fillColor: Colors.white,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.next,
            controller: walletData.contract,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            validate: (value) => value!.validateEmpty(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              children: [
                MyText(title: "Image link", color: MyColors.black, size: 12),
                const SizedBox(
                  width: 5,
                ),
                MyText(title: "(optional)", color: MyColors.black, size: 12),
              ],
            ),
          ),
          GenericTextField(
            hint: "add Image link",
            fillColor: Colors.white,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.next,
            controller: walletData.imageLink,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            validate: (value) => value!.noValidate(),
          ),
        ],
      ),
    );
  }
}
