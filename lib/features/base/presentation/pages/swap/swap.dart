part of 'swap_imports.dart';

class Swap extends StatefulWidget {
  const Swap({Key? key}) : super(key: key);

  @override
  State<Swap> createState() => _SwapState();
}

class _SwapState extends State<Swap> {
  final SwapData swapData=SwapData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(title: "Swap"),
      body: Column(
        children: [
          Flexible(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              children: [
                BuildSwap(swapData: swapData,),
              ],
            ),
          ),
          BuildSwapButton(swapData: swapData),
        ],
      ),
    );
  }
}
