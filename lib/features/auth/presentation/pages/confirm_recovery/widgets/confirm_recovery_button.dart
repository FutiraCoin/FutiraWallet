part of 'confirm_recovery_widgets_imports.dart';

class ConfirmRecoveryButton extends StatelessWidget {
  final ConfirmRecoveryData recoveryData;

  const ConfirmRecoveryButton({Key? key, required this.recoveryData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoadingButton(
      btnKey: recoveryData.btnKey,
      title: "Next",
      onTap: () => AutoRouter.of(context).push(HomeRoute()),
      margin: const EdgeInsets.symmetric(vertical: 30,horizontal: 20),
    );
  }
}
