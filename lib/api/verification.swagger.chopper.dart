//### GENERATED CODE, DO NOT EDIT ###

part of 'verification.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$Verification extends Verification {
  _$Verification([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = Verification;

  @override
  Future<Response<AuthConfiguration>> _getOrSetConfiguration({String? dkey}) {
    final Uri $url = Uri.parse('/verification/config');
    final Map<String, String> $headers = {
      if (dkey != null) 'dkey': dkey,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<AuthConfiguration, AuthConfiguration>($request);
  }

  @override
  Future<Response<RegistrationRes>> _registerUser({
    String? dkey,
    required Registration? body,
  }) {
    final Uri $url = Uri.parse('/verification/register');
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
    required VerificationReq? body,
  }) {
    final Uri $url = Uri.parse('/verification/verify');
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
    final Uri $url = Uri.parse('/verification/login');
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
  Future<Response<MultiVerificationRes>> _loginUserSession({
    String? twinUser,
    required Login? body,
  }) {
    final Uri $url = Uri.parse('/verification/user/login');
    final Map<String, String> $headers = {
      if (twinUser != null) 'twinUser': twinUser,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<MultiVerificationRes, MultiVerificationRes>($request);
  }

  @override
  Future<Response<BaseRes>> _resetPassword({
    String? dkey,
    required ResetPassword? body,
  }) {
    final Uri $url = Uri.parse('/verification/reset');
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
    final Uri $url = Uri.parse('/verification/forgot');
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
    final Uri $url = Uri.parse('/verification/change');
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
