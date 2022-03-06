part of'forget_password_imports.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final ForgetPasswordData forgetPasswordData = ForgetPasswordData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAuthAppBar(),
      body: ListView(padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          children: [
            BuildHeaderTitle(
              title: "Reset your password",
              subTitle: "In order for us to be able to reset your password, please Enter your phone number below",
            ),
            BuildForgetForm(forgetPasswordData: forgetPasswordData,),
            BuildForgetPasswordButton(forgetPasswordData: forgetPasswordData,),
          ],
      ),
    );
  }
}
