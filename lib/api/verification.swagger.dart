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
        baseUrl: baseUrl ??
            Uri.parse(
                'http://v5dev.boodskap.io/api/micro2/service/call/commons/Verification'));
    return _$Verification(newClient);
  }

  ///Get Configuration
  ///@param dkey
  ///@param body
  Future<chopper.Response<Configuration>> getOrSetConfiguration({
    String? dkey,
    Object? body,
  }) {
    generatedMapping.putIfAbsent(EmptyReq, () => EmptyReq.fromJsonFactory);
    generatedMapping.putIfAbsent(
        Configuration, () => Configuration.fromJsonFactory);

    return _getOrSetConfiguration(dkey: dkey?.toString(), body: body);
  }

  ///Get Configuration
  ///@param dkey
  ///@param body
  @Post(path: '/post/config')
  Future<chopper.Response<Configuration>> _getOrSetConfiguration({
    @Header('dkey') String? dkey,
    @Body() Object? body,
  });

  ///Do Registration
  ///@param dkey
  ///@param body
  Future<chopper.Response<RegistrationRes>> registerUser({
    String? dkey,
    required Registration? body,
  }) {
    generatedMapping.putIfAbsent(
        RegistrationRes, () => RegistrationRes.fromJsonFactory);

    return _registerUser(dkey: dkey?.toString(), body: body);
  }

  ///Do Registration
  ///@param dkey
  ///@param body
  @Post(path: '/post/register')
  Future<chopper.Response<RegistrationRes>> _registerUser({
    @Header('dkey') String? dkey,
    @Body() required Registration? body,
  });

  ///Do Verification
  ///@param dkey
  ///@param body
  Future<chopper.Response<VerificationRes>> verifyPin({
    String? dkey,
    required Object? body,
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
  @Post(path: '/post/verify')
  Future<chopper.Response<VerificationRes>> _verifyPin({
    @Header('dkey') String? dkey,
    @Body() required Object? body,
  });

  ///Do Login
  ///@param dkey
  ///@param body
  Future<chopper.Response<VerificationRes>> loginUser({
    String? dkey,
    required Login? body,
  }) {
    generatedMapping.putIfAbsent(
        VerificationRes, () => VerificationRes.fromJsonFactory);

    return _loginUser(dkey: dkey?.toString(), body: body);
  }

  ///Do Login
  ///@param dkey
  ///@param body
  @Post(path: '/post/login')
  Future<chopper.Response<VerificationRes>> _loginUser({
    @Header('dkey') String? dkey,
    @Body() required Login? body,
  });

  ///Reset password
  ///@param dkey
  ///@param body
  Future<chopper.Response<BaseRes>> resetPassword({
    String? dkey,
    required ResetPassword? body,
  }) {
    generatedMapping.putIfAbsent(BaseRes, () => BaseRes.fromJsonFactory);

    return _resetPassword(dkey: dkey?.toString(), body: body);
  }

  ///Reset password
  ///@param dkey
  ///@param body
  @Post(path: '/post/reset')
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
        ForgotPasswordRes, () => ForgotPasswordRes.fromJsonFactory);

    return _forgotPassword(dkey: dkey?.toString(), body: body);
  }

  ///Forgot password
  ///@param dkey
  ///@param body
  @Post(path: '/post/forgot')
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
    generatedMapping.putIfAbsent(BaseRes, () => BaseRes.fromJsonFactory);

    return _changePassword(dkey: dkey?.toString(), body: body);
  }

  ///Change password
  ///@param dkey
  ///@param body
  @Post(path: '/post/change')
  Future<chopper.Response<BaseRes>> _changePassword({
    @Header('dkey') String? dkey,
    @Body() required ChangePassword? body,
  });
}

@JsonSerializable(explicitToJson: true)
class EmptyReq {
  const EmptyReq();

  factory EmptyReq.fromJson(Map<String, dynamic> json) =>
      _$EmptyReqFromJson(json);

  static const toJsonFactory = _$EmptyReqToJson;
  Map<String, dynamic> toJson() => _$EmptyReqToJson(this);

  static const fromJsonFactory = _$EmptyReqFromJson;

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode => runtimeType.hashCode;
}

