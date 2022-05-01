part of 'third_tab_imports.dart';

class ThirdTab extends StatefulWidget {
  const ThirdTab({Key? key}) : super(key: key);

  @override
  _ThirdTabState createState() => _ThirdTabState();
}

class _ThirdTabState extends State<ThirdTab> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: const [
        BuildIntroHeader(image: Res.welcome3,),
        BuildIntroContent(
          title: "Smart",
          subTitle: "Create a secure and smart coin account to access decentelized finance.",
        ),
      ],
    );

  }
}
