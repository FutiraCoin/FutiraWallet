part of 'restore_backup_widgets_imports.dart';

class BuildGridWords extends StatelessWidget {
  final RestoreBackupData backupData;

  const BuildGridWords({Key? key, required this.backupData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<List<String>>, GenericState<List<String>>>(
      bloc: backupData.wordsCubit,
      builder: (context, state) {
        return GridView(
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(vertical: 10),
          gridDelegate: GridFixedHeightDelegate(
            crossAxisCount: 3,
            height: 30,
            crossAxisSpacing: 10,
            mainAxisSpacing: 15,
          ),
          children: List.generate(
            state.data.length,
            (index) => Chip(
              backgroundColor: MyColors.greyWhite,
              padding: EdgeInsets.symmetric(horizontal: 15),
              label: MyText(
                title: state.data[index],
                size: 10,
                color: MyColors.black,
              ),
            ),
          ),
        );
      },
    );
  }
}
