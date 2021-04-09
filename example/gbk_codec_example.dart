import 'package:gbk_codec/gbk_codec.dart';

// ignore: always_declare_return_types
main() {
  var text = 'dart GBK code 兩岸猿聲啼不住, chinese simple:轻舟已过万重山.';

  //gbk encode
  var gbkCodes = gbk.encode(text);
  var hex = '';
  gbkCodes.forEach((i) {
    hex += i.toRadixString(16) + ' ';
  });
  print(hex);

  //gbk decode
  var decoded_text = gbk.decode(gbkCodes);
  print(decoded_text);

  //gbk_bytes encode
  var gbk_byteCodes = gbk_bytes.encode(text);
  hex = '';
  gbk_byteCodes.forEach((i) {
    hex += i.toRadixString(16) + ' ';
  });
  print(hex);

  //gbk_bytes decode
  var decoded_bytes_text = gbk_bytes.decode(gbk_byteCodes);
  print(decoded_bytes_text);
}
