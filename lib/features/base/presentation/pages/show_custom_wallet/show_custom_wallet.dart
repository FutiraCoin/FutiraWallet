part of 'show_custom_wallet_imports.dart';

class ShowCustomWallet extends StatefulWidget {
  const ShowCustomWallet({Key? key}) : super(key: key);

  @override
  State<ShowCustomWallet> createState() => _ShowCustomWalletState();
}

class _ShowCustomWalletState extends State<ShowCustomWallet> {
  final ShowCustomWalletData walletData = ShowCustomWalletData();

  @override
  void initState() {
    walletData.fetchWallets();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(title: "Show Custom Wallet"),
      body: BlocBuilder<GenericBloc<List<CustomWalletModel>>,
          GenericState<List<CustomWalletModel>>>(
        bloc: walletData.walletsCubit,
        builder: (context, state) {
          if (state is GenericUpdateState) {
            if (state.data.length > 0) {
              return ListView.builder(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  itemCount: state.data.length,
                  itemBuilder: (context, index) => CustomWalletItem(
                        model: state.data[index],
                      ));
            } else {
              return Center(
                child: MyText(
                    title: "No Custom Wallets",
                    color: MyColors.black,
                    size: 16),
              );
            }
          } else {
            return Center(
              child: getIt<LoadingHelper>().showLoadingView(),
            );
          }
        },
      ),
    );
  }
}
