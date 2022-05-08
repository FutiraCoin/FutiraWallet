part of 'restore_backup_imports.dart';

class RestoreBackupData {

  final TextEditingController word = TextEditingController();
  final GenericBloc<List<String>> wordsCubit = GenericBloc([]);

  addWordsToList(){
    if (word.text.isNotEmpty) {
      wordsCubit.onUpdateData(word.text.split(' '));
    }
  }

  restoreWallet(BuildContext context)async{
    final store = getIt<MnemonicsHelper>();
    String value = wordsCubit.state.data.join(' ');
    if (await store.importFromMnemonic(value)) {
      AutoRouter.of(context).push(HomeRoute());
    }else{
      CustomToast.showSimpleToast(msg: "Please check your words");
    }
  }

}