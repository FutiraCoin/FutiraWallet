part of'reset_password_widgets_imports.dart';

class ResetPasswordText extends StatelessWidget {
  const ResetPasswordText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyText(title: "Set new password", color: MyColors.black, size: 22),
        const SizedBox(height: 20,),
        MyText(title: "In order for us to be able to reset your password, please Enter your phone number below", color: MyColors.grey, size: 14),
      ],
    );
  }
}
