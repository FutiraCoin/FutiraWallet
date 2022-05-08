part of'confirm_recovery_imports.dart';

class ConfirmRecoveryData {
  GlobalKey<CustomButtonState> btnKey = GlobalKey<CustomButtonState>();
  final GenericBloc<List<String>> selectedWordsCubit = GenericBloc(
      []);
  final GenericBloc<List<String>> wordsCubit = GenericBloc([]);

  initWords() {
    var words = getIt<MnemonicsHelper>().mnemonic.split(' ');
    words.shuffle();
    wordsCubit.onUpdateData(words);
  }


  void setSelectWord(int index, String word) {
    selectedWordsCubit.state.data.add(word);
    selectedWordsCubit.onUpdateData(selectedWordsCubit.state.data);
    wordsCubit.onUpdateData(wordsCubit.state.data);
  }

  Future<void> createWallet(BuildContext context) async {
    if (selectedWordsCubit.state.data.length==12) {
      String confirmedMnemonic = selectedWordsCubit.state.data.join(' ');
      var store = getIt<MnemonicsHelper>();
      if (await store.confirmMnemonic(confirmedMnemonic)) {
        AutoRouter.of(context).push(HomeRoute());
      }
    }
  }


}