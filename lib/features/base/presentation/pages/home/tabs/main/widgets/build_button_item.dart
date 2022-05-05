part of 'main_widgets_imports.dart';

class BuildButtonItem extends StatelessWidget {
  final Color color;
  final String img;
  final String title;
  final Function() onTap;

  const BuildButtonItem(
      {Key? key, required this.color, required this.img, required this.title,required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: color,
            ),
            child: Image.asset(img,scale: 1.25,),
          ),
          const SizedBox(height: 5,),
          MyText(title: title, color: MyColors.black, size: 11),
        ],
      ),
    );
  }
}
