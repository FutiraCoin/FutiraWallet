part of 'splash_imports.dart';

class SplashData {
  void manipulateSaveData(BuildContext context) async {
    InitCustomPackages.instance.initCustomWidgets(language: "en");
    getIt<GlobalNotification>().setupNotification(context);
    SharedPreferences preferences = await SharedPreferences.getInstance();
    var userStr = preferences.getString("user");
    AutoRouter.of(context).push(const LoginRoute());
  }

}
