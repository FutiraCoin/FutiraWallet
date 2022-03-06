part of'register_name_imports.dart';

class RegisterName extends StatefulWidget {
  final RegisterData registerData;
  const RegisterName({Key? key,required this.registerData});

  @override
  _RegisterNameState createState() => _RegisterNameState();
}

class _RegisterNameState extends State<RegisterName> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAuthAppBar(title: "Welcome",),
      body: ListView(
        children: [
          LinearProgressIndicator(value: .33,color: MyColors.infoColor,backgroundColor: MyColors.grey.withOpacity(.2),),
          RegisterNameBody(registerData: widget.registerData,),
          RegisterNameButton(registerData: widget.registerData,),
        ],
      ),
    );
  }
}
