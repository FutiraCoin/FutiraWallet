import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

import 'custom_toast.dart';


class HelperMethods{

  HelperMethods._();

  static HelperMethods get instance => HelperMethods._();

  void launchURL({required String url}) async {
    if (!url.toString().startsWith("https")) {
      url = "https://" + url;
    }
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      CustomToast.showSimpleToast(msg: "من فضلك تآكد من الرابط");
    }
  }

  void launchWhatsApp(phone) async {
    String message = 'مرحبا بك';
    var _whatsAppUrl = "https://api.whatsapp.com/send?phone=+$phone&text=$message";
    if (await canLaunch(_whatsAppUrl)) {
      await launch(_whatsAppUrl);
    } else {
      CustomToast.showSimpleToast(msg: 'حدث خطأ ما');
    }
  }

  void clearSavedData()async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.clear();
  }

  String convertDigitsToLatin(String text) {
    var sb = StringBuffer();
    for (int i = 0; i < text.length; i++) {
      switch (text[i]) {
      //Arabic digits
        case '\u0660':
          sb.write('0');
          break;
        case '\u0661':
          sb.write('1');
          break;
        case '\u0662':
          sb.write('2');
          break;
        case '\u0663':
          sb.write('3');
          break;
        case '\u0664':
          sb.write('4');
          break;
        case '\u0665':
          sb.write('5');
          break;
        case '\u0666':
          sb.write('6');
          break;
        case '\u0667':
          sb.write('7');
          break;
        case '\u0668':
          sb.write('8');
          break;
        case '\u0669':
          sb.write('9');
          break;
        default:
          sb.write(text[i]);
          break;
      }
    }
    return sb.toString();
  }

}