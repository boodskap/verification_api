// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:http/http.dart' show MultipartFile;
import 'package:chopper/chopper.dart' as chopper;

part 'verification.swagger.chopper.dart';
part 'verification.swagger.g.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class Verification extends ChopperService {
  static Verification create({
    ChopperClient? client,
    http.Client? httpClient,
    Authenticator? authenticator,
    ErrorConverter? errorConverter,
    Converter? converter,
    Uri? baseUrl,
    Iterable<dynamic>? interceptors,
  }) {
    if (client != null) {
      return _$Verification(client);
    }

    final newClient = ChopperClient(
        services: [_$Verification()],
        converter: converter ?? $JsonSerializableConverter(),
        interceptors: interceptors ?? [],
        client: httpClient,
        authenticator: authenticator,
        errorConverter: errorConverter,
        baseUrl: baseUrl ?? Uri.parse('http://rest.boodskap.io/rest/nocode'));
    return _$Verification(newClient);
  }

  ///Get Configuration
  ///@param dkey
  Future<chopper.Response<AuthConfiguration>> getOrSetConfiguration(
      {String? dkey}) {
    generatedMapping.putIfAbsent(
        AuthConfiguration, () => AuthConfiguration.fromJsonFactory);

    return _getOrSetConfiguration(dkey: dkey?.toString());
  }

  ///Get Configuration
  ///@param dkey
  @Get(path: '/verification/config')
  Future<chopper.Response<AuthConfiguration>> _getOrSetConfiguration(
      {@Header('dkey') String? dkey});

  ///Do Registration
  ///@param dkey
  ///@param body
  Future<chopper.Response<RegistrationRes>> registerUser({
    String? dkey,
    required Registration? body,
  }) {
    generatedMapping.putIfAbsent(
        Registration, () => Registration.fromJsonFactory);
    generatedMapping.putIfAbsent(
        RegistrationRes, () => RegistrationRes.fromJsonFactory);

    return _registerUser(dkey: dkey?.toString(), body: body);
  }

  ///Do Registration
  ///@param dkey
  ///@param body
  @Post(path: '/verification/register')
  Future<chopper.Response<RegistrationRes>> _registerUser({
    @Header('dkey') String? dkey,
    @Body() required Registration? body,
  });

  ///Do Verification
  ///@param dkey
  ///@param body
  Future<chopper.Response<VerificationRes>> verifyPin({
    String? dkey,
    required VerificationReq? body,
  }) {
    generatedMapping.putIfAbsent(
        VerificationReq, () => VerificationReq.fromJsonFactory);
    generatedMapping.putIfAbsent(
        VerificationRes, () => VerificationRes.fromJsonFactory);

    return _verifyPin(dkey: dkey?.toString(), body: body);
  }

  ///Do Verification
  ///@param dkey
  ///@param body
  @Post(path: '/verification/verify')
  Future<chopper.Response<VerificationRes>> _verifyPin({
    @Header('dkey') String? dkey,
    @Body() required VerificationReq? body,
  });

  ///Do Login
  ///@param dkey
  ///@param body
  Future<chopper.Response<VerificationRes>> loginUser({
    String? dkey,
    required Login? body,
  }) {
    generatedMapping.putIfAbsent(Login, () => Login.fromJsonFactory);
    generatedMapping.putIfAbsent(
        VerificationRes, () => VerificationRes.fromJsonFactory);

    return _loginUser(dkey: dkey?.toString(), body: body);
  }

  ///Do Login
  ///@param dkey
  ///@param body
  @Post(path: '/verification/login')
  Future<chopper.Response<VerificationRes>> _loginUser({
    @Header('dkey') String? dkey,
    @Body() required Login? body,
  });

  ///Do Login
  ///@param twinUser
  ///@param body
  Future<chopper.Response<MultiVerificationRes>> loginUserSession({
    bool? twinUser,
    required Login? body,
  }) {
    generatedMapping.putIfAbsent(Login, () => Login.fromJsonFactory);
    generatedMapping.putIfAbsent(
        MultiVerificationRes, () => MultiVerificationRes.fromJsonFactory);

    return _loginUserSession(twinUser: twinUser?.toString(), body: body);
  }

  ///Do Login
  ///@param twinUser
  ///@param body
  @Post(path: '/verification/user/login')
  Future<chopper.Response<MultiVerificationRes>> _loginUserSession({
    @Header('twinUser') String? twinUser,
    @Body() required Login? body,
  });

  ///Reset password
  ///@param dkey
  ///@param body
  Future<chopper.Response<BaseRes>> resetPassword({
    String? dkey,
    required ResetPassword? body,
  }) {
    generatedMapping.putIfAbsent(
        ResetPassword, () => ResetPassword.fromJsonFactory);
    generatedMapping.putIfAbsent(BaseRes, () => BaseRes.fromJsonFactory);

    return _resetPassword(dkey: dkey?.toString(), body: body);
  }

  ///Reset password
  ///@param dkey
  ///@param body
  @Post(path: '/verification/reset')
  Future<chopper.Response<BaseRes>> _resetPassword({
    @Header('dkey') String? dkey,
    @Body() required ResetPassword? body,
  });

  ///Forgot password
  ///@param dkey
  ///@param body
  Future<chopper.Response<ForgotPasswordRes>> forgotPassword({
    String? dkey,
    required ForgotPassword? body,
  }) {
    generatedMapping.putIfAbsent(
        ForgotPassword, () => ForgotPassword.fromJsonFactory);
    generatedMapping.putIfAbsent(
        ForgotPasswordRes, () => ForgotPasswordRes.fromJsonFactory);

    return _forgotPassword(dkey: dkey?.toString(), body: body);
  }

  ///Forgot password
  ///@param dkey
  ///@param body
  @Post(path: '/verification/forgot')
  Future<chopper.Response<ForgotPasswordRes>> _forgotPassword({
    @Header('dkey') String? dkey,
    @Body() required ForgotPassword? body,
  });

  ///Change password
  ///@param dkey
  ///@param body
  Future<chopper.Response<BaseRes>> changePassword({
    String? dkey,
    required ChangePassword? body,
  }) {
    generatedMapping.putIfAbsent(
        ChangePassword, () => ChangePassword.fromJsonFactory);
    generatedMapping.putIfAbsent(BaseRes, () => BaseRes.fromJsonFactory);

    return _changePassword(dkey: dkey?.toString(), body: body);
  }

  ///Change password
  ///@param dkey
  ///@param body
  @Post(path: '/verification/change')
  Future<chopper.Response<BaseRes>> _changePassword({
    @Header('dkey') String? dkey,
    @Body() required ChangePassword? body,
  });
}

