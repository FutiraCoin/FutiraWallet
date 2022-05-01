part of 'intro_screens_imports.dart';

class IntroScreensData {

  final GenericBloc<int> introCubit = GenericBloc(0);
  late PageController controller;

  void movePage(int page,BuildContext context) {
    if(page==3){
      AutoRouter.of(context).push(const LoginTypeRoute());
    }else{
      controller.animateToPage(page,
          duration: const Duration(milliseconds: 500), curve: Curves.easeOut);
    }
  }


}