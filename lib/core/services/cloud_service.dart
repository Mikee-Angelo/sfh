// ignore_for_file: one_member_abstracts
import 'package:flutter/material.dart';
import 'package:sfh/core/utils/config.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class CloudService {
  Future<void> initialize();
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
}
