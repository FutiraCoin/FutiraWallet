part of 'show_custom_wallet_widgets_imports.dart';

class CustomWalletItem extends StatelessWidget {
  final CustomWalletModel model;
  const CustomWalletItem({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
      child: Row(
        children: [
          Visibility(
            visible: model.imageLink != null,
            replacement: Container(
              decoration: BoxDecoration(
                  color: MyColors.greyWhite, shape: BoxShape.circle),
              height: 40,
              width: 40,
              alignment: Alignment.center,
              child: MyText(
                title: "widget.symbol",
                color: MyColors.primary,
                size: 10,
              ),
            ),
            child: CachedImage(
              url: model.imageLink ?? "",
              height: 40,
              width: 40,
              haveRadius: false,
              boxShape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: MyText(
              title: model.name ?? "",
              fontWeight: FontWeight.bold,
              letterSpace: 1.1,
              color: MyColors.black,
              size: 12,
            ),
          ),
          MyText(
            title: model.symbol ?? "",
            color: MyColors.black,
            size: 10,
          ),
        ],
      ),
    );
  }
}
