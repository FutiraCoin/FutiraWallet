part of 'login_imports.dart';

class LoginData {
  final GlobalKey<FormState> formKey = GlobalKey();
  final GlobalKey<CustomButtonState> btnKey = GlobalKey();

  final GenericBloc<LoginParams> loginCubit =
      GenericBloc(LoginParams(phone: "", pass: ""));

  onChangePhone(String value) {
    loginCubit.state.data.phone = value;
    loginCubit.onUpdateData(loginCubit.state.data);
  }

  onChangePassword(String value) {
    loginCubit.state.data.pass = value;
    loginCubit.onUpdateData(loginCubit.state.data);
  }


}
