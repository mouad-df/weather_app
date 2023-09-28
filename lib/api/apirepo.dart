// ignore_for_file: public_member_api_docs, sort_constructors_first, unnecessary_null_comparison
import 'package:dio/dio.dart';

class ApiRepo {
  Dio? dio;
  String? url;
  Map<String, dynamic>? payload;

  ApiRepo({
    this.dio,
    this.url,
    this.payload,
  });

  void getData({
    required Function() beforeSend,
    required Function(Map<String, dynamic> data) onSuccess,
    required Function(dynamic error) onError,
  }) {
    
    //body methode
    dio!.get(url!, queryParameters: payload).then((response) {
      if (onSuccess != null) {
        onSuccess(response.data);
      }
    }).catchError((error) {
      onError(error);
    });

    
  }
  
}
