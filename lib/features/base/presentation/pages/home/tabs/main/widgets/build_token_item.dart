part of 'main_widgets_imports.dart';

class BuildTokenItem extends StatefulWidget {
  final String name;
  final String symbol;
  final String contract;

  const BuildTokenItem({
    Key? key,
    required this.name,
    required this.symbol,
    required this.contract,
  }) : super(key: key);

  @override
  State<BuildTokenItem> createState() => _BuildTokenItemState();
}

class _BuildTokenItemState extends State<BuildTokenItem> {
  final GenericBloc<String> balanceCubit = GenericBloc("0");

  fetchBalance({bool refresh = true}) async {
    final wallet = context.read<WalletCubit>().state.wallet;
    TokenBalanceParams params = TokenBalanceParams(
      refresh: refresh,
      address: wallet.address ?? "",
      contractAddress: widget.contract,
    );
    var result = await GetTokenBalance()(params);
    print("GetTokenBalance ===========> ${result}");
    balanceCubit.onUpdateData(result);
  }

  @override
  void initState() {
    fetchBalance(refresh: false);
    fetchBalance();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<String>, GenericState<String>>(
      bloc: balanceCubit,
      builder: (context, state) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: MyColors.greyWhite, shape: BoxShape.circle),
                height: 40,
                width: 40,
                alignment: Alignment.center,
                child: MyText(
                  title: widget.symbol,
                  color: MyColors.primary,
                  size: 10,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: MyText(
                  title: widget.name,
                  fontWeight: FontWeight.bold,
                  letterSpace: 1.1,
                  color: MyColors.black,
                  size: 12,
                ),
              ),
              Visibility(
                visible: state is GenericUpdateState,
                child: MyText(
                  title: "${0} ${widget.symbol}",
                  color: MyColors.black,
                  size: 10,
                ),
                replacement:  getIt<LoadingHelper>().showBalanceLoadingView(),
              )
            ],
          ),
        );
      },
    );
  }
}
