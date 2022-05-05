part of 'main_widgets_imports.dart';

class BuildCurrentBalance extends StatelessWidget {
  const BuildCurrentBalance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SvgPicture.asset(
          Res.rectangle,
          fit: BoxFit.fill,
          height: MediaQuery.of(context).size.height * .26,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MyText(
                title: "Current Balance",
                color: MyColors.white,
                size: 12),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: MyText(
                  title: "150 FUT",
                  color: MyColors.white,
                  fontWeight: FontWeight.normal,
                  size: 18),
            ),
            MyText(title: "= 253,105.4", color: MyColors.white, size: 12),
          ],
        ),
      ],
    );
  }
}
