import 'package:dart_mappable/dart_mappable.dart';
import 'package:sfh/features/auth/auth.dart';

part 'verify_otp_request_model.mapper.dart';

@MappableClass()
class VerifyOtpRequestModel extends VerifyOtpRequestEntity
    with VerifyOtpRequestModelMappable {
  const VerifyOtpRequestModel({required super.email, required super.otp});
}
