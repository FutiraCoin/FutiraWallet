part of 'active_account_imports.dart';

class ActiveAccountData {

  final GlobalKey<CustomButtonState> btnKey = GlobalKey();
  final TextEditingController code = TextEditingController();
  final GenericBloc<bool> codeCubit = GenericBloc(false);

  onComplete(String value){
    codeCubit.onUpdateData(value.length==6);
  }

}