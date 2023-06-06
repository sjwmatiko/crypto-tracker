import 'package:flutter/material.dart';
import 'package:maicrypto/src/di.dart';
import 'package:provider/provider.dart';
import 'src/views/home_page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: DI.instance.getProviders(),
      child: MaterialApp(
        title: 'Maicrypto',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          primarySwatch: Colors.blue,
          fontFamily: 'Roboto',
          focusColor: const Color.fromARGB(255, 19, 18, 18),
        ),
        home: const HomePage(),
      ),
    );
  }
}
