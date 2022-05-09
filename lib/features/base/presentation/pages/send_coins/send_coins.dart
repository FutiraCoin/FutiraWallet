part of 'send_coins_imports.dart';

class SendCoins extends StatefulWidget {
  const SendCoins({Key? key}) : super(key: key);

  @override
  _SendCoinsState createState() => _SendCoinsState();
}

class _SendCoinsState extends State<SendCoins> {
  final SendCoinsData sendCoinsData = SendCoinsData();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var wallet = context.watch<WalletCubit>().state.wallet;
    return Scaffold(
      appBar: DefaultAppBar(title: "Send"),
      body: GestureDetector(
        onTap: ()=> FocusScope.of(context).requestFocus(FocusNode()),
        child: Form(
          key: sendCoinsData.formKey,
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 20),
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 30),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: MyColors.primary,
                    borderRadius: BorderRadius.circular(10)),
                child: MyText(
                  title: wallet.address ?? "",
                  color: MyColors.white,
                  size: 13,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              GenericTextField(
                fieldTypes: FieldTypes.rich,
                type: TextInputType.multiline,
                action: TextInputAction.newline,
                validate: (value) => value?.validateEmpty(),
                controller: sendCoinsData.address,
                label: "Receiver Address",
              ),
              GenericTextField(
                fieldTypes: FieldTypes.normal,
                type: TextInputType.number,
                action: TextInputAction.done,
                validate: (value) => value?.validateEmpty(),
                controller: sendCoinsData.amount,
                label: "Amount",
                margin: EdgeInsets.symmetric(vertical: 15),
                onSubmit: () => sendCoinsData.setTransferCoins(context),
              ),
              DefaultButton(
                title: "Send",
                onTap: ()=> sendCoinsData.setTransferCoins(context),
                margin: EdgeInsets.all(20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
