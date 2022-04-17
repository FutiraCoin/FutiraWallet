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

 final FlutterAppAuth appAuth = FlutterAppAuth();

 void openIdLogin()async{
    final AuthorizationTokenResponse? result = await appAuth.authorizeAndExchangeCode(
      AuthorizationTokenRequest(
        'osos-dev',
        'https://dev.saeed.projects.roaa.tech/auth-callback/',
        issuer: 'https://dev.saeed.projects.roaa.tech',
        discoveryUrl: 'https://dev.saeed.projects.roaa.tech/.well-known/openid-configuration',
        scopes: ['profile', 'email', 'openid'],
      ),
    );
    print("======> ${result?.accessToken}");

  }

  void openIdClientLogin() async {
    var uri = Uri.parse('https://dev.saeed.projects.roaa.tech');
    var issuer = await openid.Issuer.discover(uri);
    // create a client
    var client = openid.Client(issuer, "osos-dev");

    // set the redirect uri
    var redirectUri =
        Uri.parse("https://dev.saeed.projects.roaa.tech/auth-callback/");
    var scopes = List<String>.of(['openid', 'profile', 'email']);

    // create a function to open a browser with an url
    urlLauncher(String url) async {
      await launch(url, forceWebView: true);
    }

    // create an authenticator
    var authenticator = Authenticator(
      client,
      scopes: scopes,
      port: 4200,
      urlLancher: urlLauncher,
      redirectUri: redirectUri,
    );
    var c = await authenticator.authorize();
    closeWebView();

    var token= await c.getTokenResponse();
    print(token);
  }

  void authenticateWebAuth() async {
    // Present the dialog to the user
    final url = Uri.https('dev.saeed.projects.roaa.tech',
        'https://dev.saeed.projects.roaa.tech', {
      'response_type': 'code',
      'client_id': "osos-dev",
      'redirect_uri': "https://dev.saeed.projects.roaa.tech/auth-callback",
      'scope': 'email',
    });
    final result = await FlutterWebAuth.authenticate(
      url: url.toString(),
      callbackUrlScheme: "dev.saeed.projects.roaa.tech",
    );

    print("========> $result");
// Extract token from resulting url
    final token = Uri.parse(result).queryParameters['access_token'];
    print('access_token');
    print(token);
  }
}

//https://dev.saeed.projects.roaa.tech/auth?response_type=code&scope=openid&client_id=osos-dev&redirect_uri=https%3A%2F%2Fdev.saeed.projects.roaa.tech%2Fauth-callback&state=AcuGLIlj4jPn8JOSo31BatxKYKWtR7FOCN4T63ArzQCTt1TG3E
