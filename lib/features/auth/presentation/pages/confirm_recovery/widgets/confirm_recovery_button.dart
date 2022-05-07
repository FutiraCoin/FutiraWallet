part of 'confirm_recovery_widgets_imports.dart';

class ConfirmRecoveryButton extends StatelessWidget {
  final ConfirmRecoveryData recoveryData;

  const ConfirmRecoveryButton({Key? key, required this.recoveryData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<List<String>>,
        GenericState<List<String>>>(
      bloc: recoveryData.selectedWordsCubit,
      builder: (context, state) {
        return LoadingButton(
          btnKey: recoveryData.btnKey,
          title: "Next",
          onTap: () => recoveryData.createWallet(),
          color: state.data.length == 12? MyColors.primary : MyColors.grey,
          borderColor: state.data.length == 12? MyColors.primary : MyColors.grey,
          textColor: state.data.length == 12? MyColors.white : MyColors.blackOpacity,
          fontWeight: FontWeight.bold,
          margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        );
      },
    );
  }
}
