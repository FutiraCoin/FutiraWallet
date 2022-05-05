part of'settings_widgets_imports.dart';

class BuildGeneral extends StatelessWidget {
  final SettingsData settingsData;
  const BuildGeneral({Key? key,required this.settingsData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyText(title: "General", color: MyColors.primary, size: 12),
        const SizedBox(height: 5,),
        BuildClickableItem(title: "My Wallets", onTap: () =>AutoRouter.of(context).push(MyWalletsRoute()),),
        BuildClickableItem(title: "Security", onTap: () {},),
        BuildClickableItem(title: "Currency", onTap: () =>AutoRouter.of(context).push(CurrencyRoute()),),
        BuildClickableItem(title: "Languages", onTap: () =>AutoRouter.of(context).push(LanguageRoute()),),
        BuildDarkMode(settingsData: settingsData,),
    ],);
  }
}
