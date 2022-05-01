part of 'second_tab_imports.dart';

class SecondTab extends StatefulWidget {
  const SecondTab({Key? key}) : super(key: key);

  @override
  _SecondTabState createState() => _SecondTabState();
}

class _SecondTabState extends State<SecondTab> {


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: const [
        BuildIntroHeader(image: Res.welcome2,),
        BuildIntroContent(
          title: "Quantum safe encryption",
          subTitle: "",
        ),
      ],
    );
  }
}
