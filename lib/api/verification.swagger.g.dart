// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verification.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EmptyReq _$EmptyReqFromJson(Map<String, dynamic> json) => EmptyReq();

Map<String, dynamic> _$EmptyReqToJson(EmptyReq instance) => <String, dynamic>{};

EmptyRes _$EmptyResFromJson(Map<String, dynamic> json) => EmptyRes();

Map<String, dynamic> _$EmptyResToJson(EmptyRes instance) => <String, dynamic>{};

BaseRes _$BaseResFromJson(Map<String, dynamic> json) => BaseRes(
      ok: json['ok'] as bool,
      msg: json['msg'] as String? ?? '',
    );

Map<String, dynamic> _$BaseResToJson(BaseRes instance) => <String, dynamic>{
      'ok': instance.ok,
      'msg': instance.msg,
    };

Configuration _$ConfigurationFromJson(Map<String, dynamic> json) =>
    Configuration(
      enablePhoneVerification: json['enablePhoneVerification'] as bool,
      ok: json['ok'] as bool,
      msg: json['msg'] as String? ?? '',
    );

Map<String, dynamic> _$ConfigurationToJson(Configuration instance) =>
    <String, dynamic>{
      'enablePhoneVerification': instance.enablePhoneVerification,
      'ok': instance.ok,
      'msg': instance.msg,
    };

Login _$LoginFromJson(Map<String, dynamic> json) => Login(
      userId: json['userId'] as String? ?? '',
      password: json['password'] as String? ?? '',
    );

Map<String, dynamic> _$LoginToJson(Login instance) => <String, dynamic>{
      'userId': instance.userId,
      'password': instance.password,
    };

Registration _$RegistrationFromJson(Map<String, dynamic> json) => Registration(
      email: json['email'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      roles:
          (json['roles'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              [],
      subject: json['subject'] as String? ?? '',
      template: json['template'] as String? ?? '',
      fname: json['fname'] as String? ?? '',
      lname: json['lname'] as String? ?? '',
      properties: json['properties'] as Object,
    );

Map<String, dynamic> _$RegistrationToJson(Registration instance) =>
    <String, dynamic>{
      'email': instance.email,
      'phone': instance.phone,
      'roles': instance.roles,
      'subject': instance.subject,
      'template': instance.template,
      'fname': instance.fname,
      'lname': instance.lname,
      'properties': instance.properties,
    };

RegistrationRes _$RegistrationResFromJson(Map<String, dynamic> json) =>
    RegistrationRes(
      pinToken: json['pinToken'] as String? ?? '',
      authToken: json['authToken'] as String? ?? '',
      delivery: json['delivery'] as Object,
      ok: json['ok'] as bool,
      msg: json['msg'] as String? ?? '',
    );

Map<String, dynamic> _$RegistrationResToJson(RegistrationRes instance) =>
    <String, dynamic>{
      'pinToken': instance.pinToken,
      'authToken': instance.authToken,
      'delivery': instance.delivery,
      'ok': instance.ok,
      'msg': instance.msg,
    };

VerificationReq _$VerificationReqFromJson(Map<String, dynamic> json) =>
    VerificationReq(
      pinToken: json['pinToken'] as String? ?? '',
      pin: json['pin'] as String? ?? '',
    );

Map<String, dynamic> _$VerificationReqToJson(VerificationReq instance) =>
    <String, dynamic>{
      'pinToken': instance.pinToken,
      'pin': instance.pin,
    };

PlatformUser _$PlatformUserFromJson(Map<String, dynamic> json) => PlatformUser(
      email: json['email'] as String? ?? '',
      domainKey: json['domainKey'] as String? ?? '',
      firstName: json['firstName'] as String? ?? '',
      lastName: json['lastName'] as String? ?? '',
      country: json['country'] as String? ?? '',
      state: json['state'] as String? ?? '',
      city: json['city'] as String? ?? '',
      address: json['address'] as String? ?? '',
      zipcode: json['zipcode'] as String? ?? '',
      roles:
          (json['roles'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              [],
    );

Map<String, dynamic> _$PlatformUserToJson(PlatformUser instance) =>
    <String, dynamic>{
      'email': instance.email,
      'domainKey': instance.domainKey,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'country': instance.country,
      'state': instance.state,
      'city': instance.city,
      'address': instance.address,
      'zipcode': instance.zipcode,
      'roles': instance.roles,
    };

VerificationRes _$VerificationResFromJson(Map<String, dynamic> json) =>
    VerificationRes(
      authToken: json['authToken'] as String? ?? '',
      connCounter: json['connCounter'] as int,
      user: PlatformUser.fromJson(json['user'] as Map<String, dynamic>),
      properties: json['properties'] as Object,
      ok: json['ok'] as bool,
      msg: json['msg'] as String? ?? '',
    );

Map<String, dynamic> _$VerificationResToJson(VerificationRes instance) =>
    <String, dynamic>{
      'authToken': instance.authToken,
      'connCounter': instance.connCounter,
      'user': instance.user.toJson(),
      'properties': instance.properties,
      'ok': instance.ok,
      'msg': instance.msg,
    };

ResetPassword _$ResetPasswordFromJson(Map<String, dynamic> json) =>
    ResetPassword(
      userId: json['userId'] as String? ?? '',
      pinToken: json['pinToken'] as String? ?? '',
      pin: json['pin'] as String? ?? '',
      password: json['password'] as String? ?? '',
    );

Map<String, dynamic> _$ResetPasswordToJson(ResetPassword instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'pinToken': instance.pinToken,
      'pin': instance.pin,
      'password': instance.password,
    };

ForgotPassword _$ForgotPasswordFromJson(Map<String, dynamic> json) =>
    ForgotPassword(
      userId: json['userId'] as String? ?? '',
      subject: json['subject'] as String? ?? '',
      template: json['template'] as String? ?? '',
    );

Map<String, dynamic> _$ForgotPasswordToJson(ForgotPassword instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'subject': instance.subject,
      'template': instance.template,
    };

ForgotPasswordRes _$ForgotPasswordResFromJson(Map<String, dynamic> json) =>
    ForgotPasswordRes(
      pinToken: json['pinToken'] as String? ?? '',
      ok: json['ok'] as bool,
      msg: json['msg'] as String? ?? '',
    );

Map<String, dynamic> _$ForgotPasswordResToJson(ForgotPasswordRes instance) =>
    <String, dynamic>{
      'pinToken': instance.pinToken,
      'ok': instance.ok,
      'msg': instance.msg,
    };

ChangePassword _$ChangePasswordFromJson(Map<String, dynamic> json) =>
    ChangePassword(
      userId: json['userId'] as String? ?? '',
      oldPassword: json['oldPassword'] as String? ?? '',
      newPassword: json['newPassword'] as String? ?? '',
    );

Map<String, dynamic> _$ChangePasswordToJson(ChangePassword instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'oldPassword': instance.oldPassword,
      'newPassword': instance.newPassword,
    };
