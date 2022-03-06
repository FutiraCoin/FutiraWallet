part of'register_name_widgets_imports.dart';

class RegisterNameBody extends StatelessWidget {
  final RegisterNameData registerNameData;
  const RegisterNameBody({Key? key,required this.registerNameData});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerNameData.formKey,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
        child: Column(
          children:[
            MyText(title: "How can we call you?", color: MyColors.black, size: 18),
            GenericTextField(
              controller: registerNameData.name,
              fieldTypes: FieldTypes.normal,
              type: TextInputType.text,
              action: TextInputAction.done,
              validate: (value) => value?.validateEmpty(context),
              label: "Your name",
              margin: EdgeInsets.only(top: 20),
              prefixIcon: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SvgPicture.asset(Res.mobile),
              ),
            ),
          ]
        ),
      ),
    );
  }
}
