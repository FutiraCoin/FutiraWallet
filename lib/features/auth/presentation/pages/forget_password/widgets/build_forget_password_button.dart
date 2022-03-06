part of'forget_password_widgets_imports.dart';


class BuildForgetPasswordButton extends StatelessWidget {
  final ForgetPasswordData forgetPasswordData;
  const BuildForgetPasswordButton({Key? key,required this.forgetPasswordData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<String>, GenericState<String>>(
      bloc: forgetPasswordData.phoneCubit,
      builder: (context, state) {
        bool isEmpty = state.data.isEmpty;
        return AbsorbPointer(
          absorbing: isEmpty,
          child: LoadingButton(
              title: "Continue",
              onTap: () =>AutoRouter.of(context).push(VerifyCodeRoute()),
              color: isEmpty? MyColors.offWhite:MyColors.primary,
              textColor: isEmpty? MyColors.black:MyColors.white,
              btnKey: forgetPasswordData.btnKey,
              margin: EdgeInsets.only(top: 40),
              fontSize: 16,
              height: 55
          ),
        );
      },
    );
  }
}
