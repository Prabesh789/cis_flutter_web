// import 'package:dio/dio.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// final baseUrlProvider =
//     Provider<String>((ref) => 'http://10.0.2.2/localhost/cis-project/api/');

// final dioProvider = Provider<Dio>((ref) {
//   final dio = Dio();
//   final baseUrl = ref.watch(baseUrlProvider);
//   dio.options.baseUrl = baseUrl;
//   dio.options.connectTimeout = 30000;
//   dio.options.receiveTimeout = 30000;
//   dio.options.contentType = Headers.jsonContentType;
//   dio.options.extra = <String, Object>{};
//   dio.interceptors.addAll([
//     LogInterceptor(),

//   ]);
//   return dio;
// });
