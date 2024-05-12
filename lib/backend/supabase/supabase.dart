import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://spdbyvjjggtbbblqfqwj.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNwZGJ5dmpqZ2d0YmJibHFmcXdqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU1MTc5MjksImV4cCI6MjAzMTA5MzkyOX0.V8L7sKgCU47gKdpLHqMmoIIlqQiOYwwRm1BJ9IcYHrw';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
