part of 'login_imports.dart';

class LoginData {
  final GlobalKey<FormState> formKey = GlobalKey();
  final GlobalKey<CustomButtonState> btnKey = GlobalKey();

  final GenericBloc<LoginParams> loginCubit =
      GenericBloc(LoginParams(phone: "", pass: ""));

  onChangePhone(String value) {
    loginCubit.state.data.phone = value;
    loginCubit.onUpdateData(loginCubit.state.data);
  }

  onChangePassword(String value) {
    loginCubit.state.data.pass = value;
    loginCubit.onUpdateData(loginCubit.state.data);
  }

  String discoveryUrl = "https://dev.saeed.projects.roaa.tech/.well-known/openid-configuration";
  OpenIdConfiguration? discoveryDocument;
  AuthorizationResponse? identity;

  void openIdConnectionPackage(BuildContext context)async{
    final configuration =
    await OpenIdConnect.getConfiguration(discoveryUrl);
    discoveryDocument = configuration;
    final response = await OpenIdConnect.authorizeInteractive(
      context: context,
      title: "Login",
      request: await InteractiveAuthorizationRequest.create(
        clientId: "osos-dev",
        redirectUrl: "https://dev.saeed.projects.roaa.tech/auth-callback/",
        scopes: [ "openid", "profile", "email", "offline_access"],
        configuration: discoveryDocument!,
        autoRefresh: true,
      ),
    );
    print("=========> ${response?.additionalProperties}");
    identity = response;
    loginCubit.onUpdateData(LoginParams(phone: "", pass: ""));

  }
}