@JsonSerializable(explicitToJson: true)
class BaseRes {
  const BaseRes({
    required this.ok,
    this.msg,
    this.trace,
  });

  factory BaseRes.fromJson(Map<String, dynamic> json) =>
      _$BaseResFromJson(json);

  static const toJsonFactory = _$BaseResToJson;
  Map<String, dynamic> toJson() => _$BaseResToJson(this);

  @JsonKey(name: 'ok', includeIfNull: false)
  final bool ok;
  @JsonKey(name: 'msg', includeIfNull: false, defaultValue: '')
  final String? msg;
  @JsonKey(name: 'trace', includeIfNull: false, defaultValue: '')
  final String? trace;
  static const fromJsonFactory = _$BaseResFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is BaseRes &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)) &&
            (identical(other.trace, trace) ||
                const DeepCollectionEquality().equals(other.trace, trace)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(msg) ^
      const DeepCollectionEquality().hash(trace) ^
      runtimeType.hashCode;
}

extension $BaseResExtension on BaseRes {
  BaseRes copyWith({bool? ok, String? msg, String? trace}) {
    return BaseRes(
        ok: ok ?? this.ok, msg: msg ?? this.msg, trace: trace ?? this.trace);
  }

  BaseRes copyWithWrapped(
      {Wrapped<bool>? ok, Wrapped<String?>? msg, Wrapped<String?>? trace}) {
    return BaseRes(
        ok: (ok != null ? ok.value : this.ok),
        msg: (msg != null ? msg.value : this.msg),
        trace: (trace != null ? trace.value : this.trace));
  }
}

@JsonSerializable(explicitToJson: true)
class AuthConfigurationBase {
  const AuthConfigurationBase({
    this.enablePhoneVerification,
  });

  factory AuthConfigurationBase.fromJson(Map<String, dynamic> json) =>
      _$AuthConfigurationBaseFromJson(json);

  static const toJsonFactory = _$AuthConfigurationBaseToJson;
  Map<String, dynamic> toJson() => _$AuthConfigurationBaseToJson(this);

  @JsonKey(name: 'enablePhoneVerification', includeIfNull: false)
  final bool? enablePhoneVerification;
  static const fromJsonFactory = _$AuthConfigurationBaseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AuthConfigurationBase &&
            (identical(
                    other.enablePhoneVerification, enablePhoneVerification) ||
                const DeepCollectionEquality().equals(
                    other.enablePhoneVerification, enablePhoneVerification)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(enablePhoneVerification) ^
      runtimeType.hashCode;
}

extension $AuthConfigurationBaseExtension on AuthConfigurationBase {
  AuthConfigurationBase copyWith({bool? enablePhoneVerification}) {
    return AuthConfigurationBase(
        enablePhoneVerification:
            enablePhoneVerification ?? this.enablePhoneVerification);
  }

  AuthConfigurationBase copyWithWrapped(
      {Wrapped<bool?>? enablePhoneVerification}) {
    return AuthConfigurationBase(
        enablePhoneVerification: (enablePhoneVerification != null
            ? enablePhoneVerification.value
            : this.enablePhoneVerification));
  }
}

@JsonSerializable(explicitToJson: true)
class AuthConfiguration {
  const AuthConfiguration({
    required this.ok,
    this.msg,
    this.trace,
    this.enablePhoneVerification,
  });

  factory AuthConfiguration.fromJson(Map<String, dynamic> json) =>
      _$AuthConfigurationFromJson(json);

  static const toJsonFactory = _$AuthConfigurationToJson;
  Map<String, dynamic> toJson() => _$AuthConfigurationToJson(this);

  @JsonKey(name: 'ok', includeIfNull: false)
  final bool ok;
  @JsonKey(name: 'msg', includeIfNull: false, defaultValue: '')
  final String? msg;
  @JsonKey(name: 'trace', includeIfNull: false, defaultValue: '')
  final String? trace;
  @JsonKey(name: 'enablePhoneVerification', includeIfNull: false)
  final bool? enablePhoneVerification;
  static const fromJsonFactory = _$AuthConfigurationFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AuthConfiguration &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)) &&
            (identical(other.trace, trace) ||
                const DeepCollectionEquality().equals(other.trace, trace)) &&
            (identical(
                    other.enablePhoneVerification, enablePhoneVerification) ||
                const DeepCollectionEquality().equals(
                    other.enablePhoneVerification, enablePhoneVerification)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(msg) ^
      const DeepCollectionEquality().hash(trace) ^
      const DeepCollectionEquality().hash(enablePhoneVerification) ^
      runtimeType.hashCode;
}

