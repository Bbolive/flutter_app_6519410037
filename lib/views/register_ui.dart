import 'package:flutter/material.dart';
import 'package:flutter_app_6519410037/views/login_ui.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart'; // นำเข้าเพื่อใช้ FilteringTextInputFormatter

class RegisterUi extends StatefulWidget {
  const RegisterUi({super.key});

  @override
  State<RegisterUi> createState() => _RegisterUiState();
}

class _RegisterUiState extends State<RegisterUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 212, 205, 205),
      body: Padding(
        padding: EdgeInsets.only(
          left: 35.0,
          right: 35.0,
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.025,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    size: MediaQuery.of(context).size.height * 0.045,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.025,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Let\'s Get Started!',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.038,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Kanit', // กำหนดฟอนต์เป็น Kanit
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Create new account for Flutter Dev.',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.017,
                    fontFamily: 'Kanit', // กำหนดฟอนต์เป็น Kanit
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.055,
              ),
              TextField(
                style: GoogleFonts.kanit(), // กำหนดฟอนต์ใน TextField
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter
                      .digitsOnly, // จำกัดให้รับเฉพาะตัวเลข
                ],
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(
                      color: Colors.blueAccent,
                      width: 2.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(
                      color: Colors.blueAccent,
                      width: 2.0,
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.person_2_outlined,
                    color: Colors.blueAccent,
                  ),
                  hintText: 'ป้อนรหัสนักศึกษา',
                  hintStyle: GoogleFonts.kanit(), // กำหนดฟอนต์ใน hintText
                  isCollapsed: true,
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 15.0,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.025,
              ),
              // Repeat this for other TextFields
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(30.0), // กำหนดความโค้งมน
                    borderSide: BorderSide(
                      color: Colors.blueAccent,
                      width: 2.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(30.0), // กำหนดความโค้งมน
                    borderSide: BorderSide(
                      color: Colors.blueAccent,
                      width: 2.0,
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.blueAccent,
                  ),
                  hintText: 'ป้อนอีเมล์',
                  hintStyle: TextStyle(
                    fontFamily: 'Kanit', // ใช้ฟอนต์ Kanit
                  ),
                  isCollapsed: true,
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 15.0,
                  ),
                ),
              ),
              // Continue for other TextFields with fontFamily: 'Kanit'
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.025,
              ),
              TextField(
                keyboardType: TextInputType.phone, // ใช้สำหรับเบอร์โทรศัพท์
                inputFormatters: [
                  FilteringTextInputFormatter
                      .digitsOnly, // จำกัดให้รับเฉพาะตัวเลข
                ],
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(
                      color: Colors.blueAccent,
                      width: 2.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(
                      color: Colors.blueAccent,
                      width: 2.0,
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.phone,
                    color: Colors.blueAccent,
                  ),
                  hintText: 'ป้อนเบอร์โทรศัพท์',
                  hintStyle: TextStyle(
                    fontFamily: 'Kanit', // ใช้ฟอนต์ Kanit
                  ),
                  isCollapsed: true,
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 15.0,
                  ),
                ),
              ),
              // Continue for other TextFields with fontFamily: 'Kanit'
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.025,
              ),
              TextField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(30.0), // กำหนดความโค้งมน
                    borderSide: BorderSide(
                      color: Colors.blueAccent,
                      width: 2.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(30.0), // กำหนดความโค้งมน
                    borderSide: BorderSide(
                      color: Colors.blueAccent,
                      width: 2.0,
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.blueAccent,
                  ),
                  hintText: 'ป้อนรหัสผ่าน',
                  hintStyle: TextStyle(
                    fontFamily: 'Kanit', // ใช้ฟอนต์ Kanit
                  ),
                  isCollapsed: true,
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 15.0,
                  ),
                ),
              ),
              // Continue for other TextFields with fontFamily: 'Kanit'
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.025,
              ),
              TextField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(30.0), // กำหนดความโค้งมน
                    borderSide: BorderSide(
                      color: Colors.blueAccent,
                      width: 2.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(30.0), // กำหนดความโค้งมน
                    borderSide: BorderSide(
                      color: Colors.blueAccent,
                      width: 2.0,
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.blueAccent,
                  ),
                  hintText: 'ป้อนยืนยันรหัสผ่าน',
                  hintStyle: TextStyle(
                    fontFamily: 'Kanit', // ใช้ฟอนต์ Kanit
                  ),
                  isCollapsed: true,
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 15.0,
                  ),
                ),
              ),
              // Continue for other TextFields with fontFamily: 'Kanit'
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.055,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "REGISTER",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: 'Kanit', // ใช้ฟอนต์ Kanit
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(
                    200.0,
                    50.0,
                  ),
                  backgroundColor: const Color.fromARGB(255, 26, 35, 88),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      30.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.055,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Kanit', // ใช้ฟอนต์ Kanit
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginUi(),
                        ),
                      );
                    },
                    child: Text(
                      'Login here',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Kanit', // ใช้ฟอนต์ Kanit
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
