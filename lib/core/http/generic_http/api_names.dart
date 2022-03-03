class ApiNames{

  //production
  // static const String baseUrl = "https://n10.chain.futiracoin.com/";
  //development
  static const String baseUrl = "http://23.91.88.102:3000/api/v1/";
  static const String chatUrl = "http://23.91.88.102:3000";

  // auth routes
  static const String login = "auth/login";
  static const String savePublicKey = "users/";
  static const String updateUser = "users/";
  static const String register = "auth/create_account";
  static const String activeAccount = "otp/verify";
  static const String resendCode = "ResendCode";
  static const String switchNotify = "SwitchNotify";
  static const String forgetPassword = "cabaf46ee69d7b8445a5d791";
  static const String resetPassword = "A2q4mG84Z9rE2B38In4HALSWTwt9eQ5Slzq56Cod";

  //transaction routes
  static const String addContacts = "/contacts/";
  static const String createGroup = "/chats/";
  static const String inviteUser = "/invitations";
  static const String getChats = "/chats/";

  //general routes
  static const String aboutApp = "AboutUs";
  static const String terms = "Condtions";
  static const String repeatedQuestions = "FrequentlyAskedQuestions";
  static const String socialLinks = "ListSocialMedia";
  static const String contactUs = "Addcomplaints";


}