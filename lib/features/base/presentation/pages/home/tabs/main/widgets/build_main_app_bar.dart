part of 'main_widgets_imports.dart';

class BuildMainAppBar extends StatelessWidget with PreferredSizeWidget {
  const BuildMainAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          CachedImage(
            url:
            "https://thumbs.dreamstime.com/b/front-portrait-handsome-young-man-smiling-looking-camera-close-up-front-portrait-handsome-young-man-smiling-153359898.jpg",
            height: 40,
            width: 40,
            haveRadius: false,
            boxShape: BoxShape.circle,
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyText(title: "Hi", color: MyColors.black, size: 10),
              const SizedBox(
                height: 5,
              ),
              MyText(title: "Ahmed Fahmy", color: MyColors.primary, size: 10),
            ],
          ),
        ],
      ),
      centerTitle: false,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(55);
}
