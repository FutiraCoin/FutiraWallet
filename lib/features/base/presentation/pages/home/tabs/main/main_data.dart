part of'main_imports.dart';

class MainData {


  Future<void> initialiseWallet(BuildContext context)async{
    final store = context.read<WalletCubit>();
    await store.initialise();
  }

}