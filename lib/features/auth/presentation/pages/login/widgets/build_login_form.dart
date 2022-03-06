part of 'login_widgets_imports.dart';

class BuildLoginForm extends StatelessWidget {
  final LoginData loginData;

  const BuildLoginForm({Key? key, required this.loginData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: loginData.formKey,
      child: Column(
        children: [
          GenericTextField(
            fieldTypes: FieldTypes.normal,
            type: TextInputType.phone,
            action: TextInputAction.next,
            validate: (value) => value?.validatePhone(context),
            label: "Phone Number",
            margin: EdgeInsets.only(top: 20),
            prefixIcon: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SvgPicture.asset(Res.mobile),
            ),
            onChange: loginData.onChangePhone,
          ),
          GenericTextField(
            fieldTypes: FieldTypes.password,
            type: TextInputType.text,
            action: TextInputAction.done,
            validate: (value) => value?.validatePhone(context),
            label: "Password",
            margin: EdgeInsets.only(top: 20),
            prefixIcon: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SvgPicture.asset(Res.password),
            ),
            onChange: loginData.onChangePassword,
          ),
        ],
      ),
    );
  }
}
