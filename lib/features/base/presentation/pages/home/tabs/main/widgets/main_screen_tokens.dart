part of 'main_widgets_imports.dart';

class MainScreenTokens extends StatelessWidget {
  const MainScreenTokens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
            child: MyText(title: "Tokens", color: MyColors.black, size: 12),
          ),
          BuildTokenItem(asset: Res.futira, title: "Futira", subTitle: "FUT", price: "\$5,123.25", ratio: "+4,50 (0.1%)"),
          BuildTokenItem(asset: Res.bitcoin, title: "Bitcoin", subTitle: "BTC", price: "\$40,493.7", ratio: "+54,50 (0.13%)"),
          BuildTokenItem(asset: Res.ethereum, title: "Ethereum", subTitle: "ETH", price: "\$3,004.56", ratioColor: Color(0xffF92C26),ratio: "-2.68 (0.09%)"),
          BuildTokenItem(asset: Res.bitcoin, title: "Bitcoin", subTitle: "BTC", price: "\$40,493.7", ratio: "+54,50 (0.13%)"),
        ],
      ),
    );
  }
}
