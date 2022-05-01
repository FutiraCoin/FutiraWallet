part of 'restore_backup_imports.dart';

class RestoreBackup extends StatefulWidget {
  const RestoreBackup({Key? key}) : super(key: key);

  @override
  _RestoreBackupState createState() => _RestoreBackupState();
}

class _RestoreBackupState extends State<RestoreBackup> {
  final RestoreBackupData restoreBackupData = RestoreBackupData();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(title: "Restore from backup"),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              children: [
                MyText(
                  title:
                      "Enter your 12 word phase you were given when your created your previous wallet",
                  color: MyColors.black,
                  size: 12,
                  alien: TextAlign.center,
                ),
                BuildInputField(),
                BuildGridWords(),
              ],
            ),
          ),
          DefaultButton(
            title: "Next",
            fontSize: 12,
            onTap: (){},
            margin: EdgeInsets.all(30),
          ),
        ],
      ),
    );
  }
}
