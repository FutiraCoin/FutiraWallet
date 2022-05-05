part of 'recovery_phrase_imports.dart';

class RecoveryPhrase extends StatefulWidget {
  const RecoveryPhrase({Key? key}) : super(key: key);

  @override
  State<RecoveryPhrase> createState() => _RecoveryPhraseState();
}

class _RecoveryPhraseState extends State<RecoveryPhrase> {
  final RecoveryPhraseData phraseData = RecoveryPhraseData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(title: "Secure Your Wallet"),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            child: ListView(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              children: [
                RecoveryHeaderText(
                    title: "Write down your  secret recovery phrase",
                    subTitle:
                        "This is your secret recovery phase. Write it down on a paper and keep it in a safe place. You’ll be asked to re-enter this phase (in order) on the next step."),
                BuildRecoveryPhrase(
                  phraseData: phraseData,
                ),
              ],
            ),
          ),
          RecoveryPhraseButton(),
        ],
      ),
    );
  }
}
