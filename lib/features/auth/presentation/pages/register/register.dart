part of 'register_imports.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final RegisterData registerData = RegisterData();

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.horizontal,
      children: [
        RegisterName(),
        RegisterPhoneInputs(),
      ],
      controller: registerData.pageController,
    );
  }
}
