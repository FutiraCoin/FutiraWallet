part of'my_wallets_widgets_imports.dart';

class BuildWalletCard extends StatelessWidget {
  const BuildWalletCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      shadowColor: MyColors.primary.withOpacity(.2),
      elevation: 4,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(
              Res.logo_white,
              width: 25,
              height: 25,
            ),
            const SizedBox(width: 15,),
            Expanded(
              child: MyText(
                  title: "Futira Wallet_1",
                  color: MyColors.black,
                  size: 10),
            ),
            Icon(Icons.arrow_forward_ios,size: 13,color: MyColors.primary,),
          ],
        ),
      ),
    );
  }
}
