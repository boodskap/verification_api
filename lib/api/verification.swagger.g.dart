// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verification.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseRes _$BaseResFromJson(Map<String, dynamic> json) => BaseRes(
      ok: json['ok'] as bool,
      msg: json['msg'] as String? ?? '',
      trace: json['trace'] as String? ?? '',
    );

Map<String, dynamic> _$BaseResToJson(BaseRes instance) {
  final val = <String, dynamic>{
    'ok': instance.ok,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('msg', instance.msg);
  writeNotNull('trace', instance.trace);
  return val;
}

AuthConfigurationBase _$AuthConfigurationBaseFromJson(
        Map<String, dynamic> json) =>
    AuthConfigurationBase(
      enablePhoneVerification: json['enablePhoneVerification'] as bool?,
    );

Map<String, dynamic> _$AuthConfigurationBaseToJson(
    AuthConfigurationBase instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enablePhoneVerification', instance.enablePhoneVerification);
  return val;
}

AuthConfiguration _$AuthConfigurationFromJson(Map<String, dynamic> json) =>
    AuthConfiguration(
      ok: json['ok'] as bool,
      msg: json['msg'] as String? ?? '',
      trace: json['trace'] as String? ?? '',
      enablePhoneVerification: json['enablePhoneVerification'] as bool?,
    );

Map<String, dynamic> _$AuthConfigurationToJson(AuthConfiguration instance) {
  final val = <String, dynamic>{
    'ok': instance.ok,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('msg', instance.msg);
  writeNotNull('trace', instance.trace);
  writeNotNull('enablePhoneVerification', instance.enablePhoneVerification);
  return val;
}

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
      properties: json['properties'],
    );

Map<String, dynamic> _$RegistrationToJson(Registration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('email', instance.email);
  writeNotNull('phone', instance.phone);
  val['roles'] = instance.roles;
  val['subject'] = instance.subject;
  val['template'] = instance.template;
  val['fname'] = instance.fname;
  val['lname'] = instance.lname;
  writeNotNull('properties', instance.properties);
  return val;
}

RegistrationRes _$RegistrationResFromJson(Map<String, dynamic> json) =>
    RegistrationRes(
      ok: json['ok'] as bool,
      msg: json['msg'] as String? ?? '',
      trace: json['trace'] as String? ?? '',
      pinToken: json['pinToken'] as String? ?? '',
      authToken: json['authToken'] as String? ?? '',
      delivery: json['delivery'],
    );

Map<String, dynamic> _$RegistrationResToJson(RegistrationRes instance) {
  final val = <String, dynamic>{
    'ok': instance.ok,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('msg', instance.msg);
  writeNotNull('trace', instance.trace);
  writeNotNull('pinToken', instance.pinToken);
  writeNotNull('authToken', instance.authToken);
  writeNotNull('delivery', instance.delivery);
  return val;
}

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

Map<String, dynamic> _$PlatformUserToJson(PlatformUser instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('email', instance.email);
  writeNotNull('domainKey', instance.domainKey);
  writeNotNull('firstName', instance.firstName);
  writeNotNull('lastName', instance.lastName);
  writeNotNull('country', instance.country);
  writeNotNull('state', instance.state);
  writeNotNull('city', instance.city);
  writeNotNull('address', instance.address);
  writeNotNull('zipcode', instance.zipcode);
  writeNotNull('roles', instance.roles);
  return val;
}

PlatformSession _$PlatformSessionFromJson(Map<String, dynamic> json) =>
    PlatformSession(
      authToken: json['authToken'] as String? ?? '',
      connCounter: (json['connCounter'] as num).toInt(),
      orgId: json['orgId'] as String? ?? '',
      user: PlatformUser.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PlatformSessionToJson(PlatformSession instance) {
  final val = <String, dynamic>{
    'authToken': instance.authToken,
    'connCounter': instance.connCounter,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('orgId', instance.orgId);
  val['user'] = instance.user.toJson();
  return val;
}

VerificationRes _$VerificationResFromJson(Map<String, dynamic> json) =>
    VerificationRes(
      ok: json['ok'] as bool,
      msg: json['msg'] as String? ?? '',
      trace: json['trace'] as String? ?? '',
      authToken: json['authToken'] as String? ?? '',
      connCounter: (json['connCounter'] as num?)?.toInt(),
      user: json['user'] == null
          ? null
          : PlatformUser.fromJson(json['user'] as Map<String, dynamic>),
      properties: json['properties'],
      code: (json['code'] as num?)?.toInt(),
    );

Map<String, dynamic> _$VerificationResToJson(VerificationRes instance) {
  final val = <String, dynamic>{
    'ok': instance.ok,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('msg', instance.msg);
  writeNotNull('trace', instance.trace);
  writeNotNull('authToken', instance.authToken);
  writeNotNull('connCounter', instance.connCounter);
  writeNotNull('user', instance.user?.toJson());
  writeNotNull('properties', instance.properties);
  writeNotNull('code', instance.code);
  return val;
}

MultiVerificationRes _$MultiVerificationResFromJson(
        Map<String, dynamic> json) =>
    MultiVerificationRes(
      ok: json['ok'] as bool,
      msg: json['msg'] as String? ?? '',
      trace: json['trace'] as String? ?? '',
      sessions: (json['sessions'] as List<dynamic>?)
              ?.map((e) => PlatformSession.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      properties: json['properties'],
      code: (json['code'] as num?)?.toInt(),
    );

Map<String, dynamic> _$MultiVerificationResToJson(
    MultiVerificationRes instance) {
  final val = <String, dynamic>{
    'ok': instance.ok,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('msg', instance.msg);
  writeNotNull('trace', instance.trace);
  writeNotNull('sessions', instance.sessions?.map((e) => e.toJson()).toList());
  writeNotNull('properties', instance.properties);
  writeNotNull('code', instance.code);
  return val;
}

ResetPassword _$ResetPasswordFromJson(Map<String, dynamic> json) =>
    ResetPassword(
      userId: json['userId'] as String? ?? '',
      pinToken: json['pinToken'] as String? ?? '',
      pin: json['pin'] as String? ?? '',
      password: json['password'] as String? ?? '',
    );

Map<String, dynamic> _$ResetPasswordToJson(ResetPassword instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('userId', instance.userId);
  writeNotNull('pinToken', instance.pinToken);
  writeNotNull('pin', instance.pin);
  writeNotNull('password', instance.password);
  return val;
}

ForgotPassword _$ForgotPasswordFromJson(Map<String, dynamic> json) =>
    ForgotPassword(
      userId: json['userId'] as String? ?? '',
      subject: json['subject'] as String? ?? '',
      template: json['template'] as String? ?? '',
    );

Map<String, dynamic> _$ForgotPasswordToJson(ForgotPassword instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('userId', instance.userId);
  writeNotNull('subject', instance.subject);
  writeNotNull('template', instance.template);
  return val;
}

ForgotPasswordRes _$ForgotPasswordResFromJson(Map<String, dynamic> json) =>
    ForgotPasswordRes(
      ok: json['ok'] as bool,
      msg: json['msg'] as String? ?? '',
      trace: json['trace'] as String? ?? '',
      pinToken: json['pinToken'] as String? ?? '',
    );

Map<String, dynamic> _$ForgotPasswordResToJson(ForgotPasswordRes instance) {
  final val = <String, dynamic>{
    'ok': instance.ok,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('msg', instance.msg);
  writeNotNull('trace', instance.trace);
  writeNotNull('pinToken', instance.pinToken);
  return val;
}

ChangePassword _$ChangePasswordFromJson(Map<String, dynamic> json) =>
    ChangePassword(
      userId: json['userId'] as String? ?? '',
      oldPassword: json['oldPassword'] as String? ?? '',
      newPassword: json['newPassword'] as String? ?? '',
    );

Map<String, dynamic> _$ChangePasswordToJson(ChangePassword instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('userId', instance.userId);
  writeNotNull('oldPassword', instance.oldPassword);
  writeNotNull('newPassword', instance.newPassword);
  return val;
}
