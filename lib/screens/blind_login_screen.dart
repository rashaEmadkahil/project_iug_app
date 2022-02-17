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
            child: Padding(
              padding: EdgeInsetsDirectional.only(start: 39, end: 39, top: 86),
              child: Column(children: [
                Container(
                  color: Colors.grey,
                  width: 272,
                  height: 285,
                ),
                SizedBox(
                  height: 36,
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
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            //عشان تخفي العرض لازم تعمل اللون TRANSPARENT
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10)),
                    )),
                SizedBox(
                  height: 30,
                ),
                TextField(
                    obscureText: true,
                    keyboardType:
                    TextInputType.numberWithOptions(decimal: false, signed: false),
                    style: TextStyle(
                      color: Colors.black45,
                    ),
                    decoration: InputDecoration(
                      hintText: 'كلمة المرور',
                      hintMaxLines: 1,
                      hintStyle: TextStyle(color: Colors.black38, fontSize: 15),
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            //عشان تخفي العرض لازم تعمل اللون TRANSPARENT
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10)),
                    )),
                SizedBox(height: 70),

                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/blind_home_screen');
                  },
                  child: Text(' تسجيل دخول',style: TextStyle(
                      fontFamily: 'cairo',fontSize: 20),),
                  style: ElevatedButton.styleFrom(

                    primary: Color(0xff000000),
                    minimumSize: Size(354, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusDirectional.all(Radius.circular(10),
                      ),
                    ),
                  ),
                ),

              ]),
            )));
  }
}
