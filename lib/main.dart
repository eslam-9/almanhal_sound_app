import 'package:almanhal/app/almanhal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: "https://vbnuolgvazpfvjbmcizn.supabase.co",
    anonKey:
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZibnVvbGd2YXpwZnZqYm1jaXpuIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTY5OTc0MTYsImV4cCI6MjA3MjU3MzQxNn0.zUexuaMZ3IQsFnfyozGNvshz5rcrzs8-YA3hiVKvJtE",
  );
  runApp(ProviderScope(child: const Almanhal()));
}
