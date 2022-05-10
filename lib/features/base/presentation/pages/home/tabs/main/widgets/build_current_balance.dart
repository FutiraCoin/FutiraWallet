part of 'main_widgets_imports.dart';

class BuildCurrentBalance extends StatelessWidget {
  final WalletState state;
  const BuildCurrentBalance({Key? key, required this.state}) : super(key: key);

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
        Visibility(
          visible: state is WalletUpdateState,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MyText(
                  title: "Current Balance",
                  color: MyColors.white,
                  size: 12),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: MyText(
                    title: "${EthAmountFormatter(state.wallet.ethBalance).format()} ${state.wallet.network.config.symbol}",
                    color: MyColors.white,
                    fontWeight: FontWeight.normal,
                    size: 18),
              ),
              MyText(title: "= 253,105.4", color: MyColors.white, size: 12),
            ],
          ),
          replacement: getIt<LoadingHelper>().showBalanceLoadingView(),
        ),
      ],
    );
  }
}
