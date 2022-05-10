part of 'explore_imports.dart';

class ExploreData {
  final GenericBloc<List<CoinModel>> coinsCubit = GenericBloc([]);

  fetchData(BuildContext context, {bool refresh = true}) async {
    ExploreParams params = ExploreParams(
      currency: "usd",
      coins: "bitcoin,ethereum,tether,cardano,binancecoin,ripple,dogecoin,usd-coin,polkadot,internet-computer,uniswap",
      refresh: refresh,
    );
    var result = await GetMarketCoins().call(params);
    coinsCubit.onUpdateData(result);
  }
}
