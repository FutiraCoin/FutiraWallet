part of'base_widgets_imports.dart';

class BuildClickableItem extends StatelessWidget {
  final String title;
  final Widget? widget;
  final Function() onTap;

  const BuildClickableItem({Key? key, required this.title, this.widget,required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MyText(title: title, color: MyColors.black, size: 10),
            widget?? Icon(Icons.arrow_forward_ios,size: 12,),
          ],
        ),
      ),
    );
  }
}
