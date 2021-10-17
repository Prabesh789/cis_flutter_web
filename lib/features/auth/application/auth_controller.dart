import 'package:cis_project/core/base_state/base_state.dart';
import 'package:cis_project/features/auth/infrastructure/entities/request/login_request/login_request.dart';
import 'package:cis_project/features/auth/infrastructure/entities/resonse/login_response/login_response.dart';
import 'package:cis_project/features/auth/infrastructure/repo/auth_repository.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

AuthController<T> authController<T>(ProviderReference ref) {
  final cancelToken = CancelToken();
  ref.onDispose(cancelToken.cancel);
  return AuthController<T>(ref.read, cancelToken: cancelToken);
}

class AuthController<T> extends StateNotifier<BaseState> {
  AuthController(this._read, {required this.cancelToken})
      : super(const BaseState<void>.initial());
  final CancelToken cancelToken;

  final Reader _read;

  IAuthRepository get _authRepository => _read(authRepository);

  Future<void> userLogin({
    required LoginRequest loginRequest,
  }) async {
    state = const BaseState.loading();

    final response = await _authRepository.userLogin(
      loginRequest: loginRequest,
    );
    state = response.fold(
      (data) => BaseState<LoginResponse>.success(data: data),
      (error) => BaseState.error(
        error,
      ),
    );
  }
}
