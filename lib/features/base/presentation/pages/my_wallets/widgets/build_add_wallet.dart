part of 'my_wallets_widgets_imports.dart';

class BuildAddWallet extends StatelessWidget {
  const BuildAddWallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>AutoRouter.of(context).push(CreateWalletRoute()),
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(vertical: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              Res.add,
              width: 25,
              height: 25,
            ),
            const SizedBox(
              height: 8,
            ),
            MyText(title: "Add New Wallet", color: MyColors.black, size: 10,letterSpace: 1.1,),
          ],
        ),
      ),
    );
  }
}
