class Config {
  factory Config() => _instance;

  Config._internal();
  static final Config _instance = Config._internal();

  static const String supabaseUrl = String.fromEnvironment('supabase_url');
  static const String supabaseKey = String.fromEnvironment('supabase_key');
}
