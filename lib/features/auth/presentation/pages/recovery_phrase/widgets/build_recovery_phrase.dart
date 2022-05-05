part of 'recovery_phrase_widgets_imports.dart';

class BuildRecoveryPhrase extends StatelessWidget {
  final RecoveryPhraseData phraseData;

  const BuildRecoveryPhrase({Key? key, required this.phraseData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
            bloc: phraseData.recoveryCubit,
            builder: (context, state) {
              return Visibility(
                visible: !state.data,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: InkWell(
                    onTap: () => phraseData.recoveryCubit.onUpdateData(true),
                    child: SvgPicture.asset(
                      Res.eye,
                      height: 30,
                    ),
                  ),
                ),
                replacement: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(border:Border.all(color: MyColors.greyWhite,),borderRadius: BorderRadius.circular(10)),
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  alignment: Alignment.center,
                  child: GridView(
                    shrinkWrap: true,
                    padding: EdgeInsets.symmetric(vertical: 10),
                    gridDelegate: GridFixedHeightDelegate(
                      crossAxisCount: 3,
                      height: 20,
                      crossAxisSpacing: 50,
                      mainAxisSpacing: 15,
                    ),
                    children: List.generate(12, (index) => MyText(
                      title: "${index+1}. dolor",
                      color: MyColors.blackOpacity,
                      size: 12)),
                  ),
                ),
              );
            }),
        MyText(
            alien: TextAlign.center,
            title: "Tap to reveal your Secret Recovery phrase",
            color: MyColors.black,
            fontWeight: FontWeight.w500,
            letterSpace: 1.1,
            size: 12),
        const SizedBox(height: 5,),
        MyText(
            alien: TextAlign.center,
            title: "Make sure no one is watching your screen",
            color: MyColors.blackOpacity,
            letterSpace: 1.1,
            size: 10),
      ],
    );
  }
}
