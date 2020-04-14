import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'data.dart';

main() async {
  var requestServer = await HttpServer.bind('192.168.134.1', 8080);
  print('http 启动......');
  await for (HttpRequest request in requestServer) {
    handleMessage(request);
  }
}

void handleMessage(HttpRequest request) {
  try {
    if (request.method == "GET") {
      handleGet(request);
    } else if (request.method == "POST") {
      handlePost(request);
    }
  } catch (e) {
    print(e.toString());
  }
}

void handleGet(HttpRequest request) {
  request.response
    ..write('request success ...')
    ..close();
}

void handlePost(HttpRequest request) {}
