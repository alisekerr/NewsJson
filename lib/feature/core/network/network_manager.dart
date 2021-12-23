import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:news_json/feature/core/exception/emv_not_found.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';



class NetworkManager {
  static NetworkManager? _instance;
  static NetworkManager get instance {
    if (_instance != null) return _instance!;
    _instance = NetworkManager._init();
    return _instance!;
  }

  final String _baseUrl = "BASE_URL";
  late final Dio dio;
  NetworkManager._init() {
    final url = dotenv.env[_baseUrl];
    if (url != null) {
      dio = Dio(BaseOptions(baseUrl: url));
      //TEST LOG'U
   //  dio.interceptors.add(PrettyDioLogger());
  
    } else {
      throw EnvNotFound(value: _baseUrl);
    }
  }
}
