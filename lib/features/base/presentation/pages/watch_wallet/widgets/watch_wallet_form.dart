part of 'watch_wallet_widgets_imports.dart';

class WatchWalletForm extends StatelessWidget {
  final WatchWalletData walletData;

  const WatchWalletForm({Key? key, required this.walletData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: walletData.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 25,
          ),
          MyText(title: "Account Address", color: MyColors.black, size: 9),
          GenericTextField(
            fieldTypes: FieldTypes.normal,
            type: TextInputType.name,
            action: TextInputAction.next,
            hint: "Futira Wallet",
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 10),
            validate: (value) => value?.validateEmpty(),
            margin: const EdgeInsets.symmetric(vertical: 8),
            suffixIcon: Container(
              margin: const EdgeInsets.symmetric(vertical: 10,),
              child: SvgPicture.asset(Res.scan),
            ),
          ),
          const SizedBox(height: 10,),
          MyText(title: "Name", color: MyColors.black, size: 9),
          GenericTextField(
            fieldTypes: FieldTypes.normal,
            type: TextInputType.name,
            action: TextInputAction.next,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 10),
            validate: (value) => value?.validateEmpty(),
            margin: const EdgeInsets.symmetric(vertical: 8),
          ),
        ],
      ),
    );
  }
}
