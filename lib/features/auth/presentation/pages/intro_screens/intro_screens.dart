part of 'intro_screens_imports.dart';

class IntroScreens extends StatefulWidget {
  const IntroScreens({Key? key}) : super(key: key);

  @override
  _IntroScreensState createState() => _IntroScreensState();
}

class _IntroScreensState extends State<IntroScreens> {
  final IntroScreensData screensData = IntroScreensData();

  @override
  void initState() {
    screensData.controller = PageController(initialPage: 0);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        backgroundColor: MyColors.white,
        body: Column(
          children: [
            Expanded(
              child: PageView(
                controller: screensData.controller,
                physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                onPageChanged: screensData.introCubit.onUpdateData,
                children: const [FirstTab(), SecondTab(), ThirdTab()],
              ),
            ),
            BuildIntroFooter(screenData: screensData),
            const SizedBox(height: 20),
          ],
        ),
      ),
      onWillPop: () async => false,
    );
  }
}
