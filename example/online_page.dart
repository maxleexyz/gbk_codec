import 'dart:io';

import 'package:gbk_codec/gbk_codec.dart';

const String URL = 'http://www.creaders.net/about_us.html';

// ignore: always_declare_return_types
main() {
  HttpClient().getUrl(Uri.parse(URL)).then((HttpClientRequest request) {
    return request.close();
  }).then((response) {
    var full = <int>[];
    response.listen((data) => full.addAll(data),
        onDone: () => print(gbk_bytes.decode(full)), onError: (e) => print);
  });
}
