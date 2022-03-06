part of'forget_password_imports.dart';

class ForgetPasswordData{
  GlobalKey<FormState> formKey = GlobalKey();
  GlobalKey<CustomButtonState> btnKey = GlobalKey();

  final GenericBloc<String> phoneCubit = GenericBloc("");

  onChangePhone(String value){
    phoneCubit.onUpdateData(value);
  }
}