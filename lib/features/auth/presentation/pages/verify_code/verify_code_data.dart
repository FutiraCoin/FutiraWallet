part of'verify_code_imports.dart';

class VerifyCodeData{
  String? code;
  final GenericBloc<bool> codeCubit = GenericBloc(false);

   GlobalKey<CustomButtonState> btnKey = GlobalKey();

  onComplete(String value){
    codeCubit.onUpdateData(value.length==6);
    code = value;
  }
}