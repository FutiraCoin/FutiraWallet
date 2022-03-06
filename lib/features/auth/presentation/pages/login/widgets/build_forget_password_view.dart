part of 'login_widgets_imports.dart';

class BuildForgetPasswordView extends StatelessWidget {
  const BuildForgetPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      child: Row(
        children: [
          MyText(
            title: "Forget your password?",
            color: MyColors.black,
            size: 14,
          ),
          SizedBox(width: 5),
          MyText(
            title: "Tap here",
            color: MyColors.primary,
            size: 14,
          ),
        ],
      ),
    );
  }
}
