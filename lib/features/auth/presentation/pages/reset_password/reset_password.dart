part of'reset_password_imports.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final ResetPasswordData resetPasswordData=ResetPasswordData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAuthAppBar(),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        children: [
        ResetPasswordText(),
          ResetPasswordForm(resetPasswordData: resetPasswordData),
          ResetPasswordButton(resetPasswordData: resetPasswordData,),
      ],),
    );
  }
}
