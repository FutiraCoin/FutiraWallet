part of 'currency_imports.dart';

class Currency extends StatefulWidget {
  const Currency({Key? key}) : super(key: key);

  @override
  State<Currency> createState() => _CurrencyState();
}

class _CurrencyState extends State<Currency> {
  final CurrencyData currencyData = CurrencyData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: "Currency",
      ),
      body: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          itemCount: 10,
          itemBuilder: (context, index) => BuildCurrencyCard(
                index: index,
                currencyData: currencyData,
              )),
    );
  }
}
