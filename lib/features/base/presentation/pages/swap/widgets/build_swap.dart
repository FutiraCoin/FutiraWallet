part of 'swap_widgets_imports.dart';

class BuildSwap extends StatelessWidget {
  final SwapData swapData;
  const BuildSwap({Key? key,required this.swapData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyText(
          title: "Swap",
          color: MyColors.black,
          size: 11,
          fontWeight: FontWeight.bold,
          letterSpace: 1.1,
        ),
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13),),
          margin: const EdgeInsets.symmetric(vertical: 10),
          shadowColor: MyColors.primary.withOpacity(.2),
          elevation: 4,
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
              MyText(title: "Enter your Amount", color: MyColors.blackOpacity, size:9),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                  MyText(title: "0 Fut", color: MyColors.black, size: 10),
                  BuildSwapDropDown(swapData: swapData,),
                ],),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.start,children: [
                Expanded(child: Divider(endIndent: 10,color: MyColors.grey,),),
                Image.asset(Res.swap_icon,height: 25),
                Expanded(child: Divider(indent: 10,color: MyColors.grey,),),
              ],),
              MyText(title: "Enter your Amount", color: MyColors.blackOpacity, size:9,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                  MyText(title: "900 Eur", color: MyColors.black, size: 10),
                  BuildSwapDropDown(swapData: swapData,),
                ],),
              ),
            ],),
          ),
        ),
        const SizedBox(height: 15,),
        MyText(
          title: "Info",
          color: MyColors.black,
          size: 11,
          fontWeight: FontWeight.bold,
          letterSpace: 1.1,
        ),
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13),),
          margin: const EdgeInsets.symmetric(vertical: 10),
          shadowColor: MyColors.primary.withOpacity(.2),
          // shape: RoundedRectangleBorder(b),
          elevation: 4,
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
              MyText(title: "1 Fut", color: MyColors.blackOpacity, size:8),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                  MyText(title: "=~ 0.024552441", color: MyColors.primary, size: 9),
                  MyText(title: "USDT", color: MyColors.blackOpacity, size: 9),
                ],),
              ),
            ],),
          ),
        ),
      ],
    );
  }
}
