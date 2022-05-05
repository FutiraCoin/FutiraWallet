part of 'recovery_phrase_widgets_imports.dart';

class RecoveryPhraseButton extends StatelessWidget {
  const RecoveryPhraseButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      title: "Next",
      onTap: () => AutoRouter.of(context).push(ConfirmRecoveryRoute()),
      margin: const EdgeInsets.symmetric(vertical: 30,horizontal: 20),
    );
  }
}
