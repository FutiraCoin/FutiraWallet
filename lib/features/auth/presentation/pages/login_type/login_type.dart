part of 'login_type_imports.dart';

class LoginType extends StatefulWidget {
  const LoginType({Key? key}) : super(key: key);

  @override
  _LoginTypeState createState() => _LoginTypeState();
}

class _LoginTypeState extends State<LoginType> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            BuildLoginTypeHeader(),
            Spacer(),
            BuildLoginTypeActions(),
            BuildAcceptTerms(),
          ],
        ),
      ),
    );
  }
}
