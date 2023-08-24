import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/src/themes/theme.dart';

import 'src/features/screens/home/landing_page.dart';


void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themes = ref.watch(theme);
    final dark = ref.watch(darkTheme);
    return Consumer(
      builder: (context, watch, _) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        darkTheme: dark,
        theme: themes,
        home:   const LandingPage(),
      ),
    );
  }
}
