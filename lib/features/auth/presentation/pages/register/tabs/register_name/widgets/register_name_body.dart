part of'register_name_widgets_imports.dart';

class RegisterNameBody extends StatelessWidget {
  final RegisterData registerData;
  const RegisterNameBody({Key? key,required this.registerData});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerData.nameFormKey,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            MyText(title: "How can we call you?", color: MyColors.black, size: 18),
            GenericTextField(
              fieldTypes: FieldTypes.normal,
              type: TextInputType.name,
              action: TextInputAction.next,
              controller: registerData.nikeName,
              validate: (value) => value?.validateEmpty(),
              label: "Nik name",
              margin: EdgeInsets.only(top: 20),
              prefixIcon: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SvgPicture.asset(Res.mobile),
              ),
              onChange: registerData.onChangeNikeName,
            ),
            GenericTextField(
              fieldTypes: FieldTypes.normal,
              type: TextInputType.emailAddress,
              action: TextInputAction.next,
              controller: registerData.email,
              validate: (value) => value?.validateEmail(),
              label: "Email",
              margin: EdgeInsets.only(top: 20),
              prefixIcon: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SvgPicture.asset(Res.mobile),
              ),
              onChange: registerData.onChangeEmail,
            ),
            GenericTextField(
              fieldTypes: FieldTypes.normal,
              type: TextInputType.phone,
              action: TextInputAction.next,
              controller: registerData.phone,
              validate: (value) => value?.validatePhone(),
              label: "Phone",
              margin: EdgeInsets.only(top: 20),
              prefixIcon: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SvgPicture.asset(Res.mobile),
              ),
              onChange: registerData.onChangePhone,
            ),
          ]
        ),
      ),
    );
  }
}
