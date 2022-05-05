part of 'secure_wallet_widgets_imports.dart';

class SecureWalletButtons extends StatelessWidget {
  final SecureWalletData secureData;

  const SecureWalletButtons({Key? key, required this.secureData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultButton(
          title: "Remind me later",
          onTap: () => AutoRouter.of(context).push(HomeRoute()),
          color: MyColors.white,
          borderColor: MyColors.primary,
          textColor: MyColors.primary,
          margin:  EdgeInsets.symmetric(horizontal: 20),
        ),
        LoadingButton(
          title: "Next",
          onTap: () =>AutoRouter.of(context).push(RecoveryPhraseRoute()),
          btnKey: secureData.btnKey,
          margin: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
        ),
        const SizedBox(height: 15,),
      ],
    );
  }
}
