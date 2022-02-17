import 'package:flutter/material.dart';

class BlindSignUpScreen extends StatefulWidget {
  const BlindSignUpScreen({Key? key}) : super(key: key);

  @override
  _BlindSignUpScreenState createState() => _BlindSignUpScreenState();
}

class _BlindSignUpScreenState extends State<BlindSignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: EdgeInsetsDirectional.only(start: 39, end: 39, top: 50),
      child: Column(children: [
        Container(
          color: Colors.grey,
          width: 272,
          height: 285,
        ),
        SizedBox(
          height: 30,
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
          height: 20,
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
        SizedBox(height: 20),
        TextField(
          style: TextStyle(
            color: Colors.black45,
          ),
          decoration: InputDecoration(
              hintText: 'الجنس',
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
              suffixIcon: IconButton(
                  onPressed: () {
                    PopupMenuButton<String>(onSelected: (value) {
                      //   if(_content!=value){
                      //     setState(() {
                      //       _content=value;
                      //       _counter=0;
                      //     });
                      //   }
                    }, itemBuilder: (context) {
                      return [
                        //لو شلت النوع رح يعطيني ايرور
                        PopupMenuItem(
                          child: Text('انثى'),
                          value: 'انثى',
                          height: 30,
                        ),
                        PopupMenuDivider(),
                        PopupMenuItem(
                          child: Text('ذكر'),
                          value: 'ذكر',
                          height: 30,
                        ),
                      ];
                    });
                  },
                  icon: Icon(
                    Icons.arrow_downward_sharp,
                  ))),
        ),
        SizedBox(
          height: 20,
        ),
        TextField(
            keyboardType:
                TextInputType.numberWithOptions(decimal: false, signed: false),
            style: TextStyle(
              color: Colors.black45,
            ),
            decoration: InputDecoration(
              hintText: 'رقم الطوارىء',
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
            )
        ),
        SizedBox(height: 20,),
        ElevatedButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/blind_login_screen');
          },
          child: Text('انشاء حساب',style: TextStyle(
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
