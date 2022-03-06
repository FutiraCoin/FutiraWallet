part of 'login_widgets_imports.dart';

class BuildLoginSocialMedia extends StatelessWidget {
  final LoginData loginData;
  const BuildLoginSocialMedia({Key? key, required this.loginData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyText(title: "Or use one of the following", color: MyColors.blackOpacity, size: 16,),
          SizedBox(height: 15),
          BuildSocialItem(icon: Res.facebook, title: "Continue with Facebook"),
          BuildSocialItem(icon: Res.apple, title: "Continue with Apple"),
        ],
      ),
    );
  }
}
