part of 'splash_imports.dart';

class SplashData {
  void manipulateSaveData(BuildContext context) async {
    InitCustomPackages.instance.initCustomWidgets(language: "en");
    var configService = getIt<ConfigurationService>();
    if (configService.didSetupWallet()) {
      AutoRouter.of(context).push(HomeRoute());
    } else{
      getIt<MnemonicsHelper>().generateMnemonic();
      AutoRouter.of(context).push(IntroScreensRoute());
    }
  }

}
