part of 'swap_widgets_imports.dart';

class BuildSwapButton extends StatelessWidget {
  final SwapData swapData;

  const BuildSwapButton({Key? key, required this.swapData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoadingButton(
      title: "Swap",
      onTap: () {},
      btnKey: swapData.btnKey,
      margin: const EdgeInsets.symmetric(vertical: 30,horizontal: 15),
    );
  }
}
