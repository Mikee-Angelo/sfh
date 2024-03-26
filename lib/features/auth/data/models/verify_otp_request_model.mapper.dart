// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'verify_otp_request_model.dart';

class VerifyOtpRequestModelMapper
    extends ClassMapperBase<VerifyOtpRequestModel> {
  VerifyOtpRequestModelMapper._();

  static VerifyOtpRequestModelMapper? _instance;
  static VerifyOtpRequestModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = VerifyOtpRequestModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'VerifyOtpRequestModel';

  static String _$email(VerifyOtpRequestModel v) => v.email;
  static const Field<VerifyOtpRequestModel, String> _f$email =
      Field('email', _$email);
  static String _$otp(VerifyOtpRequestModel v) => v.otp;
  static const Field<VerifyOtpRequestModel, String> _f$otp =
      Field('otp', _$otp);

  @override
  final MappableFields<VerifyOtpRequestModel> fields = const {
    #email: _f$email,
    #otp: _f$otp,
  };

  static VerifyOtpRequestModel _instantiate(DecodingData data) {
    return VerifyOtpRequestModel(
        email: data.dec(_f$email), otp: data.dec(_f$otp));
  }

  @override
  final Function instantiate = _instantiate;

  static VerifyOtpRequestModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<VerifyOtpRequestModel>(map);
  }

  static VerifyOtpRequestModel fromJson(String json) {
    return ensureInitialized().decodeJson<VerifyOtpRequestModel>(json);
  }
}

mixin VerifyOtpRequestModelMappable {
  String toJson() {
    return VerifyOtpRequestModelMapper.ensureInitialized()
        .encodeJson<VerifyOtpRequestModel>(this as VerifyOtpRequestModel);
  }

  Map<String, dynamic> toMap() {
    return VerifyOtpRequestModelMapper.ensureInitialized()
        .encodeMap<VerifyOtpRequestModel>(this as VerifyOtpRequestModel);
  }

  VerifyOtpRequestModelCopyWith<VerifyOtpRequestModel, VerifyOtpRequestModel,
          VerifyOtpRequestModel>
      get copyWith => _VerifyOtpRequestModelCopyWithImpl(
          this as VerifyOtpRequestModel, $identity, $identity);
  @override
  String toString() {
    return VerifyOtpRequestModelMapper.ensureInitialized()
        .stringifyValue(this as VerifyOtpRequestModel);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            VerifyOtpRequestModelMapper.ensureInitialized()
                .isValueEqual(this as VerifyOtpRequestModel, other));
  }

  @override
  int get hashCode {
    return VerifyOtpRequestModelMapper.ensureInitialized()
        .hashValue(this as VerifyOtpRequestModel);
  }
}

extension VerifyOtpRequestModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, VerifyOtpRequestModel, $Out> {
  VerifyOtpRequestModelCopyWith<$R, VerifyOtpRequestModel, $Out>
      get $asVerifyOtpRequestModel =>
          $base.as((v, t, t2) => _VerifyOtpRequestModelCopyWithImpl(v, t, t2));
}

abstract class VerifyOtpRequestModelCopyWith<
    $R,
    $In extends VerifyOtpRequestModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? email, String? otp});
  VerifyOtpRequestModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _VerifyOtpRequestModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, VerifyOtpRequestModel, $Out>
    implements VerifyOtpRequestModelCopyWith<$R, VerifyOtpRequestModel, $Out> {
  _VerifyOtpRequestModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<VerifyOtpRequestModel> $mapper =
      VerifyOtpRequestModelMapper.ensureInitialized();
  @override
  $R call({String? email, String? otp}) => $apply(FieldCopyWithData(
      {if (email != null) #email: email, if (otp != null) #otp: otp}));
  @override
  VerifyOtpRequestModel $make(CopyWithData data) => VerifyOtpRequestModel(
      email: data.get(#email, or: $value.email),
      otp: data.get(#otp, or: $value.otp));

  @override
  VerifyOtpRequestModelCopyWith<$R2, VerifyOtpRequestModel, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _VerifyOtpRequestModelCopyWithImpl($value, $cast, t);
}
