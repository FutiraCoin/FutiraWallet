part of 'login_imports.dart';

class LoginData {

  final GlobalKey<FormState> formKey = GlobalKey();
  final GlobalKey<CustomButtonState> btnKey = GlobalKey();

  final TextEditingController phone = TextEditingController();
  final TextEditingController password = TextEditingController();

}