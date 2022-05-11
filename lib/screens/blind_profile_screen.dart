import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BlindProfileScreen extends StatefulWidget {
  const BlindProfileScreen({Key? key}) : super(key: key);

  @override
  _BlindProfileScreenState createState() => _BlindProfileScreenState();
}

class _BlindProfileScreenState extends State<BlindProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(
                context, '/blind_home_screen');
          },
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
          ),
        ),
        elevation: 0,
        centerTitle: true,
        title: Text(
          ' الملف الشخصي',
          style: TextStyle(color: Colors.black,
          fontSize: 20
              ,fontWeight: FontWeight.bold),
        ),
         actions: [TextButton(onPressed: () {
           Navigator.pushReplacementNamed(
               context, '/blind_profile_save_screen');
         }, child: Text('تعديل'))],
      ),
        body: SafeArea(
            child: Padding(
              padding: EdgeInsetsDirectional.only(start: 37, end: 37, top: 50),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,children:
              [
                Text('اسم المستخدم'),
                SizedBox(height: 11,),
                TextField(
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(
                      color: Colors.black45,
                    ),
                    decoration: InputDecoration(
                      // hintText: 'اسم المستخدم',
                      // hintMaxLines: 1,
                      // hintStyle: TextStyle(color: Colors.black38, fontSize: 15),
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                            //عشان تخفي العرض لازم تعمل اللون TRANSPARENT
                            width: 1,
                          ),
                          ),
                    )
                ),
                SizedBox(
                  height: 30,
                ),
                Text('كلمة المرور'),
                SizedBox(height: 11,),
                TextField(
                    obscureText: true,
                    keyboardType:
                    TextInputType.numberWithOptions(decimal: false, signed: false),
                    style: TextStyle(
                      color: Colors.black45,
                    ),
                    decoration: InputDecoration(
                      // hintText: 'كلمة المرور',
                      // hintMaxLines: 1,
                      // hintStyle: TextStyle(color: Colors.black38, fontSize: 15),
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                          //عشان تخفي العرض لازم تعمل اللون TRANSPARENT
                          width: 1,
                        ),
                      ),
                    )
                ),
              SizedBox(
                height: 30,
              ),
              Text('الجنس'),
              SizedBox(height: 11,),
                TextField(
                  style: TextStyle(
                    color: Colors.black45,
                  ),
                  decoration: InputDecoration(
                      // hintText: 'الجنس',
                      // hintStyle: TextStyle(color: Colors.black38, fontSize: 15),
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                        //عشان تخفي العرض لازم تعمل اللون TRANSPARENT
                        width: 1,
                      ),
                    ),
                       ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text('رقم الطوارىء'),
                SizedBox(height: 11,),
                TextField(
                    keyboardType:
                    TextInputType.numberWithOptions(decimal: false, signed: false),
                    style: TextStyle(
                      color: Colors.black45,
                    ),
                    decoration: InputDecoration(
                      // hintText: 'رقم الطوارىء',
                      // hintMaxLines: 1,
                      // hintStyle: TextStyle(color: Colors.black38, fontSize: 15),
                        fillColor: Colors.white,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                            //عشان تخفي العرض لازم تعمل اللون TRANSPARENT
                            width: 1,
                          ),
                        ),
                    )
                ),


              ]),
            ))
    );
  }
}
