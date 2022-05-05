part of 'settings_imports.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final SettingsData settingsData = SettingsData();

  @override
  Widget build(BuildContext context) {
    bool isChecked = false;
    return Scaffold(
      appBar: DefaultAppBar(
        title: "Settings",
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        children: [
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            shadowColor: MyColors.primary.withOpacity(.2),
            elevation: 4,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 17,vertical: 15),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(15)),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BuildGeneral(
                    settingsData: settingsData,
                  ),
                  BuildMore(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
