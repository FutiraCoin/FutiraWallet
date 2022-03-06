part of'verify_code_widgets_imports.dart';

class VerifyCodeButton extends StatelessWidget {
  final VerifyCodeData verifyCodeData;
  const VerifyCodeButton({Key? key,required this.verifyCodeData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
      bloc: verifyCodeData.codeCubit,
      builder: (context, state) {
        return AbsorbPointer(
          absorbing: !state.data,
          child: LoadingButton(
              title: "Continue",
              onTap: ()=>AutoRouter.of(context).push(ResetPasswordRoute()),
              color: !state.data? MyColors.offWhite:MyColors.primary,
              textColor: !state.data? MyColors.black:MyColors.white,
              btnKey: verifyCodeData.btnKey,
              margin: EdgeInsets.only(top: 40),
              fontSize: 16,
              height: 55
          ),
        );
      },
    );
  }
}
