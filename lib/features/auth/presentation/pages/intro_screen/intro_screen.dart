part of 'intro_screen_imports.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        children: [
          BuildIntroHeader(),
          MyText(
            title: "Explore a new community, discover your new passion.",
            color: MyColors.black,
            size: 22,
            letterSpace: 1.5,
          ),
          SizedBox(height: 50),
          BuildSocialRegisterButton(
            title: "Continue with Facebook",
            icon: Res.facebook,
            onTap: () {},
          ),
          BuildSocialRegisterButton(
            title: "Continue with Apple",
            icon: Res.apple,
            onTap: () {},
          ),
          BuildSocialRegisterButton(
            title: "Continue with Mobile Number",
            icon: Res.mobile,
            onTap: () => AutoRouter.of(context).push(RegisterRoute()),
          ),
          BuildLoginNavigation()
        ],
      ),
    );
  }
}
