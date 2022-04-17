class ApiNames{

  //production
  // static const String baseUrl = "https://n10.chain.futiracoin.com/";
  //development
  static const String baseUrl = "http://sismanage-dev.ddns.net:30/api/";

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

  //Ads routes
  static const String ADS = "Advertisements";


  //Agents routes
  static const String AGENTS = "Agents";
  static const String AGENTS_FEATURED = AGENTS+"/Featured";

  //Categories routes
  static const String CATEGORIES = "Category";
  static const String CATEGORIES_HOME = CATEGORIES+"/GetAllRoot";
  static const String CATEGORIES_ITEMS_HOME = CATEGORIES+"/GetHomeScreenCategoryItems";


  //items routes
  static const String ITEMS = "Items";
  static const String FEATURED_ITEMS = ITEMS+"/Featured";


  static const String REFRESH_TOKEN = "RefreshToken";



}