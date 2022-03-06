part of'reset_password_imports.dart';

class ResetPasswordData{

  TextEditingController password=TextEditingController();
  TextEditingController confirmPassword=TextEditingController();

  GlobalKey<CustomButtonState> btnKey = GlobalKey();

  final GenericBloc<ResetPasswordParams> resetPasswordCubit = GenericBloc(ResetPasswordParams(password: "",confirmPassword: ""));

  onChangePass(String value){
    resetPasswordCubit.state.data.password=value;
    resetPasswordCubit.onUpdateData(resetPasswordCubit.state.data);
  }
  onChangeConfirmPass(String value){
    resetPasswordCubit.state.data.confirmPassword=value;
    resetPasswordCubit.onUpdateData(resetPasswordCubit.state.data);
  }
}