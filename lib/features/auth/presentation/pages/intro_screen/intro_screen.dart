part of'intro_screen_imports.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MyText(title: "Welcome", color: MyColors.black, size: 22),
            const SizedBox(height: 30,),
            InkWell(
              onTap: ()=>AutoRouter.of(context).push(RegisterRoute()),
                child: MyText(title: "To Register", color: MyColors.primary, size: 22)),
          ],
        ),
      ),
    );
  }
}
