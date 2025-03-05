import 'package:flutter/material.dart';
import 'package:flutter_app_6519410037/views/login_ui.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    //เรียกใช้คลาสที่เรียกใช้วิดเจตหลักของแอป meterialApp()
    FlutterSAU6519410037());
}

//-----------------------------------
class FlutterSAU6519410037 extends StatefulWidget {
  const FlutterSAU6519410037({super.key});

  @override
  State<FlutterSAU6519410037> createState() => _FlutterSAU6519410037State();
}

class _FlutterSAU6519410037State extends State<FlutterSAU6519410037> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginUi(),
      theme: ThemeData(
        textTheme: GoogleFonts.kanitTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}