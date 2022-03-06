part of 'verify_code_imports.dart';

class VerifyCode extends StatefulWidget {
  const VerifyCode({Key? key}) : super(key: key);

  @override
  _VerifyCodeState createState() => _VerifyCodeState();
}

class _VerifyCodeState extends State<VerifyCode> {
  final VerifyCodeData verifyCodeData = VerifyCodeData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAuthAppBar(),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          BuildHeaderTitle(
            title: "Enter your security code",
            subTitle: "In order for us to be able to reset your password, please Enter your security code below",
          ),
          BuildPinField(
            onComplete: verifyCodeData.onComplete,
            margin: const EdgeInsets.symmetric(horizontal: 0),
          ),
          VerifyCodeButton(
            verifyCodeData: verifyCodeData,
          ),
        ],
      ),
    );
  }
}
