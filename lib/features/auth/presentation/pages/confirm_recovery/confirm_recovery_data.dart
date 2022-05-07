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

  Future<void> createWallet() async {

  }


}