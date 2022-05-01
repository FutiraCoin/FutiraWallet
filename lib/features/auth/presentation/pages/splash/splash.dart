part of 'splash_imports.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  final SplashData splashData = SplashData();

  @override
  void initState() {
    splashData.manipulateSaveData(context);
    super.initState();
  }

  @override
  void didChangeDependencies() {
    precacheImage(const AssetImage(Res.logo), context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyColors.primary,
      child: Center(
        child: SvgPicture.asset(
          Res.logo,
          width: 150,
          height: 150,
        ),
      ),
    );
  }
}
