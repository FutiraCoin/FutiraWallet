part of'register_phone_widgets_imports.dart';
class RegisterPhoneForm extends StatelessWidget {
  final RegisterData registerData;
  const RegisterPhoneForm({Key? key,required this.registerData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      child: Form(
        key: registerData.phoneFormKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyText(title: "Let's setup your account", color: MyColors.black, size: 18),
            GenericTextField(
              fieldTypes: FieldTypes.normal,
              type: TextInputType.phone,
              action: TextInputAction.next,
              validate: (value) => value?.validatePhone(context),
              label: "Mobile Number",
              margin: EdgeInsets.only(top: 20),
              prefixIcon: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SvgPicture.asset(Res.mobile),
              ),
               onChange: registerData.onChangePhone,
            ),
            GenericTextField(
              fieldTypes: FieldTypes.password,
              type: TextInputType.text,
              action: TextInputAction.done,
              validate: (value) => value?.validatePassword(context),
              label: "Password",
              margin: EdgeInsets.only(top: 20),
              prefixIcon: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SvgPicture.asset(Res.password),
              ), onChange: registerData.onChangePassword,
            ),
          ],
        ),
      ),
    );
  }
}