extension $AuthConfigurationExtension on AuthConfiguration {
  AuthConfiguration copyWith(
      {bool? ok, String? msg, String? trace, bool? enablePhoneVerification}) {
    return AuthConfiguration(
        ok: ok ?? this.ok,
        msg: msg ?? this.msg,
        trace: trace ?? this.trace,
        enablePhoneVerification:
            enablePhoneVerification ?? this.enablePhoneVerification);
  }

  AuthConfiguration copyWithWrapped(
      {Wrapped<bool>? ok,
      Wrapped<String?>? msg,
      Wrapped<String?>? trace,
      Wrapped<bool?>? enablePhoneVerification}) {
    return AuthConfiguration(
        ok: (ok != null ? ok.value : this.ok),
        msg: (msg != null ? msg.value : this.msg),
        trace: (trace != null ? trace.value : this.trace),
        enablePhoneVerification: (enablePhoneVerification != null
            ? enablePhoneVerification.value
            : this.enablePhoneVerification));
  }
}

@JsonSerializable(explicitToJson: true)
class Login {
  const Login({
    required this.userId,
    required this.password,
  });

  factory Login.fromJson(Map<String, dynamic> json) => _$LoginFromJson(json);

  static const toJsonFactory = _$LoginToJson;
  Map<String, dynamic> toJson() => _$LoginToJson(this);

  @JsonKey(name: 'userId', includeIfNull: false, defaultValue: '')
  final String userId;
  @JsonKey(name: 'password', includeIfNull: false, defaultValue: '')
  final String password;
  static const fromJsonFactory = _$LoginFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Login &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(password) ^
      runtimeType.hashCode;
}

extension $LoginExtension on Login {
  Login copyWith({String? userId, String? password}) {
    return Login(
        userId: userId ?? this.userId, password: password ?? this.password);
  }

  Login copyWithWrapped({Wrapped<String>? userId, Wrapped<String>? password}) {
    return Login(
        userId: (userId != null ? userId.value : this.userId),
        password: (password != null ? password.value : this.password));
  }
}

@JsonSerializable(explicitToJson: true)
class Registration {
  const Registration({
    this.email,
    this.phone,
    required this.roles,
    required this.subject,
    required this.template,
    required this.fname,
    required this.lname,
    this.properties,
  });

  factory Registration.fromJson(Map<String, dynamic> json) =>
      _$RegistrationFromJson(json);

  static const toJsonFactory = _$RegistrationToJson;
  Map<String, dynamic> toJson() => _$RegistrationToJson(this);

  @JsonKey(name: 'email', includeIfNull: false, defaultValue: '')
  final String? email;
  @JsonKey(name: 'phone', includeIfNull: false, defaultValue: '')
  final String? phone;
  @JsonKey(name: 'roles', includeIfNull: false, defaultValue: <String>[])
  final List<String> roles;
  @JsonKey(name: 'subject', includeIfNull: false, defaultValue: '')
  final String subject;
  @JsonKey(name: 'template', includeIfNull: false, defaultValue: '')
  final String template;
  @JsonKey(name: 'fname', includeIfNull: false, defaultValue: '')
  final String fname;
  @JsonKey(name: 'lname', includeIfNull: false, defaultValue: '')
  final String lname;
  @JsonKey(name: 'properties', includeIfNull: false)
  final Object? properties;
  static const fromJsonFactory = _$RegistrationFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Registration &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.roles, roles) ||
                const DeepCollectionEquality().equals(other.roles, roles)) &&
            (identical(other.subject, subject) ||
                const DeepCollectionEquality()
                    .equals(other.subject, subject)) &&
            (identical(other.template, template) ||
                const DeepCollectionEquality()
                    .equals(other.template, template)) &&
            (identical(other.fname, fname) ||
                const DeepCollectionEquality().equals(other.fname, fname)) &&
            (identical(other.lname, lname) ||
                const DeepCollectionEquality().equals(other.lname, lname)) &&
            (identical(other.properties, properties) ||
                const DeepCollectionEquality()
                    .equals(other.properties, properties)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(roles) ^
      const DeepCollectionEquality().hash(subject) ^
      const DeepCollectionEquality().hash(template) ^
      const DeepCollectionEquality().hash(fname) ^
      const DeepCollectionEquality().hash(lname) ^
      const DeepCollectionEquality().hash(properties) ^
      runtimeType.hashCode;
}

extension $RegistrationExtension on Registration {
  Registration copyWith(
      {String? email,
      String? phone,
      List<String>? roles,
      String? subject,
      String? template,
      String? fname,
      String? lname,
      Object? properties}) {
    return Registration(
        email: email ?? this.email,
        phone: phone ?? this.phone,
        roles: roles ?? this.roles,
        subject: subject ?? this.subject,
        template: template ?? this.template,
        fname: fname ?? this.fname,
        lname: lname ?? this.lname,
        properties: properties ?? this.properties);
  }

