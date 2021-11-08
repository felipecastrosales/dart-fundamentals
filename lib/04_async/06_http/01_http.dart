import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

Future<void> main() async {
  await searchCep();
  await searchCepError();
  await savePost();
  await updatePost();
  await searchPosts();
}

Future<void> searchCep() async {
  var url = 'https://viacep.com.br/ws/62650000/json/';

  var response = await http.get(
    Uri.parse(url),
  );

  if (response.statusCode == 200) {
    var responseData = convert.jsonDecode(response.body);
    // print(response.body.runtimeType);
    // print(responseData.runtimeType);

    if (responseData is Map) {
      print(responseData['cep']);
      print(responseData['logradouro']);
      print(responseData['localidade']);
    }
  }
}

Future<void> searchCepError() async {
  var url = 'https://viacep.com.br/ws/99999999/json/';

  var response = await http.get(
    Uri.parse(url),
  );

  if (response.statusCode >= 200 && response.statusCode < 300) {
    var responseData = convert.jsonDecode(response.body);
    // print(response.body.runtimeType);
    // print(responseData.runtimeType);

    if (responseData is Map) {
      print(responseData['cep']);
      print(responseData['logradouro']);
      print(responseData['localidade']);
    }
  } else {
    print(response.statusCode);
    print(response.body);
    print(response.reasonPhrase);
    print('Has error! -> ${response.reasonPhrase}');
  }
}

Future<void> savePost() async {
  var url = 'https://jsonplaceholder.typicode.com/posts/';

  var mapRequest = {'title': 'New post', 'body': 'Description', 'userId': 1,};

  var response = await http.post(
    Uri.parse(url),
    body: convert.jsonEncode(mapRequest),
  );

  print(response);
  print(response.statusCode);
  print(response.body);
}

Future<void> updatePost() async {
  var url = 'https://jsonplaceholder.typicode.com/posts/1';

  var mapRequest = {
    'id': 1,
    'title': 'Change post',
    'body': 'Description',
    'userId': 1,
  };

  var response = await http.put(
    Uri.parse(url),
    body: convert.jsonEncode(mapRequest),
    headers: {
      'Content-type': 'application/json; charset=UTF-8',
    },
  );

  print(response);
  print(response.statusCode);
  print(response.body);
}

Future<void> searchPosts() async {
  var url = 'https://jsonplaceholder.typicode.com/posts/';

  var response = await http.get(
    Uri.parse(url),
  );

  if (response.statusCode == 200) {
    var responseData = convert.jsonDecode(response.body);
    //print(responseData.runtimeType);

    if (responseData is List) {
      // responseData.forEach((e) => print(e['id']),);
      for (var data in responseData) {
        print(data['id']);
      }
    }
  }
}
