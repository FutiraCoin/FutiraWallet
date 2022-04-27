part of 'login_imports.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final LoginData loginData = LoginData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: BuildAuthAppBar(),
      body: GestureDetector(
        onTap: FocusScope.of(context).unfocus,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          children: [
            MyText(
              title: "Welcome back",
              color: MyColors.black,
              size: 22,
            ),
            SizedBox(height: 20),
            BuildLoginForm(loginData: loginData),
            BuildLoginButton(loginData: loginData),
            BuildForgetPasswordView(),
            Divider(height: 30),
            BuildLoginSocialMedia(loginData: loginData),
          ],
        ),
      ),
    );
  }
}
