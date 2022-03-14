part of 'register_phone_imports.dart';

class RegisterPhone extends StatefulWidget {
  final RegisterData registerData;

  const RegisterPhone({Key? key, required this.registerData}) : super(key: key);

  @override
  _RegisterPhoneState createState() => _RegisterPhoneState();
}

class _RegisterPhoneState extends State<RegisterPhone> {
  @override
  Widget build(BuildContext context) {
    final name = widget.registerData.nikeName.text.split(" ").first;
    return Scaffold(
      appBar: BuildAuthAppBar(
        title: "Hello, $name",
        onBack: () => widget.registerData.goBack(),
      ),
      body: ListView(
        children: [
          LinearProgressIndicator(
            value: .66,
            color: MyColors.infoColor,
            backgroundColor: MyColors.grey.withOpacity(.2),
          ),
          RegisterPhoneForm(registerData: widget.registerData),
          BuildTermsView(registerData: widget.registerData),
          RegisterPhoneButton(registerData: widget.registerData)
        ],
      ),
    );
  }
}
