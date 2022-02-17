import 'package:flutter/material.dart';

class BlindHomeScreen extends StatefulWidget {
  const BlindHomeScreen({Key? key}) : super(key: key);

  @override
  _BlindHomeScreenState createState() => _BlindHomeScreenState();
}

class _BlindHomeScreenState extends State<BlindHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      title: Text('الرئيسة',style: TextStyle(color: Colors.black),),),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.only( end: 22, top: 60),
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/blind_signup_login_screen');
                },
                child: Text('مستخدم ذوي الاحتياجات الخاصة',style: TextStyle(fontSize: 20)),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff000000),
                  minimumSize: Size(384, 71),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusDirectional.all(Radius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/blind_signup_login_screen');
                },
                child: Text('اولا موقعي الحالي',style: TextStyle(fontSize: 20)),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff000000),
                  minimumSize: Size(384, 71),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusDirectional.all(Radius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/blind_signup_login_screen');
                },
                child: Text('ثانيا ابحث عن موقع',style: TextStyle(fontSize: 20)),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff000000),
                  minimumSize: Size(384, 71),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusDirectional.all(Radius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/blind_signup_login_screen');
                },
                child: Text('ثالثا أماكن بالقرب',style: TextStyle(fontSize: 20)),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff000000),
                  minimumSize: Size(384, 71),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusDirectional.all(Radius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/blind_signup_login_screen');
                },
                child: Text('رابعا طلب المساعدة',style: TextStyle(fontSize: 20)),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff000000),
                  minimumSize: Size(384, 71),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusDirectional.all(Radius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/blind_signup_login_screen');
                },
                child: Text('خامسا الملف الشخصي',style: TextStyle(fontSize: 20)),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff000000),
                  minimumSize: Size(384, 71),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusDirectional.all(Radius.circular(10),
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