@JsonSerializable(explicitToJson: true)
class EmptyRes {
  const EmptyRes();

  factory EmptyRes.fromJson(Map<String, dynamic> json) =>
      _$EmptyResFromJson(json);

  static const toJsonFactory = _$EmptyResToJson;
  Map<String, dynamic> toJson() => _$EmptyResToJson(this);

  static const fromJsonFactory = _$EmptyResFromJson;

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode => runtimeType.hashCode;
}

@JsonSerializable(explicitToJson: true)
class BaseRes {
  const BaseRes({
    required this.ok,
    required this.msg,
  });

  factory BaseRes.fromJson(Map<String, dynamic> json) =>
      _$BaseResFromJson(json);

  static const toJsonFactory = _$BaseResToJson;
  Map<String, dynamic> toJson() => _$BaseResToJson(this);

  @JsonKey(name: 'ok', includeIfNull: false)
  final bool ok;
  @JsonKey(name: 'msg', includeIfNull: false, defaultValue: '')
  final String msg;
  static const fromJsonFactory = _$BaseResFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BaseRes &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(msg) ^
      runtimeType.hashCode;
}

extension $BaseResExtension on BaseRes {
  BaseRes copyWith({bool? ok, String? msg}) {
    return BaseRes(ok: ok ?? this.ok, msg: msg ?? this.msg);
  }

  BaseRes copyWithWrapped({Wrapped<bool>? ok, Wrapped<String>? msg}) {
    return BaseRes(
        ok: (ok != null ? ok.value : this.ok),
        msg: (msg != null ? msg.value : this.msg));
  }
}

@JsonSerializable(explicitToJson: true)
class Configuration {
  const Configuration({
    required this.enablePhoneVerification,
    required this.ok,
    required this.msg,
  });

  factory Configuration.fromJson(Map<String, dynamic> json) =>
      _$ConfigurationFromJson(json);

  static const toJsonFactory = _$ConfigurationToJson;
  Map<String, dynamic> toJson() => _$ConfigurationToJson(this);

  @JsonKey(name: 'enablePhoneVerification', includeIfNull: false)
  final bool enablePhoneVerification;
  @JsonKey(name: 'ok', includeIfNull: false)
  final bool ok;
  @JsonKey(name: 'msg', includeIfNull: false, defaultValue: '')
  final String msg;
  static const fromJsonFactory = _$ConfigurationFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Configuration &&
            (identical(
                    other.enablePhoneVerification, enablePhoneVerification) ||
                const DeepCollectionEquality().equals(
                    other.enablePhoneVerification, enablePhoneVerification)) &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(enablePhoneVerification) ^
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(msg) ^
      runtimeType.hashCode;
}

extension $ConfigurationExtension on Configuration {
  Configuration copyWith(
      {bool? enablePhoneVerification, bool? ok, String? msg}) {
    return Configuration(
        enablePhoneVerification:
            enablePhoneVerification ?? this.enablePhoneVerification,
        ok: ok ?? this.ok,
        msg: msg ?? this.msg);
  }

  Configuration copyWithWrapped(
      {Wrapped<bool>? enablePhoneVerification,
      Wrapped<bool>? ok,
      Wrapped<String>? msg}) {
    return Configuration(
        enablePhoneVerification: (enablePhoneVerification != null
            ? enablePhoneVerification.value
            : this.enablePhoneVerification),
        ok: (ok != null ? ok.value : this.ok),
        msg: (msg != null ? msg.value : this.msg));
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
  bool operator ==(dynamic other) {
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
    required this.email,
    required this.phone,
    required this.roles,
    required this.subject,
    required this.template,
    required this.fname,
    required this.lname,
    required this.properties,
  });

  factory Registration.fromJson(Map<String, dynamic> json) =>
      _$RegistrationFromJson(json);

  static const toJsonFactory = _$RegistrationToJson;
  Map<String, dynamic> toJson() => _$RegistrationToJson(this);

  @JsonKey(name: 'email', includeIfNull: false, defaultValue: '')
  final String email;
  @JsonKey(name: 'phone', includeIfNull: false, defaultValue: '')
  final String phone;
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
  final Object properties;
  static const fromJsonFactory = _$RegistrationFromJson;

