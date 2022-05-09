part of 'main_widgets_imports.dart';

class MainScreenButtons extends StatelessWidget {
  const MainScreenButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      shadowColor: MyColors.primary.withOpacity(.2),
      // shape: RoundedRectangleBorder(b),
      elevation: 4,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BuildButtonItem(
              color: MyColors.primary,
              img: Res.arrow_up,
              title: "Send",
              onTap: () => AutoRouter.of(context).push(SendCoinsRoute()),
            ),
            BuildButtonItem(
              color: Color(0xffC4C4C4),
              img: Res.arrow_down,
              title: "Receive",
              onTap: () {},
            ),
            BuildButtonItem(
              color: Color(0xffF9BA3A),
              img: Res.swap,
              title: "Swap",
              onTap: () => AutoRouter.of(context).push(SwapRoute()),
            ),
          ],
        ),
      ),
    );
  }
}
