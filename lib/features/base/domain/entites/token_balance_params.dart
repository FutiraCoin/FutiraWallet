class TokenBalanceParams {

  final String address;
  final String contractAddress;
  final bool refresh;

  TokenBalanceParams({
    required this.address,
    required this.contractAddress,
    required this.refresh,
  });

  Map<String, dynamic> toJson()=>{
    "module":"account",
    "action":"tokenbalance",
    "address": address,
    "contractaddress": contractAddress,
  };

}
