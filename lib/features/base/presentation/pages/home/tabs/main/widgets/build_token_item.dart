part of 'main_widgets_imports.dart';

class BuildTokenItem extends StatelessWidget {
  final String asset;
  final String title;
  final String subTitle;
  final String price;
  final String ratio;
  final Color? ratioColor;


  const BuildTokenItem(
      {Key? key,
      required this.asset,
      required this.title,
      required this.subTitle,
      required this.price,
      required this.ratio, this.ratioColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 7),
      child: Row(
        children: [
          SvgPicture.asset(
            asset,
            height: 30,
            width: 30,
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(title: title,fontWeight: FontWeight.bold,letterSpace: 1.1, color: MyColors.black, size: 10),
                const SizedBox(
                  height: 5,
                ),
                MyText(title: subTitle, color: MyColors.blackOpacity, size: 8),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              MyText(title: price, color:MyColors.black, size: 9),
              const SizedBox(
                height: 5,
              ),
              MyText(title: ratio, color:ratioColor??Color(0xff03AE00), size: 9),
            ],
          )
        ],
      ),
    );
  }
}