  Registration copyWithWrapped(
      {Wrapped<String?>? email,
      Wrapped<String?>? phone,
      Wrapped<List<String>>? roles,
      Wrapped<String>? subject,
      Wrapped<String>? template,
      Wrapped<String>? fname,
      Wrapped<String>? lname,
      Wrapped<Object?>? properties}) {
    return Registration(
        email: (email != null ? email.value : this.email),
        phone: (phone != null ? phone.value : this.phone),
        roles: (roles != null ? roles.value : this.roles),
        subject: (subject != null ? subject.value : this.subject),
        template: (template != null ? template.value : this.template),
        fname: (fname != null ? fname.value : this.fname),
        lname: (lname != null ? lname.value : this.lname),
        properties: (properties != null ? properties.value : this.properties));
  }
}

@JsonSerializable(explicitToJson: true)
class RegistrationRes {
  const RegistrationRes({
    required this.ok,
    this.msg,
    this.trace,
    this.pinToken,
    this.authToken,
    this.delivery,
  });

  factory RegistrationRes.fromJson(Map<String, dynamic> json) =>
      _$RegistrationResFromJson(json);

  static const toJsonFactory = _$RegistrationResToJson;
  Map<String, dynamic> toJson() => _$RegistrationResToJson(this);

  @JsonKey(name: 'ok', includeIfNull: false)
  final bool ok;
  @JsonKey(name: 'msg', includeIfNull: false, defaultValue: '')
  final String? msg;
  @JsonKey(name: 'trace', includeIfNull: false, defaultValue: '')
  final String? trace;
  @JsonKey(name: 'pinToken', includeIfNull: false, defaultValue: '')
  final String? pinToken;
  @JsonKey(name: 'authToken', includeIfNull: false, defaultValue: '')
  final String? authToken;
  @JsonKey(name: 'delivery', includeIfNull: false)
  final Object? delivery;
  static const fromJsonFactory = _$RegistrationResFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is RegistrationRes &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)) &&
            (identical(other.trace, trace) ||
                const DeepCollectionEquality().equals(other.trace, trace)) &&
            (identical(other.pinToken, pinToken) ||
                const DeepCollectionEquality()
                    .equals(other.pinToken, pinToken)) &&
            (identical(other.authToken, authToken) ||
                const DeepCollectionEquality()
                    .equals(other.authToken, authToken)) &&
            (identical(other.delivery, delivery) ||
                const DeepCollectionEquality()
                    .equals(other.delivery, delivery)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(msg) ^
      const DeepCollectionEquality().hash(trace) ^
      const DeepCollectionEquality().hash(pinToken) ^
      const DeepCollectionEquality().hash(authToken) ^
      const DeepCollectionEquality().hash(delivery) ^
      runtimeType.hashCode;
}

extension $RegistrationResExtension on RegistrationRes {
  RegistrationRes copyWith(
      {bool? ok,
      String? msg,
      String? trace,
      String? pinToken,
      String? authToken,
      Object? delivery}) {
    return RegistrationRes(
        ok: ok ?? this.ok,
        msg: msg ?? this.msg,
        trace: trace ?? this.trace,
        pinToken: pinToken ?? this.pinToken,
        authToken: authToken ?? this.authToken,
        delivery: delivery ?? this.delivery);
  }

  RegistrationRes copyWithWrapped(
      {Wrapped<bool>? ok,
      Wrapped<String?>? msg,
      Wrapped<String?>? trace,
      Wrapped<String?>? pinToken,
      Wrapped<String?>? authToken,
      Wrapped<Object?>? delivery}) {
    return RegistrationRes(
        ok: (ok != null ? ok.value : this.ok),
        msg: (msg != null ? msg.value : this.msg),
        trace: (trace != null ? trace.value : this.trace),
        pinToken: (pinToken != null ? pinToken.value : this.pinToken),
        authToken: (authToken != null ? authToken.value : this.authToken),
        delivery: (delivery != null ? delivery.value : this.delivery));
  }
}

@JsonSerializable(explicitToJson: true)
class VerificationReq {
  const VerificationReq({
    required this.pinToken,
    required this.pin,
  });

  factory VerificationReq.fromJson(Map<String, dynamic> json) =>
      _$VerificationReqFromJson(json);

  static const toJsonFactory = _$VerificationReqToJson;
  Map<String, dynamic> toJson() => _$VerificationReqToJson(this);

  @JsonKey(name: 'pinToken', includeIfNull: false, defaultValue: '')
  final String pinToken;
  @JsonKey(name: 'pin', includeIfNull: false, defaultValue: '')
  final String pin;
  static const fromJsonFactory = _$VerificationReqFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is VerificationReq &&
            (identical(other.pinToken, pinToken) ||
                const DeepCollectionEquality()
                    .equals(other.pinToken, pinToken)) &&
            (identical(other.pin, pin) ||
                const DeepCollectionEquality().equals(other.pin, pin)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(pinToken) ^
      const DeepCollectionEquality().hash(pin) ^
      runtimeType.hashCode;
}

extension $VerificationReqExtension on VerificationReq {
  VerificationReq copyWith({String? pinToken, String? pin}) {
    return VerificationReq(
        pinToken: pinToken ?? this.pinToken, pin: pin ?? this.pin);
  }

