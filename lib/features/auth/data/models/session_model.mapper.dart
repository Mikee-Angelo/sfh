// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'session_model.dart';

class SessionModelMapper extends ClassMapperBase<SessionModel> {
  SessionModelMapper._();

  static SessionModelMapper? _instance;
  static SessionModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SessionModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'SessionModel';

  static String? _$accessToken(SessionModel v) => v.accessToken;
  static const Field<SessionModel, String> _f$accessToken =
      Field('accessToken', _$accessToken);
  static int? _$expiresIn(SessionModel v) => v.expiresIn;
  static const Field<SessionModel, int> _f$expiresIn =
      Field('expiresIn', _$expiresIn);
  static String? _$refreshToken(SessionModel v) => v.refreshToken;
  static const Field<SessionModel, String> _f$refreshToken =
      Field('refreshToken', _$refreshToken);
  static String? _$providerToken(SessionModel v) => v.providerToken;
  static const Field<SessionModel, String> _f$providerToken =
      Field('providerToken', _$providerToken);
  static String? _$providerRefreshToken(SessionModel v) =>
      v.providerRefreshToken;
  static const Field<SessionModel, String> _f$providerRefreshToken =
      Field('providerRefreshToken', _$providerRefreshToken);

  @override
  final MappableFields<SessionModel> fields = const {
    #accessToken: _f$accessToken,
    #expiresIn: _f$expiresIn,
    #refreshToken: _f$refreshToken,
    #providerToken: _f$providerToken,
    #providerRefreshToken: _f$providerRefreshToken,
  };

  static SessionModel _instantiate(DecodingData data) {
    return SessionModel(
        accessToken: data.dec(_f$accessToken),
        expiresIn: data.dec(_f$expiresIn),
        refreshToken: data.dec(_f$refreshToken),
        providerToken: data.dec(_f$providerToken),
        providerRefreshToken: data.dec(_f$providerRefreshToken));
  }

  @override
  final Function instantiate = _instantiate;

  static SessionModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SessionModel>(map);
  }

  static SessionModel fromJson(String json) {
    return ensureInitialized().decodeJson<SessionModel>(json);
  }
}

mixin SessionModelMappable {
  String toJson() {
    return SessionModelMapper.ensureInitialized()
        .encodeJson<SessionModel>(this as SessionModel);
  }

  Map<String, dynamic> toMap() {
    return SessionModelMapper.ensureInitialized()
        .encodeMap<SessionModel>(this as SessionModel);
  }

  SessionModelCopyWith<SessionModel, SessionModel, SessionModel> get copyWith =>
      _SessionModelCopyWithImpl(this as SessionModel, $identity, $identity);
  @override
  String toString() {
    return SessionModelMapper.ensureInitialized()
        .stringifyValue(this as SessionModel);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            SessionModelMapper.ensureInitialized()
                .isValueEqual(this as SessionModel, other));
  }

  @override
  int get hashCode {
    return SessionModelMapper.ensureInitialized()
        .hashValue(this as SessionModel);
  }
}

extension SessionModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SessionModel, $Out> {
  SessionModelCopyWith<$R, SessionModel, $Out> get $asSessionModel =>
      $base.as((v, t, t2) => _SessionModelCopyWithImpl(v, t, t2));
}

abstract class SessionModelCopyWith<$R, $In extends SessionModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? accessToken,
      int? expiresIn,
      String? refreshToken,
      String? providerToken,
      String? providerRefreshToken});
  SessionModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _SessionModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SessionModel, $Out>
    implements SessionModelCopyWith<$R, SessionModel, $Out> {
  _SessionModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SessionModel> $mapper =
      SessionModelMapper.ensureInitialized();
  @override
  $R call(
          {Object? accessToken = $none,
          Object? expiresIn = $none,
          Object? refreshToken = $none,
          Object? providerToken = $none,
          Object? providerRefreshToken = $none}) =>
      $apply(FieldCopyWithData({
        if (accessToken != $none) #accessToken: accessToken,
        if (expiresIn != $none) #expiresIn: expiresIn,
        if (refreshToken != $none) #refreshToken: refreshToken,
        if (providerToken != $none) #providerToken: providerToken,
        if (providerRefreshToken != $none)
          #providerRefreshToken: providerRefreshToken
      }));
  @override
  SessionModel $make(CopyWithData data) => SessionModel(
      accessToken: data.get(#accessToken, or: $value.accessToken),
      expiresIn: data.get(#expiresIn, or: $value.expiresIn),
      refreshToken: data.get(#refreshToken, or: $value.refreshToken),
      providerToken: data.get(#providerToken, or: $value.providerToken),
      providerRefreshToken:
          data.get(#providerRefreshToken, or: $value.providerRefreshToken));

  @override
  SessionModelCopyWith<$R2, SessionModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SessionModelCopyWithImpl($value, $cast, t);
}
