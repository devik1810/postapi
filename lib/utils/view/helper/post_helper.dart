import 'package:http/http.dart' as http;

class PostHelper {
  Future<String> addData() async {
    String Link =
        "https://apidatahub.000webhostapp.com/MyShop/API/adddataapi.php";
    Uri uri = Uri.parse(Link);
    var response = await http.post(uri, body: {"p_name":"Vivo v9",
      "p_rate": "5",
      "p_price": "19500",
      "p_offer": "1500",
      "p_desc": "8GB",
      "p_category": "mobile",
    });

    if (response.statusCode == 200) {
      return "Done";
    } else {
      return "Failed";
    }
  }
}