  @override
  bool operator ==(dynamic other) {
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
      {Wrapped<String>? email,
      Wrapped<String>? phone,
      Wrapped<List<String>>? roles,
      Wrapped<String>? subject,
      Wrapped<String>? template,
      Wrapped<String>? fname,
      Wrapped<String>? lname,
      Wrapped<Object>? properties}) {
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
    required this.pinToken,
    required this.authToken,
    required this.delivery,
    required this.ok,
    required this.msg,
  });

  factory RegistrationRes.fromJson(Map<String, dynamic> json) =>
      _$RegistrationResFromJson(json);

  static const toJsonFactory = _$RegistrationResToJson;
  Map<String, dynamic> toJson() => _$RegistrationResToJson(this);

  @JsonKey(name: 'pinToken', includeIfNull: false, defaultValue: '')
  final String pinToken;
  @JsonKey(name: 'authToken', includeIfNull: false, defaultValue: '')
  final String authToken;
  @JsonKey(name: 'delivery', includeIfNull: false)
  final Object delivery;
  @JsonKey(name: 'ok', includeIfNull: false)
  final bool ok;
  @JsonKey(name: 'msg', includeIfNull: false, defaultValue: '')
  final String msg;
  static const fromJsonFactory = _$RegistrationResFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegistrationRes &&
            (identical(other.pinToken, pinToken) ||
                const DeepCollectionEquality()
                    .equals(other.pinToken, pinToken)) &&
            (identical(other.authToken, authToken) ||
                const DeepCollectionEquality()
                    .equals(other.authToken, authToken)) &&
            (identical(other.delivery, delivery) ||
                const DeepCollectionEquality()
                    .equals(other.delivery, delivery)) &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(pinToken) ^
      const DeepCollectionEquality().hash(authToken) ^
      const DeepCollectionEquality().hash(delivery) ^
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(msg) ^
      runtimeType.hashCode;
}

extension $RegistrationResExtension on RegistrationRes {
  RegistrationRes copyWith(
      {String? pinToken,
      String? authToken,
      Object? delivery,
      bool? ok,
      String? msg}) {
    return RegistrationRes(
        pinToken: pinToken ?? this.pinToken,
        authToken: authToken ?? this.authToken,
        delivery: delivery ?? this.delivery,
        ok: ok ?? this.ok,
        msg: msg ?? this.msg);
  }

  RegistrationRes copyWithWrapped(
      {Wrapped<String>? pinToken,
      Wrapped<String>? authToken,
      Wrapped<Object>? delivery,
      Wrapped<bool>? ok,
      Wrapped<String>? msg}) {
    return RegistrationRes(
        pinToken: (pinToken != null ? pinToken.value : this.pinToken),
        authToken: (authToken != null ? authToken.value : this.authToken),
        delivery: (delivery != null ? delivery.value : this.delivery),
        ok: (ok != null ? ok.value : this.ok),
        msg: (msg != null ? msg.value : this.msg));
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
  bool operator ==(dynamic other) {
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
    required this.email,
    required this.domainKey,
    required this.firstName,
    required this.lastName,
    required this.country,
    required this.state,
    required this.city,
    required this.address,
    required this.zipcode,
    required this.roles,
  });

  factory PlatformUser.fromJson(Map<String, dynamic> json) =>
      _$PlatformUserFromJson(json);

  static const toJsonFactory = _$PlatformUserToJson;
  Map<String, dynamic> toJson() => _$PlatformUserToJson(this);

  @JsonKey(name: 'email', includeIfNull: false, defaultValue: '')
  final String email;
  @JsonKey(name: 'domainKey', includeIfNull: false, defaultValue: '')
  final String domainKey;
  @JsonKey(name: 'firstName', includeIfNull: false, defaultValue: '')
  final String firstName;
  @JsonKey(name: 'lastName', includeIfNull: false, defaultValue: '')
  final String lastName;
  @JsonKey(name: 'country', includeIfNull: false, defaultValue: '')
  final String country;
  @JsonKey(name: 'state', includeIfNull: false, defaultValue: '')
  final String state;
  @JsonKey(name: 'city', includeIfNull: false, defaultValue: '')
  final String city;
  @JsonKey(name: 'address', includeIfNull: false, defaultValue: '')
  final String address;
  @JsonKey(name: 'zipcode', includeIfNull: false, defaultValue: '')
  final String zipcode;
  @JsonKey(name: 'roles', includeIfNull: false, defaultValue: <String>[])
  final List<String> roles;
  static const fromJsonFactory = _$PlatformUserFromJson;

