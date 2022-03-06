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
          VerifyCodeText(),
          const SizedBox(
            height: 30,
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
