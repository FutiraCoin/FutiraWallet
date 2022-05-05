part of 'settings_widgets_imports.dart';

class BuildMore extends StatelessWidget {
  const BuildMore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(color: MyColors.grey,),
        MyText(title: "More", color: MyColors.primary, size: 12),
        const SizedBox(height: 5,),
        BuildClickableItem(title: "Watch Wallet", onTap: () => AutoRouter.of(context).push(WatchWalletRoute()),),
        BuildClickableItem(title: "Tranaction History", onTap: () {},),
        BuildClickableItem(title: "About Futira", onTap: () =>AutoRouter.of(context).push(AboutFutiraRoute(),),),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyText(title: "Log Out", color: MyColors.black, size: 10),

            ],
          ),
        ),
      ],
    );
  }
}
