part of 'intro_screens_widgets_imports.dart';

class BuildIntroFooter extends StatelessWidget {
  final IntroScreensData screenData;

  const BuildIntroFooter({Key? key, required this.screenData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SmoothPageIndicator(
          controller: screenData.controller, // PageController
          count: 3,
          effect: ExpandingDotsEffect(
              activeDotColor: MyColors.primary,
              dotColor: MyColors.greyWhite,
              dotHeight: 4,
              dotWidth: 18,
              expansionFactor: 1.2),
          onDotClicked: (index)=>screenData.movePage(index,context),
        ),
        SizedBox(height: 50),
        BlocBuilder<GenericBloc<int>, GenericState<int>>(
          bloc: screenData.introCubit,
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () => screenData.movePage(3,context),
                    style: ElevatedButton.styleFrom(
                        primary: MyColors.white,
                      elevation: 0
                    ),
                    child: MyText(
                      title:  "Skip",
                      color: MyColors.grey,
                      size: 12,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => screenData.movePage(state.data+1,context),
                    style: ElevatedButton.styleFrom(
                        primary: MyColors.white,
                      elevation: 0
                    ),
                    child: MyText(
                      title: state.data==2? "Finish" : "Next",
                      color: MyColors.primary,
                      size: 12,
                    ),
                  ),
                ],
              ),
            );
          },
        )
      ],
    );
  }
}
