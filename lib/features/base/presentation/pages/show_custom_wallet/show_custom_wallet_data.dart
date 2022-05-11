part of 'show_custom_wallet_imports.dart';

class ShowCustomWalletData {
  GenericBloc<List<CustomWalletModel>> walletsCubit = GenericBloc([]);

  fetchWallets() async {
    List<CustomWalletTableData> walletsDB =
        await GetCustomWallets().call(NoParams());
    List<CustomWalletModel> wallets = walletsDB
        .map((e) => CustomWalletModel(
            id: e.id,
            name: e.name,
            imageLink: e.imageLink,
            symbol: e.symbol,
            contract: e.contract))
        .toList();

    walletsCubit.onUpdateData(wallets);
  }
}