  @override
  bool operator ==(dynamic other) {
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
      {Wrapped<String>? email,
      Wrapped<String>? domainKey,
      Wrapped<String>? firstName,
      Wrapped<String>? lastName,
      Wrapped<String>? country,
      Wrapped<String>? state,
      Wrapped<String>? city,
      Wrapped<String>? address,
      Wrapped<String>? zipcode,
      Wrapped<List<String>>? roles}) {
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
class VerificationRes {
  const VerificationRes({
    required this.authToken,
    required this.connCounter,
    required this.user,
    required this.properties,
    required this.ok,
    required this.msg,
  });

  factory VerificationRes.fromJson(Map<String, dynamic> json) =>
      _$VerificationResFromJson(json);

  static const toJsonFactory = _$VerificationResToJson;
  Map<String, dynamic> toJson() => _$VerificationResToJson(this);

  @JsonKey(name: 'authToken', includeIfNull: false, defaultValue: '')
  final String authToken;
  @JsonKey(name: 'connCounter', includeIfNull: false)
  final int connCounter;
  @JsonKey(name: 'user', includeIfNull: false)
  final PlatformUser user;
  @JsonKey(name: 'properties', includeIfNull: false)
  final Object properties;
  @JsonKey(name: 'ok', includeIfNull: false)
  final bool ok;
  @JsonKey(name: 'msg', includeIfNull: false, defaultValue: '')
  final String msg;
  static const fromJsonFactory = _$VerificationResFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VerificationRes &&
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
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(authToken) ^
      const DeepCollectionEquality().hash(connCounter) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(properties) ^
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(msg) ^
      runtimeType.hashCode;
}

extension $VerificationResExtension on VerificationRes {
  VerificationRes copyWith(
      {String? authToken,
      int? connCounter,
      PlatformUser? user,
      Object? properties,
      bool? ok,
      String? msg}) {
    return VerificationRes(
        authToken: authToken ?? this.authToken,
        connCounter: connCounter ?? this.connCounter,
        user: user ?? this.user,
        properties: properties ?? this.properties,
        ok: ok ?? this.ok,
        msg: msg ?? this.msg);
  }

  VerificationRes copyWithWrapped(
      {Wrapped<String>? authToken,
      Wrapped<int>? connCounter,
      Wrapped<PlatformUser>? user,
      Wrapped<Object>? properties,
      Wrapped<bool>? ok,
      Wrapped<String>? msg}) {
    return VerificationRes(
        authToken: (authToken != null ? authToken.value : this.authToken),
        connCounter:
            (connCounter != null ? connCounter.value : this.connCounter),
        user: (user != null ? user.value : this.user),
        properties: (properties != null ? properties.value : this.properties),
        ok: (ok != null ? ok.value : this.ok),
        msg: (msg != null ? msg.value : this.msg));
  }
}

@JsonSerializable(explicitToJson: true)
class ResetPassword {
  const ResetPassword({
    required this.userId,
    required this.pinToken,
    required this.pin,
    required this.password,
  });

  factory ResetPassword.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordFromJson(json);

  static const toJsonFactory = _$ResetPasswordToJson;
  Map<String, dynamic> toJson() => _$ResetPasswordToJson(this);

  @JsonKey(name: 'userId', includeIfNull: false, defaultValue: '')
  final String userId;
  @JsonKey(name: 'pinToken', includeIfNull: false, defaultValue: '')
  final String pinToken;
  @JsonKey(name: 'pin', includeIfNull: false, defaultValue: '')
  final String pin;
  @JsonKey(name: 'password', includeIfNull: false, defaultValue: '')
  final String password;
  static const fromJsonFactory = _$ResetPasswordFromJson;

  @override
  bool operator ==(dynamic other) {
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
      {Wrapped<String>? userId,
      Wrapped<String>? pinToken,
      Wrapped<String>? pin,
      Wrapped<String>? password}) {
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
    required this.userId,
    required this.subject,
    required this.template,
  });

  factory ForgotPassword.fromJson(Map<String, dynamic> json) =>
      _$ForgotPasswordFromJson(json);

  static const toJsonFactory = _$ForgotPasswordToJson;
  Map<String, dynamic> toJson() => _$ForgotPasswordToJson(this);

  @JsonKey(name: 'userId', includeIfNull: false, defaultValue: '')
  final String userId;
  @JsonKey(name: 'subject', includeIfNull: false, defaultValue: '')
  final String subject;
  @JsonKey(name: 'template', includeIfNull: false, defaultValue: '')
  final String template;
  static const fromJsonFactory = _$ForgotPasswordFromJson;

  @override
  bool operator ==(dynamic other) {
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
      {Wrapped<String>? userId,
      Wrapped<String>? subject,
      Wrapped<String>? template}) {
    return ForgotPassword(
        userId: (userId != null ? userId.value : this.userId),
        subject: (subject != null ? subject.value : this.subject),
        template: (template != null ? template.value : this.template));
  }
}

@JsonSerializable(explicitToJson: true)
class ForgotPasswordRes {
  const ForgotPasswordRes({
    required this.pinToken,
    required this.ok,
    required this.msg,
  });