  VerificationReq copyWithWrapped(
      {Wrapped<String>? pinToken, Wrapped<String>? pin}) {
    return VerificationReq(
        pinToken: (pinToken != null ? pinToken.value : this.pinToken),
        pin: (pin != null ? pin.value : this.pin));
  }
}

@JsonSerializable(explicitToJson: true)
class PlatformUser {
  const PlatformUser({
    this.email,
    this.domainKey,
    this.firstName,
    this.lastName,
    this.country,
    this.state,
    this.city,
    this.address,
    this.zipcode,
    this.roles,
  });

  factory PlatformUser.fromJson(Map<String, dynamic> json) =>
      _$PlatformUserFromJson(json);

  static const toJsonFactory = _$PlatformUserToJson;
  Map<String, dynamic> toJson() => _$PlatformUserToJson(this);

  @JsonKey(name: 'email', includeIfNull: false, defaultValue: '')
  final String? email;
  @JsonKey(name: 'domainKey', includeIfNull: false, defaultValue: '')
  final String? domainKey;
  @JsonKey(name: 'firstName', includeIfNull: false, defaultValue: '')
  final String? firstName;
  @JsonKey(name: 'lastName', includeIfNull: false, defaultValue: '')
  final String? lastName;
  @JsonKey(name: 'country', includeIfNull: false, defaultValue: '')
  final String? country;
  @JsonKey(name: 'state', includeIfNull: false, defaultValue: '')
  final String? state;
  @JsonKey(name: 'city', includeIfNull: false, defaultValue: '')
  final String? city;
  @JsonKey(name: 'address', includeIfNull: false, defaultValue: '')
  final String? address;
  @JsonKey(name: 'zipcode', includeIfNull: false, defaultValue: '')
  final String? zipcode;
  @JsonKey(name: 'roles', includeIfNull: false, defaultValue: <String>[])
  final List<String>? roles;
  static const fromJsonFactory = _$PlatformUserFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PlatformUser &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.domainKey, domainKey) ||
                const DeepCollectionEquality()
                    .equals(other.domainKey, domainKey)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.zipcode, zipcode) ||
                const DeepCollectionEquality()
                    .equals(other.zipcode, zipcode)) &&
            (identical(other.roles, roles) ||
                const DeepCollectionEquality().equals(other.roles, roles)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(domainKey) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(zipcode) ^
      const DeepCollectionEquality().hash(roles) ^
      runtimeType.hashCode;
}

extension $PlatformUserExtension on PlatformUser {
  PlatformUser copyWith(
      {String? email,
      String? domainKey,
      String? firstName,
      String? lastName,
      String? country,
      String? state,
      String? city,
      String? address,
      String? zipcode,
      List<String>? roles}) {
    return PlatformUser(
        email: email ?? this.email,
        domainKey: domainKey ?? this.domainKey,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        country: country ?? this.country,
        state: state ?? this.state,
        city: city ?? this.city,
        address: address ?? this.address,
        zipcode: zipcode ?? this.zipcode,
        roles: roles ?? this.roles);
  }

  PlatformUser copyWithWrapped(
      {Wrapped<String?>? email,
      Wrapped<String?>? domainKey,
      Wrapped<String?>? firstName,
      Wrapped<String?>? lastName,
      Wrapped<String?>? country,
      Wrapped<String?>? state,
      Wrapped<String?>? city,
      Wrapped<String?>? address,
      Wrapped<String?>? zipcode,
      Wrapped<List<String>?>? roles}) {
    return PlatformUser(
        email: (email != null ? email.value : this.email),
        domainKey: (domainKey != null ? domainKey.value : this.domainKey),
        firstName: (firstName != null ? firstName.value : this.firstName),
        lastName: (lastName != null ? lastName.value : this.lastName),
        country: (country != null ? country.value : this.country),
        state: (state != null ? state.value : this.state),
        city: (city != null ? city.value : this.city),
        address: (address != null ? address.value : this.address),
        zipcode: (zipcode != null ? zipcode.value : this.zipcode),
        roles: (roles != null ? roles.value : this.roles));
  }
}

@JsonSerializable(explicitToJson: true)
class PlatformSession {
  const PlatformSession({
    required this.authToken,
    required this.connCounter,
    this.orgId,
    required this.user,
  });

  factory PlatformSession.fromJson(Map<String, dynamic> json) =>
      _$PlatformSessionFromJson(json);

  static const toJsonFactory = _$PlatformSessionToJson;
  Map<String, dynamic> toJson() => _$PlatformSessionToJson(this);

  @JsonKey(name: 'authToken', includeIfNull: false, defaultValue: '')
  final String authToken;
  @JsonKey(name: 'connCounter', includeIfNull: false)
  final int connCounter;
  @JsonKey(name: 'orgId', includeIfNull: false, defaultValue: '')
  final String? orgId;
  @JsonKey(name: 'user', includeIfNull: false)
  final PlatformUser user;
  static const fromJsonFactory = _$PlatformSessionFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PlatformSession &&
            (identical(other.authToken, authToken) ||
                const DeepCollectionEquality()
                    .equals(other.authToken, authToken)) &&
            (identical(other.connCounter, connCounter) ||
                const DeepCollectionEquality()
                    .equals(other.connCounter, connCounter)) &&
            (identical(other.orgId, orgId) ||
                const DeepCollectionEquality().equals(other.orgId, orgId)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(authToken) ^
      const DeepCollectionEquality().hash(connCounter) ^
      const DeepCollectionEquality().hash(orgId) ^
      const DeepCollectionEquality().hash(user) ^
      runtimeType.hashCode;
}

extension $PlatformSessionExtension on PlatformSession {
  PlatformSession copyWith(
      {String? authToken,
      int? connCounter,
      String? orgId,
      PlatformUser? user}) {
    return PlatformSession(
        authToken: authToken ?? this.authToken,
        connCounter: connCounter ?? this.connCounter,
        orgId: orgId ?? this.orgId,
        user: user ?? this.user);
  }

