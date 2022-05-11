part of 'apps_screen_imports.dart';

class AppsScreen extends StatefulWidget {
  const AppsScreen({Key? key}) : super(key: key);

  @override
  _AppsScreenState createState() => _AppsScreenState();
}

class _AppsScreenState extends State<AppsScreen> {
  final AppsScreenData appsScreenData = AppsScreenData();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(title: 'Dapps',showBack: false),
      body: GenericListView(
        type: ListViewType.separated,
        cubit: appsScreenData.appsCubit,
        onRefresh: appsScreenData.fetchData,
        params: [context],
        dividerColor: MyColors.greyWhite,
        itemBuilder: (context, index, item){
          return BuildAppView(model: item);
        },
      ),
    );
  }
}
