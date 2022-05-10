part of 'explore_imports.dart';

class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  final ExploreData exploreData = ExploreData();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(title: 'Explore',showBack: false),
      body: GenericListView(
        type: ListViewType.separated,
        cubit: exploreData.coinsCubit,
        onRefresh: exploreData.fetchData,
        params: [context],
        dividerColor: MyColors.greyWhite,
        itemBuilder: (context, index, item){
          return BuildCoinItem(model: item);
        },
      ),
    );
  }
}