  PlatformSession copyWithWrapped(
      {Wrapped<String>? authToken,
      Wrapped<int>? connCounter,
      Wrapped<String?>? orgId,
      Wrapped<PlatformUser>? user}) {
    return PlatformSession(
        authToken: (authToken != null ? authToken.value : this.authToken),
        connCounter:
            (connCounter != null ? connCounter.value : this.connCounter),
        orgId: (orgId != null ? orgId.value : this.orgId),
        user: (user != null ? user.value : this.user));
  }
}

@JsonSerializable(explicitToJson: true)
class VerificationRes {
  const VerificationRes({
    required this.ok,
    this.msg,
    this.trace,
    this.authToken,
    this.connCounter,
    this.user,
    this.properties,
    this.code,
  });

  factory VerificationRes.fromJson(Map<String, dynamic> json) =>
      _$VerificationResFromJson(json);

  static const toJsonFactory = _$VerificationResToJson;
  Map<String, dynamic> toJson() => _$VerificationResToJson(this);

  @JsonKey(name: 'ok', includeIfNull: false)
  final bool ok;
  @JsonKey(name: 'msg', includeIfNull: false, defaultValue: '')
  final String? msg;
  @JsonKey(name: 'trace', includeIfNull: false, defaultValue: '')
  final String? trace;
  @JsonKey(name: 'authToken', includeIfNull: false, defaultValue: '')
  final String? authToken;
  @JsonKey(name: 'connCounter', includeIfNull: false)
  final int? connCounter;
  @JsonKey(name: 'user', includeIfNull: false)
  final PlatformUser? user;
  @JsonKey(name: 'properties', includeIfNull: false)
  final Object? properties;
  @JsonKey(name: 'code', includeIfNull: false)
  final int? code;
  static const fromJsonFactory = _$VerificationResFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is VerificationRes &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)) &&
            (identical(other.trace, trace) ||
                const DeepCollectionEquality().equals(other.trace, trace)) &&
            (identical(other.authToken, authToken) ||
                const DeepCollectionEquality()
                    .equals(other.authToken, authToken)) &&
            (identical(other.connCounter, connCounter) ||
                const DeepCollectionEquality()
                    .equals(other.connCounter, connCounter)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.properties, properties) ||
                const DeepCollectionEquality()
                    .equals(other.properties, properties)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(msg) ^
      const DeepCollectionEquality().hash(trace) ^
      const DeepCollectionEquality().hash(authToken) ^
      const DeepCollectionEquality().hash(connCounter) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(properties) ^
      const DeepCollectionEquality().hash(code) ^
      runtimeType.hashCode;
}

extension $VerificationResExtension on VerificationRes {
  VerificationRes copyWith(
      {bool? ok,
      String? msg,
      String? trace,
      String? authToken,
      int? connCounter,
      PlatformUser? user,
      Object? properties,
      int? code}) {
    return VerificationRes(
        ok: ok ?? this.ok,
        msg: msg ?? this.msg,
        trace: trace ?? this.trace,
        authToken: authToken ?? this.authToken,
        connCounter: connCounter ?? this.connCounter,
        user: user ?? this.user,
        properties: properties ?? this.properties,
        code: code ?? this.code);
  }

  VerificationRes copyWithWrapped(
      {Wrapped<bool>? ok,
      Wrapped<String?>? msg,
      Wrapped<String?>? trace,
      Wrapped<String?>? authToken,
      Wrapped<int?>? connCounter,
      Wrapped<PlatformUser?>? user,
      Wrapped<Object?>? properties,
      Wrapped<int?>? code}) {
    return VerificationRes(
        ok: (ok != null ? ok.value : this.ok),
        msg: (msg != null ? msg.value : this.msg),
        trace: (trace != null ? trace.value : this.trace),
        authToken: (authToken != null ? authToken.value : this.authToken),
        connCounter:
            (connCounter != null ? connCounter.value : this.connCounter),
        user: (user != null ? user.value : this.user),
        properties: (properties != null ? properties.value : this.properties),
        code: (code != null ? code.value : this.code));
  }
}

@JsonSerializable(explicitToJson: true)
class MultiVerificationRes {
  const MultiVerificationRes({
    required this.ok,
    this.msg,
    this.trace,
    this.sessions,
    this.properties,
    this.code,
  });

  factory MultiVerificationRes.fromJson(Map<String, dynamic> json) =>
      _$MultiVerificationResFromJson(json);

  static const toJsonFactory = _$MultiVerificationResToJson;
  Map<String, dynamic> toJson() => _$MultiVerificationResToJson(this);

