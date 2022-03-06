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
    return BlocBuilder<GenericBloc<RegisterParams>,GenericState<RegisterParams>>(
      bloc: registerData.registerBloc,
      builder: (context,state) {
        return PageView(
          scrollDirection: Axis.horizontal,
          children: [
            RegisterName(registerData: registerData),
            RegisterPhone(name: registerData.name.text,registerData: registerData,),
            RegisterActiveAccount(registerData: registerData),
          ],
          controller: registerData.pageController,
        );
      }
    );
  }
}
