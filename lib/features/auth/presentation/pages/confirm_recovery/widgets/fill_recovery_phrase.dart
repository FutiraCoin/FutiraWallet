part of 'confirm_recovery_widgets_imports.dart';

class FillRecoveryPhrase extends StatelessWidget {
  final ConfirmRecoveryData recoveryData;

  const FillRecoveryPhrase({Key? key, required this.recoveryData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<List<String>>,
        GenericState<List<String>>>(
      bloc: recoveryData.selectedWordsCubit,
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              border: Border.all(
                color: MyColors.greyWhite,
              ),
              borderRadius: BorderRadius.circular(10)),
          child: GridView(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(vertical: 10),
            gridDelegate: GridFixedHeightDelegate(
              crossAxisCount: 3,
              height: 30,
              crossAxisSpacing: 50,
              mainAxisSpacing: 15,
            ),
            children: List.generate(state.data.length, (index) {
              return Container(
                alignment: Alignment.center,
                width: 50,
                decoration: BoxDecoration(
                  color: MyColors.greyWhite,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: MyText(
                  title: "${index + 1}. ${state.data[index]}",
                  size: 11,
                  color: MyColors.blackOpacity,
                ),
              );
            }),
          ),
        );
      },
    );
  }
}
