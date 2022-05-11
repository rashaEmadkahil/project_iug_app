import 'package:flutter/material.dart';

class BlindLoginScreen extends StatefulWidget {
  const BlindLoginScreen({Key? key}) : super(key: key);

  @override
  _BlindLoginScreenState createState() => _BlindLoginScreenState();
}

class _BlindLoginScreenState extends State<BlindLoginScreen> {
  @override
  Widget build(BuildContext context) {
       return Scaffold(
        body: SafeArea(
            child: ListView(
                padding: EdgeInsetsDirectional.only(start: 39, end: 39, top: 62.8),
                children: [
              Container(
                color: Colors.grey,
                width: 232,
                height: 243,
              ),
              SizedBox(
                height: 80,
              ),
              TextField(
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(
                    color: Colors.black45,
                  ),
                  decoration: InputDecoration(
                    hintText: 'اسم المستخدم',
                    hintMaxLines: 1,
                    hintStyle: TextStyle(color: Colors.black38, fontSize: 15),
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                        color: Colors.grey,
                        //عشان تخفي العرض لازم تعمل اللون TRANSPARENT
                        width: 1,
                      ),
                    ),
                  )),
              SizedBox(
                height: 21,
              ),
              TextField(
                  obscureText: true,
                  keyboardType: TextInputType.numberWithOptions(
                      decimal: false, signed: false),
                  style: TextStyle(
                    color: Colors.black45,
                  ),
                  decoration: InputDecoration(

                    hintText: 'كلمة السر',
                    hintMaxLines: 1,
                    hintStyle: TextStyle(color: Colors.black38, fontSize: 15),
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),

                      borderSide: BorderSide(
                        color: Colors.grey,
                        //عشان تخفي العرض لازم تعمل اللون TRANSPARENT
                        width: 1,
                      ),
                    ),
                  )),
              SizedBox(height: 39),

              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/blind_home_screen');
                },
                child: Text(' تسجيل دخول',style: TextStyle(
                    fontFamily: 'cairo',fontSize: 20),),
                style: ElevatedButton.styleFrom(

                  primary: Color(0xff000000),
                  minimumSize: Size(354, 76),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusDirectional.all(Radius.circular(10),
                    ),
                  ),
                ),
              ),
                  SizedBox(
                    height: 31,
                  ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/blind_signup_screen');
                },
                child: Text(' انشاء حساب',style: TextStyle(
                    fontFamily: 'cairo',fontSize: 20),),
                style: ElevatedButton.styleFrom(

                  primary: Color(0xff000000),
                  minimumSize: Size(354, 76),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusDirectional.all(Radius.circular(10),
                    ),
                  ),
                ),
              ),

            ]))
       );
  }
}
