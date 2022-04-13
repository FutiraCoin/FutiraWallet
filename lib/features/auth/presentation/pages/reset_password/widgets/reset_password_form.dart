part of'reset_password_widgets_imports.dart';

class ResetPasswordForm extends StatelessWidget {
  final ResetPasswordData resetPasswordData;
  const ResetPasswordForm({Key? key,required this.resetPasswordData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GenericTextField(
          fieldTypes: FieldTypes.password,
          type: TextInputType.text,
          action: TextInputAction.next,
          controller: resetPasswordData.password,
          validate: (value) => value?.validatePassword(),
          label: "New password",
          prefixIcon: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SvgPicture.asset(Res.password),
          ),
          onChange: resetPasswordData.onChangePass,
        ),
        GenericTextField(
          fieldTypes: FieldTypes.password,
          type: TextInputType.text,
          action: TextInputAction.done,
          validate: (value) => value?.validatePasswordConfirm(pass: resetPasswordData.password.text),
          label: "Repeat new password",
          margin: EdgeInsets.only(top: 20),
          controller: resetPasswordData.confirmPassword,
          prefixIcon: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SvgPicture.asset(Res.password),
          ),
          onChange: resetPasswordData.onChangeConfirmPass,
        ),

      ],
    );
  }
}
