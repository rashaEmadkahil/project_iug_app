import 'package:flutter/material.dart';

class BlindSignUpLoginScreen extends StatelessWidget {
  const BlindSignUpLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.only(start: 37, end: 37, top: 96),
          child: Column(
            children: [
              Container(
                color: Colors.grey,
                width: 272,
                height: 285,
              ),
              SizedBox(
                height: 60,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/blind_login_screen');
                },
                child: Text('تسجيل دخول',style: TextStyle(fontSize: 20)),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff000000),
                  minimumSize: Size(354, 77),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusDirectional.all(Radius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 36,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/blind_signup_screen');
                },
                child: Text('انشاء حساب',style: TextStyle(
                    fontFamily: 'cairo',fontSize: 20),),
                style: ElevatedButton.styleFrom(

                  primary: Color(0xff000000),
                  minimumSize: Size(354, 77),
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
