part of 'confirm_recovery_widgets_imports.dart';

class RecoveryPhraseChoice extends StatelessWidget {
  final ConfirmRecoveryData recoveryData;

  const RecoveryPhraseChoice({Key? key, required this.recoveryData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<List<String>>, GenericState<List<String>>>(
      bloc: recoveryData.wordsCubit,
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          margin: const EdgeInsets.symmetric(horizontal: 20),
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
              height: 25,
              crossAxisSpacing: 50,
              mainAxisSpacing: 15,
            ),
            children: List.generate(state.data.length, (index) {
              final selected = recoveryData.selectedWordsCubit.state.data
                  .any((element) => element == state.data[index]);
              return InkWell(
                onTap: (){
                  if (!selected) {
                    recoveryData.setSelectWord(index, state.data[index]);
                  }
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: selected? MyColors.primary : Colors.transparent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.center,
                  child: MyText(
                    alien: TextAlign.center,
                    title: state.data[index],
                    size: 11,
                    color: selected? MyColors.white : MyColors.blackOpacity,
                  ),
                ),
              );
            }),
          ),
        );
      },
    );
  }
}
