class ExploreParams {

  final String currency;
  final String coins;
  final bool refresh;

  Map<String, dynamic> toJson()=> {
    "vs_currency":currency,
    "ids":coins,
  };

  ExploreParams( {required this.currency, required this.coins, required this.refresh});

}