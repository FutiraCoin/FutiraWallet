part of'reset_password_widgets_imports.dart';

class ResetPasswordButton extends StatelessWidget {
  final ResetPasswordData resetPasswordData;
  const ResetPasswordButton({Key? key,required this.resetPasswordData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<ResetPasswordParams>, GenericState<ResetPasswordParams>>(
      bloc: resetPasswordData.resetPasswordCubit,
      builder: (context, state) {
        bool isEmpty = state.data.password.isEmpty||state.data.confirmPassword.isEmpty;
        return AbsorbPointer(
          absorbing: isEmpty,
          child: LoadingButton(
              title: "Set Password",
              onTap: () {},
              color: isEmpty? MyColors.offWhite:MyColors.primary,
              textColor: isEmpty? MyColors.black:MyColors.white,
              btnKey: resetPasswordData.btnKey,
              margin: EdgeInsets.only(top: 40),
              fontSize: 16,
              height: 55
          ),
        );
      },
    );
  }
}
