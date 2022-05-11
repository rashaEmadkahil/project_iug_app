import 'package:flutter/material.dart';
import 'package:project_iug_app/moduels/gender.dart';

class BlindProfileSaveScreen extends StatefulWidget {
  const BlindProfileSaveScreen({Key? key}) : super(key: key);

  @override
  _BlindProfileSaveScreenState createState() => _BlindProfileSaveScreenState();
}

class _BlindProfileSaveScreenState extends State<BlindProfileSaveScreen> {
  String? _selectedCityID;
  final List<Gender> _cities=<Gender>[
    Gender(id:1 ,name:'انثى' ),
    Gender(id:2 ,name:'ذكر' , ),
  ];
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
                context, '/blind_profile_confirm_message_screen');
          }, child: Text('حفظ'))],
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
                      suffixIcon:    DropdownButton<String>(

                        isExpanded: true,
                        value:_selectedCityID ,
                        hint: Text('نوع الجنس'),
                        items: _cities.map(
                                (Gender gender) => DropdownMenuItem<String>(child: Text(gender.name)
                              ,value: gender.id.toString(),)
                        ).toList(),
                        onChanged: (String? value) {
                          if(value!=null){
                            setState(() {
                              _selectedCityID=value;
                            });
                          }
                        },)
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
            ))
    );
  }
}