  factory ForgotPasswordRes.fromJson(Map<String, dynamic> json) =>
      _$ForgotPasswordResFromJson(json);

  static const toJsonFactory = _$ForgotPasswordResToJson;
  Map<String, dynamic> toJson() => _$ForgotPasswordResToJson(this);

  @JsonKey(name: 'pinToken', includeIfNull: false, defaultValue: '')
  final String pinToken;
  @JsonKey(name: 'ok', includeIfNull: false)
  final bool ok;
  @JsonKey(name: 'msg', includeIfNull: false, defaultValue: '')
  final String msg;
  static const fromJsonFactory = _$ForgotPasswordResFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ForgotPasswordRes &&
            (identical(other.pinToken, pinToken) ||
                const DeepCollectionEquality()
                    .equals(other.pinToken, pinToken)) &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(pinToken) ^
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(msg) ^
      runtimeType.hashCode;
}

extension $ForgotPasswordResExtension on ForgotPasswordRes {
  ForgotPasswordRes copyWith({String? pinToken, bool? ok, String? msg}) {
    return ForgotPasswordRes(
        pinToken: pinToken ?? this.pinToken,
        ok: ok ?? this.ok,
        msg: msg ?? this.msg);
  }

  ForgotPasswordRes copyWithWrapped(
      {Wrapped<String>? pinToken, Wrapped<bool>? ok, Wrapped<String>? msg}) {
    return ForgotPasswordRes(
        pinToken: (pinToken != null ? pinToken.value : this.pinToken),
        ok: (ok != null ? ok.value : this.ok),
        msg: (msg != null ? msg.value : this.msg));
  }
}

@JsonSerializable(explicitToJson: true)
class ChangePassword {
  const ChangePassword({
    required this.userId,
    required this.oldPassword,
    required this.newPassword,
  });

  factory ChangePassword.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordFromJson(json);

  static const toJsonFactory = _$ChangePasswordToJson;
  Map<String, dynamic> toJson() => _$ChangePasswordToJson(this);

  @JsonKey(name: 'userId', includeIfNull: false, defaultValue: '')
  final String userId;
  @JsonKey(name: 'oldPassword', includeIfNull: false, defaultValue: '')
  final String oldPassword;
  @JsonKey(name: 'newPassword', includeIfNull: false, defaultValue: '')
  final String newPassword;
  static const fromJsonFactory = _$ChangePasswordFromJson;

  @override
  bool operator ==(dynamic other) {
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
      {Wrapped<String>? userId,
      Wrapped<String>? oldPassword,
      Wrapped<String>? newPassword}) {
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
