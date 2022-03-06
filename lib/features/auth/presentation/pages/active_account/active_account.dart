part of 'active_account_imports.dart';

class ActiveAccount extends StatefulWidget {
  const ActiveAccount({Key? key}) : super(key: key);

  @override
  _ActiveAccountState createState() => _ActiveAccountState();
}

class _ActiveAccountState extends State<ActiveAccount> {
  final ActiveAccountData activeAccountData = ActiveAccountData();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: BuildAuthAppBar(),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        children: [
          BuildHeaderTitle(),
          BuildPinField(
            controller: activeAccountData.code,
            onComplete: activeAccountData.onComplete,
          ),
          BuildActiveButton(activeAccountData: activeAccountData),
        ],
      ),
    );
  }
}
