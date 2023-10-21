//### GENERATED CODE, DO NOT EDIT ###

part of 'verification.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: type=lint
final class _$Verification extends Verification {
  _$Verification([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = Verification;

  @override
  Future<Response<Configuration>> _getOrSetConfiguration({
    String? dkey,
    Object? body,
  }) {
    final Uri $url = Uri.parse('/post/config');
    final Map<String, String> $headers = {
      if (dkey != null) 'dkey': dkey,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<Configuration, Configuration>($request);
  }

  @override
  Future<Response<RegistrationRes>> _registerUser({
    String? dkey,
    required Registration? body,
  }) {
    final Uri $url = Uri.parse('/post/register');
    final Map<String, String> $headers = {
      if (dkey != null) 'dkey': dkey,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<RegistrationRes, RegistrationRes>($request);
  }

  @override
  Future<Response<VerificationRes>> _verifyPin({
    String? dkey,
    required Object? body,
  }) {
    final Uri $url = Uri.parse('/post/verify');
    final Map<String, String> $headers = {
      if (dkey != null) 'dkey': dkey,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<VerificationRes, VerificationRes>($request);
  }

  @override
  Future<Response<VerificationRes>> _loginUser({
    String? dkey,
    required Login? body,
  }) {
    final Uri $url = Uri.parse('/post/login');
    final Map<String, String> $headers = {
      if (dkey != null) 'dkey': dkey,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<VerificationRes, VerificationRes>($request);
  }

  @override
  Future<Response<BaseRes>> _resetPassword({
    String? dkey,
    required ResetPassword? body,
  }) {
    final Uri $url = Uri.parse('/post/reset');
    final Map<String, String> $headers = {
      if (dkey != null) 'dkey': dkey,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<BaseRes, BaseRes>($request);
  }

  @override
  Future<Response<ForgotPasswordRes>> _forgotPassword({
    String? dkey,
    required ForgotPassword? body,
  }) {
    final Uri $url = Uri.parse('/post/forgot');
    final Map<String, String> $headers = {
      if (dkey != null) 'dkey': dkey,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<ForgotPasswordRes, ForgotPasswordRes>($request);
  }

  @override
  Future<Response<BaseRes>> _changePassword({
    String? dkey,
    required ChangePassword? body,
  }) {
    final Uri $url = Uri.parse('/post/change');
    final Map<String, String> $headers = {
      if (dkey != null) 'dkey': dkey,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<BaseRes, BaseRes>($request);
  }
}
