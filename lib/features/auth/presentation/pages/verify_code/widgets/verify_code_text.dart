part of'verify_code_widgets_imports.dart';

class VerifyCodeText extends StatelessWidget {
  const VerifyCodeText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyText(title: "Enter your security code", color: MyColors.black, size: 22),
        const SizedBox(height: 20,),
        MyText(title: "In order for us to be able to reset your password, please Enter your security code below", color: MyColors.grey, size: 14),
      ],
    );
  }
}
