part of'main_imports.dart';

class MainData {


  initialiseWallet(BuildContext context)async{
    final store = context.read<WalletCubit>();
    store.initialise();
  }

}