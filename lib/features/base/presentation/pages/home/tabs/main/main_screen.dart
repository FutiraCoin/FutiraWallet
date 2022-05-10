part of 'main_imports.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  final MainData mainData = MainData();

  @override
  void initState() {
    mainData.initialiseWallet(context);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildMainAppBar(),
      body: BlocBuilder<WalletCubit, WalletState>(
        builder: (context, state) {
          return RefreshIndicator(
            onRefresh: ()=> context.read<WalletCubit>().refreshBalance(),
            child: ListView(
              padding: const EdgeInsets.symmetric(vertical: 5),
              children: [
                BuildCurrentBalance(state: state),
                MainScreenButtons(),
                if(state is WalletUpdateState)
                MainScreenTokens(),
              ],
            ),
          );
        },
      ),
    );
  }
}
