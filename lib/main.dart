import 'package:flutter/material.dart';
import 'package:scholar/core/app_constants.dart';
import 'package:scholar/screens/dashboard_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

final url = AppConstants.supabaseUrl;
const key = AppConstants.supabaseAnonKey;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(url: url, anonKey: key);

  runApp(const ScholarPilotApp());
}

class ScholarPilotApp extends StatelessWidget {
  const ScholarPilotApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ScholarPilot',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF1E3A8A)),
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        useMaterial3: true,
      ),
      home: const DashboardScreen(), // We will build this next
    );
  }
}
