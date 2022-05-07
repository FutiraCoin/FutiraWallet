part of 'confirm_recovery_imports.dart';

class ConfirmRecovery extends StatefulWidget {
  const ConfirmRecovery({Key? key}) : super(key: key);

  @override
  State<ConfirmRecovery> createState() => _ConfirmRecoveryState();
}

class _ConfirmRecoveryState extends State<ConfirmRecovery> {
  final ConfirmRecoveryData recoveryData=ConfirmRecoveryData();

  @override
  void initState() {
    recoveryData.initWords();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: "Secret Recovery Phase",
      ),
      body: Column(
        children: [
          Flexible(
            child: ListView(
              children: [
                RecoveryHeaderText(
                    title: "Confirm Secret Recovery Phase",
                    subTitle:
                        "This is your secret recovery phase. Write it down on a paper and keep it in a safe place. You’ll be asked to re-enter this phase (in order) on the next step."),
                FillRecoveryPhrase(recoveryData: recoveryData),
                RecoveryPhraseChoice(recoveryData: recoveryData),
              ],
            ),
          ),
          ConfirmRecoveryButton(recoveryData: recoveryData),
        ],
      ),
    );
  }
}
