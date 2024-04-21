import 'dart:convert';
import 'package:http/http.dart' as http;

class AuthRepository {
   login(String cardId, String password) async {
    var response = await http.post(
      Uri.parse("http://localhost:5000/api/login"),
      headers: {},
      body: {
        "cardID": cardId,
        "password": password,
      },
    );

    final data = json.decode(response.body);

    if(data['message']=="Login successful")
    {
      return data;
    }
    else{
      return 'Auth problema';
    }
    
  }
}