  @JsonKey(name: 'ok', includeIfNull: false)
  final bool ok;
  @JsonKey(name: 'msg', includeIfNull: false, defaultValue: '')
  final String? msg;
  @JsonKey(name: 'trace', includeIfNull: false, defaultValue: '')
  final String? trace;
  @JsonKey(
      name: 'sessions', includeIfNull: false, defaultValue: <PlatformSession>[])
  final List<PlatformSession>? sessions;
  @JsonKey(name: 'properties', includeIfNull: false)
  final Object? properties;
  @JsonKey(name: 'code', includeIfNull: false)
  final int? code;
  static const fromJsonFactory = _$MultiVerificationResFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is MultiVerificationRes &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)) &&
            (identical(other.trace, trace) ||
                const DeepCollectionEquality().equals(other.trace, trace)) &&
            (identical(other.sessions, sessions) ||
                const DeepCollectionEquality()
                    .equals(other.sessions, sessions)) &&
            (identical(other.properties, properties) ||
                const DeepCollectionEquality()
                    .equals(other.properties, properties)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(msg) ^
      const DeepCollectionEquality().hash(trace) ^
      const DeepCollectionEquality().hash(sessions) ^
      const DeepCollectionEquality().hash(properties) ^
      const DeepCollectionEquality().hash(code) ^
      runtimeType.hashCode;
}

extension $MultiVerificationResExtension on MultiVerificationRes {
  MultiVerificationRes copyWith(
      {bool? ok,
      String? msg,
      String? trace,
      List<PlatformSession>? sessions,
      Object? properties,
      int? code}) {
    return MultiVerificationRes(
        ok: ok ?? this.ok,
        msg: msg ?? this.msg,
        trace: trace ?? this.trace,
        sessions: sessions ?? this.sessions,
        properties: properties ?? this.properties,
        code: code ?? this.code);
  }

  MultiVerificationRes copyWithWrapped(
      {Wrapped<bool>? ok,
      Wrapped<String?>? msg,
      Wrapped<String?>? trace,
      Wrapped<List<PlatformSession>?>? sessions,
      Wrapped<Object?>? properties,
      Wrapped<int?>? code}) {
    return MultiVerificationRes(
        ok: (ok != null ? ok.value : this.ok),
        msg: (msg != null ? msg.value : this.msg),
        trace: (trace != null ? trace.value : this.trace),
        sessions: (sessions != null ? sessions.value : this.sessions),
        properties: (properties != null ? properties.value : this.properties),
        code: (code != null ? code.value : this.code));
  }
}

@JsonSerializable(explicitToJson: true)
class ResetPassword {
  const ResetPassword({
    this.userId,
    this.pinToken,
    this.pin,
    this.password,
  });

  factory ResetPassword.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordFromJson(json);

  static const toJsonFactory = _$ResetPasswordToJson;
  Map<String, dynamic> toJson() => _$ResetPasswordToJson(this);

  @JsonKey(name: 'userId', includeIfNull: false, defaultValue: '')
  final String? userId;
  @JsonKey(name: 'pinToken', includeIfNull: false, defaultValue: '')
  final String? pinToken;
  @JsonKey(name: 'pin', includeIfNull: false, defaultValue: '')
  final String? pin;
  @JsonKey(name: 'password', includeIfNull: false, defaultValue: '')
  final String? password;
  static const fromJsonFactory = _$ResetPasswordFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ResetPassword &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.pinToken, pinToken) ||
                const DeepCollectionEquality()
                    .equals(other.pinToken, pinToken)) &&
            (identical(other.pin, pin) ||
                const DeepCollectionEquality().equals(other.pin, pin)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(pinToken) ^
      const DeepCollectionEquality().hash(pin) ^
      const DeepCollectionEquality().hash(password) ^
      runtimeType.hashCode;
}

extension $ResetPasswordExtension on ResetPassword {
  ResetPassword copyWith(
      {String? userId, String? pinToken, String? pin, String? password}) {
    return ResetPassword(
        userId: userId ?? this.userId,
        pinToken: pinToken ?? this.pinToken,
        pin: pin ?? this.pin,
        password: password ?? this.password);
  }

  ResetPassword copyWithWrapped(
      {Wrapped<String?>? userId,
      Wrapped<String?>? pinToken,
      Wrapped<String?>? pin,
      Wrapped<String?>? password}) {
    return ResetPassword(
        userId: (userId != null ? userId.value : this.userId),
        pinToken: (pinToken != null ? pinToken.value : this.pinToken),
        pin: (pin != null ? pin.value : this.pin),
        password: (password != null ? password.value : this.password));
  }
}

@JsonSerializable(explicitToJson: true)
class ForgotPassword {
  const ForgotPassword({
    this.userId,
    this.subject,
    this.template,
  });

  factory ForgotPassword.fromJson(Map<String, dynamic> json) =>
      _$ForgotPasswordFromJson(json);

  static const toJsonFactory = _$ForgotPasswordToJson;
  Map<String, dynamic> toJson() => _$ForgotPasswordToJson(this);

  @JsonKey(name: 'userId', includeIfNull: false, defaultValue: '')
  final String? userId;
  @JsonKey(name: 'subject', includeIfNull: false, defaultValue: '')
  final String? subject;
  @JsonKey(name: 'template', includeIfNull: false, defaultValue: '')
  final String? template;
  static const fromJsonFactory = _$ForgotPasswordFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ForgotPassword &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.subject, subject) ||
                const DeepCollectionEquality()
                    .equals(other.subject, subject)) &&
            (identical(other.template, template) ||
                const DeepCollectionEquality()
                    .equals(other.template, template)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(subject) ^
      const DeepCollectionEquality().hash(template) ^
      runtimeType.hashCode;
}

