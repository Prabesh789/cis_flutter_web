import 'package:cis_project/app/failure/failure.dart';
import 'package:cis_project/app_setup/dio/dio_client.dart';
import 'package:cis_project/app_setup/end_points/end_points.dart';
import 'package:cis_project/features/auth/infrastructure/entities/request/login_request/login_request.dart';
import 'package:cis_project/features/auth/infrastructure/entities/resonse/login_response/login_response.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final authRepository = Provider<IAuthRepository>((ref) {
  return AuthRepository(ref.read);
});

abstract class IAuthRepository {
  Future<Either<LoginResponse, Failure>> userLogin(
      {required LoginRequest loginRequest});
}

class AuthRepository implements IAuthRepository {
  AuthRepository(this._read);
  final Reader _read;
  // Dio get _dio => _read(dioProvider);
  final Dio _dio = Dio();

  @override
  Future<Either<LoginResponse, Failure>> userLogin({
    required LoginRequest loginRequest,
  }) async {
    try {
      final response = await _dio.post(Endpoints.loginEndpoint,
          data: loginRequest.toJson(),
          options: Options(headers: {
            'Accept': 'application/json',
            'Access-Control_Allow_Origin': '*'
          }));
      final result =
          LoginResponse.fromJson(response.data as Map<String, dynamic>);
      return Left(result);
    } on DioError catch (e) {
      return Right(e.toFailure);
    } catch (e) {
      return Right(Failure.fromException(e));
    }
  }
}
