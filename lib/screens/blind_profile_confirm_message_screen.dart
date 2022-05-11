import 'package:flutter/material.dart';
class BlindProfileConfirmMessageScreen extends StatefulWidget {
  const BlindProfileConfirmMessageScreen({Key? key}) : super(key: key);

  @override
  _BlindProfileConfirmMessageScreenState createState() => _BlindProfileConfirmMessageScreenState();
}

class _BlindProfileConfirmMessageScreenState extends State<BlindProfileConfirmMessageScreen> {
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
            // Navigator.pushReplacementNamed(
            //     context, '/blind_profile_confirm_message_screen');
          }, child: Text('حفظ'))],
        ),
        body: SafeArea(
            child: Stack(

                children: [
                  Padding(padding:  EdgeInsetsDirectional.only(start: 22, end: 22, top: 50),
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
                            hintText: 'رشا كحيل',
                            hintMaxLines: 1,
                            hintStyle: TextStyle(color: Colors.black38, fontSize: 15),
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
                      Text('كلمة المرور الحالية'),
                      SizedBox(height: 11,),
                      TextField(
                          obscureText: true,
                          keyboardType:
                          TextInputType.numberWithOptions(decimal: false, signed: false),
                          style: TextStyle(
                            color: Colors.black45,
                          ),
                          decoration: InputDecoration(
                            hintText: '*********',
                            hintMaxLines: 1,
                            hintStyle: TextStyle(color: Colors.black38, fontSize: 15),
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
                      Text('كلمة المرور الجديدة'),
                      SizedBox(height: 11,),
                      TextField(
                          obscureText: true,
                          keyboardType:
                          TextInputType.numberWithOptions(decimal: false, signed: false),
                          style: TextStyle(
                            color: Colors.black45,
                          ),
                          decoration: InputDecoration(
                            hintText: '******',
                            hintMaxLines: 1,
                            hintStyle: TextStyle(color: Colors.black38, fontSize: 15),
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
                            hintText: 'انثى',
                            hintStyle: TextStyle(color: Colors.black38, fontSize: 15),
                            fillColor: Colors.white,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                //عشان تخفي العرض لازم تعمل اللون TRANSPARENT
                                width: 1,
                              ),
                            ),
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
                            hintText: '0592206106',
                            hintMaxLines: 1,
                            hintStyle: TextStyle(color: Colors.black38, fontSize: 15),
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
                  ),
                 // Padding(padding:  EdgeInsetsDirectional.only(start: 34, end: 37, top: 320),

                      Align(alignment: Alignment.center,
                        child: Container(

                        color: Colors.grey,
                          width: 343,
                          height: 256,

                  ),
                      )
                ],

              ),
            )
    );
  }
}
