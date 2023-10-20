import 'package:url_launcher/url_launcher.dart';

String url = "https://wa.me/?text=YourTextHere";

makingPhoneCall({required String phone}) async {
  var url = Uri.parse("tel:${phone}");
  await launchUrl(url);
}

sendWhatsAppMessage({required String phone}) async {
  var url = Uri.parse("https://wa.me/${phone}");
  await launchUrl(url);
}

goToLocation({double? latitude, double? longitude, String? placeId}) async {
  var url = Uri.parse(
      "https://www.google.com/maps/search/?api=1&query=${latitude}%2C${longitude}"); //&query_place_id=${placeId}
  await launchUrl(url);
}
