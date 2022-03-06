part of'register_name_imports.dart';

class RegisterName extends StatefulWidget {
  const RegisterName({Key? key}) : super(key: key);

  @override
  _RegisterNameState createState() => _RegisterNameState();
}

class _RegisterNameState extends State<RegisterName> {
  final RegisterNameData registerNameData=RegisterNameData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAuthAppBar(title: "Welcome",),
      body: ListView(
        children: [
          LinearProgressIndicator(value: .5,color: MyColors.infoColor,backgroundColor: MyColors.grey.withOpacity(.2),),
          RegisterNameBody(registerNameData: registerNameData,),

        ],
      ),
    );
  }
}