extension $ForgotPasswordExtension on ForgotPassword {
  ForgotPassword copyWith({String? userId, String? subject, String? template}) {
    return ForgotPassword(
        userId: userId ?? this.userId,
        subject: subject ?? this.subject,
        template: template ?? this.template);
  }

  ForgotPassword copyWithWrapped(
      {Wrapped<String?>? userId,
      Wrapped<String?>? subject,
      Wrapped<String?>? template}) {
    return ForgotPassword(
        userId: (userId != null ? userId.value : this.userId),
        subject: (subject != null ? subject.value : this.subject),
        template: (template != null ? template.value : this.template));
  }
}

@JsonSerializable(explicitToJson: true)
class ForgotPasswordRes {
  const ForgotPasswordRes({
    required this.ok,
    this.msg,
    this.trace,
    this.pinToken,
  });

  factory ForgotPasswordRes.fromJson(Map<String, dynamic> json) =>
      _$ForgotPasswordResFromJson(json);

  static const toJsonFactory = _$ForgotPasswordResToJson;
  Map<String, dynamic> toJson() => _$ForgotPasswordResToJson(this);

  @JsonKey(name: 'ok', includeIfNull: false)
  final bool ok;
  @JsonKey(name: 'msg', includeIfNull: false, defaultValue: '')
  final String? msg;
  @JsonKey(name: 'trace', includeIfNull: false, defaultValue: '')
  final String? trace;
  @JsonKey(name: 'pinToken', includeIfNull: false, defaultValue: '')
  final String? pinToken;
  static const fromJsonFactory = _$ForgotPasswordResFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ForgotPasswordRes &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)) &&
            (identical(other.trace, trace) ||
                const DeepCollectionEquality().equals(other.trace, trace)) &&
            (identical(other.pinToken, pinToken) ||
                const DeepCollectionEquality()
                    .equals(other.pinToken, pinToken)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(msg) ^
      const DeepCollectionEquality().hash(trace) ^
      const DeepCollectionEquality().hash(pinToken) ^
      runtimeType.hashCode;
}

extension $ForgotPasswordResExtension on ForgotPasswordRes {
  ForgotPasswordRes copyWith(
      {bool? ok, String? msg, String? trace, String? pinToken}) {
    return ForgotPasswordRes(
        ok: ok ?? this.ok,
        msg: msg ?? this.msg,
        trace: trace ?? this.trace,
        pinToken: pinToken ?? this.pinToken);
  }

  ForgotPasswordRes copyWithWrapped(
      {Wrapped<bool>? ok,
      Wrapped<String?>? msg,
      Wrapped<String?>? trace,
      Wrapped<String?>? pinToken}) {
    return ForgotPasswordRes(
        ok: (ok != null ? ok.value : this.ok),
        msg: (msg != null ? msg.value : this.msg),
        trace: (trace != null ? trace.value : this.trace),
        pinToken: (pinToken != null ? pinToken.value : this.pinToken));
  }
}

@JsonSerializable(explicitToJson: true)
class ChangePassword {
  const ChangePassword({
    this.userId,
    this.oldPassword,
    this.newPassword,
  });

  factory ChangePassword.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordFromJson(json);

  static const toJsonFactory = _$ChangePasswordToJson;
  Map<String, dynamic> toJson() => _$ChangePasswordToJson(this);

  @JsonKey(name: 'userId', includeIfNull: false, defaultValue: '')
  final String? userId;
  @JsonKey(name: 'oldPassword', includeIfNull: false, defaultValue: '')
  final String? oldPassword;
  @JsonKey(name: 'newPassword', includeIfNull: false, defaultValue: '')
  final String? newPassword;
  static const fromJsonFactory = _$ChangePasswordFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ChangePassword &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.oldPassword, oldPassword) ||
                const DeepCollectionEquality()
                    .equals(other.oldPassword, oldPassword)) &&
            (identical(other.newPassword, newPassword) ||
                const DeepCollectionEquality()
                    .equals(other.newPassword, newPassword)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(oldPassword) ^
      const DeepCollectionEquality().hash(newPassword) ^
      runtimeType.hashCode;
}

extension $ChangePasswordExtension on ChangePassword {
  ChangePassword copyWith(
      {String? userId, String? oldPassword, String? newPassword}) {
    return ChangePassword(
        userId: userId ?? this.userId,
        oldPassword: oldPassword ?? this.oldPassword,
        newPassword: newPassword ?? this.newPassword);
  }

  ChangePassword copyWithWrapped(
      {Wrapped<String?>? userId,
      Wrapped<String?>? oldPassword,
      Wrapped<String?>? newPassword}) {
    return ChangePassword(
        userId: (userId != null ? userId.value : this.userId),
        oldPassword:
            (oldPassword != null ? oldPassword.value : this.oldPassword),
        newPassword:
            (newPassword != null ? newPassword.value : this.newPassword));
  }
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  FutureOr<chopper.Response<ResultType>> convertResponse<ResultType, Item>(
      chopper.Response response) async {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    if (ResultType == String) {
      return response.copyWith();
    }

    if (ResultType == DateTime) {
      return response.copyWith(
          body: DateTime.parse((response.body as String).replaceAll('"', ''))
              as ResultType);
    }

    final jsonRes = await super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
        body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType);
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}

class Wrapped<T> {
  final T value;
  const Wrapped.value(this.value);
}
