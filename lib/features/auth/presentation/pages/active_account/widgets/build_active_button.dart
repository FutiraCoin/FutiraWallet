part of 'active_account_widgets_imports.dart';

class BuildActiveButton extends StatelessWidget {
  final ActiveAccountData activeAccountData;
  const BuildActiveButton({Key? key, required this.activeAccountData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
      bloc: activeAccountData.codeCubit,
      builder: (context, state) {
        return AbsorbPointer(
          absorbing: !state.data,
          child: LoadingButton(
              title: "Login",
              onTap: () {},
              color: !state.data? MyColors.offWhite:MyColors.primary,
              textColor: !state.data? MyColors.black:MyColors.white,
              btnKey: activeAccountData.btnKey,
              margin: EdgeInsets.only(top: 40),
              fontSize: 16,
              height: 55
          ),
        );
      },
    );
  }
}
