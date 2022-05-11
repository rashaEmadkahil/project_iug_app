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
      title: Text('الرئيسة',style: TextStyle(color: Colors.black,
          fontSize: 20
          ,fontWeight: FontWeight.bold),),),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsetsDirectional.only( end: 22, top: 61,start: 22),

          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/blind_tracking_screen');
              },
              child: Text('اولا موقعي الحالي',style: TextStyle(fontSize: 16
                  ,fontWeight: FontWeight.w600)),
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
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/blind_search_result_screen');                },
              child: Text('ثانيا ابحث عن موقع',style: TextStyle(fontSize: 16
              ,fontWeight: FontWeight.w600)),
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
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/blind_around_me_screen');
              },
              child: Text('ثالثا أماكن بالقرب',style: TextStyle(fontSize: 16
                  ,fontWeight: FontWeight.w600)),
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
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/blind_profile_screen');
              },
              child: Text('رايعا الملف الشخصي',style: TextStyle(fontSize: 16
                  ,fontWeight: FontWeight.w600)),
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
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/blind_signup_login_screen');
              },
              child: Text('خامسا طلب المساعدة',style: TextStyle(fontSize: 16
                  ,fontWeight: FontWeight.w600)),
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
    );
  }
}
