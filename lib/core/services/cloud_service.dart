// ignore_for_file: one_member_abstracts
import 'package:flutter/material.dart';
import 'package:sfh/core/error/exception.dart';
import 'package:sfh/core/utils/config.dart';
import 'package:sfh/features/auth/data/models/models.dart';
import 'package:sfh/features/auth/domain/domain.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class CloudService {
  Future<void> initialize();
  Future<void> signUp(String email);
  Future<AuthEntity> verifyOtp(VerifyOtpRequestModel request);
  SupabaseClient get client;
}

class CloudServiceImpl implements CloudService {
  const CloudServiceImpl();

  @override
  Future<void> initialize() async {
    try {
      await Supabase.initialize(
        url: Config.supabaseUrl,
        anonKey: Config.supabaseKey,
        debug: true,
      );
    } catch (e) {
      debugPrint('Error initializing Supabase: $e');
    }
  }

  @override
  SupabaseClient get client => Supabase.instance.client;

  @override
  Future<void> signUp(String email) async {
    try {
      await client.auth.signInWithOtp(
        email: email,
        shouldCreateUser: true,
      );
    } on Exception catch (e) {
      throw CloudException(message: e.toString());
    }
  }

  @override
  Future<AuthEntity> verifyOtp(
    VerifyOtpRequestModel request,
  ) async {
    try {
      final res = await client.auth.verifyOTP(
        email: request.email,
        token: request.otp,
        type: OtpType.email,
      );

      return AuthEntity(
        user: UserModelMapper.fromMap(res.user!.toJson()),
        session: SessionModelMapper.fromMap(res.session!.toJson()),
      );
    } on Exception catch (e) {
      throw CloudException(message: e.toString());
    }
  }
}
