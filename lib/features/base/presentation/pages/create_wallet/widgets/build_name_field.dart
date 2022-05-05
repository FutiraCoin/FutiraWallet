part of'create_wallet_widgets_imports.dart';

class BuildNameField extends StatelessWidget {
  final CreateWalletData createData;
  const BuildNameField({Key? key,required this.createData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: createData.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyText(title: "Wallet Name", color: MyColors.black, size: 11),
          GenericTextField(
            fieldTypes: FieldTypes.normal,
            type: TextInputType.name,
            action: TextInputAction.done,
            contentPadding: const EdgeInsets.symmetric(vertical: 0),
            validate: (value) => value?.validateEmpty(),
            margin: const EdgeInsets.symmetric(vertical: 5),
          ),
        ],
      ),
    );
  }
}

