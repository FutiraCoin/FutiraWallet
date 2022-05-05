part of 'recovery_phrase_widgets_imports.dart';

class RecoveryPhraseHeader extends StatelessWidget {
  const RecoveryPhraseHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: MyText(
            alien: TextAlign.center,
            title: "Write down your  secret recovery phrase",
            letterSpace: 1.1,
            color: MyColors.black,
            size: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
        MyText(
            alien: TextAlign.center,
            title:
                "This is your secret recovery phase. Write it down on a paper and keep it in a safe place. You’ll be asked to re-enter this phase (in order) on the next step.",
            color: MyColors.blackOpacity,
            letterSpace: 1.1,
            size: 12),
      ],
    );
  }
}
