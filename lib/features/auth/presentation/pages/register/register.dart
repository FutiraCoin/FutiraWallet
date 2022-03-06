part of 'register_imports.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final RegisterData registerData = RegisterData();
  @override
  void initState() {
    registerData.pageController=PageController(initialPage: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: PageView(
        scrollDirection: Axis.horizontal,
        children: [
          RegisterName(registerData: registerData),
          RegisterPhone(registerData: registerData,),
          RegisterActiveAccount(registerData: registerData),
        ],
        controller: registerData.pageController,
      ),
    );
  }
}
