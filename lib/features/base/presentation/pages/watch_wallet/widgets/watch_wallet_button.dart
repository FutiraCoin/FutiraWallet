part of 'watch_wallet_widgets_imports.dart';

class WatchWalletButton extends StatelessWidget {
  final WatchWalletData walletData;

  const WatchWalletButton({Key? key, required this.walletData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoadingButton(
        title: "Add Watch wallet", onTap: () {}, btnKey: walletData.btnKey,
    margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 30),
    );
  }
}
