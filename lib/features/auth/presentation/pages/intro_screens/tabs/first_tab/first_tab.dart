part of 'first_tab_imports.dart';

class FirstTab extends StatefulWidget {
  const FirstTab({Key? key}) : super(key: key);

  @override
  _FirstTabState createState() => _FirstTabState();
}

class _FirstTabState extends State<FirstTab> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      // mainAxisSize: MainAxisSize.max,
      children: const [
        BuildIntroHeader(
          image: Res.welcome1,
        ),
        BuildIntroContent(
          title: "Simple",
          subTitle:
              "Pay and get paid or send money to friends without fees or friction.",
        ),
      ],
    );
  }
}
