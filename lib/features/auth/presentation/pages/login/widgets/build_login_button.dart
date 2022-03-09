part of 'login_widgets_imports.dart';

class BuildLoginButton extends StatelessWidget {
  final LoginData loginData;

  const BuildLoginButton({Key? key, required this.loginData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<LoginParams>, GenericState<LoginParams>>(
      bloc: loginData.loginCubit,
      builder: (context, state) {
        bool isEmpty = state.data.phone.isEmpty || state.data.pass.isEmpty;
        return AbsorbPointer(
          absorbing: isEmpty,
          child: LoadingButton(
              title: "Login",
              onTap: () => AutoRouter.of(context).push(HomeRoute()),
              color: isEmpty? MyColors.offWhite:MyColors.primary,
              textColor: isEmpty? MyColors.black:MyColors.white,
              btnKey: loginData.btnKey,
              margin: EdgeInsets.only(top: 40),
              fontSize: 16,
              height: 55
          ),
        );
      },
    );
  }
}
