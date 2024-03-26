class CloudException implements Exception {
  const CloudException({required this.message});

  final String message;

  @override
  String toString() => 'CloudException: $message';
}
