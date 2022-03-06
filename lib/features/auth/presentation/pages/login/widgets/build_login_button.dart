part of 'login_widgets_imports.dart';

class BuildLoginButton extends StatelessWidget {
  final LoginData loginData;

  const BuildLoginButton({Key? key, required this.loginData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoadingButton(
      title: "Login",
      onTap: () {},
      btnKey: loginData.btnKey,
      margin: EdgeInsets.only(top: 40),
      fontSize: 16,
      height: 55
    );
  }
}
