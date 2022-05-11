import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:project_iug_app/classes/gender.dart';

class BlindSignUpScreen extends StatefulWidget {
  const BlindSignUpScreen({Key? key}) : super(key: key);

  @override
  _BlindSignUpScreenState createState() => _BlindSignUpScreenState();
}

class _BlindSignUpScreenState extends State<BlindSignUpScreen> {
  String? _selectedCityID;

  final List<Gender> _cities = <Gender>[
    Gender(id: 1, name: 'انثى'),
    Gender(
      id: 2,
      name: 'ذكر',
    ),
  ];

  late TapGestureRecognizer _tapGestureRecognizer;
  late TextEditingController _textEditingController;
  late TextEditingController _passwordEditingController;
  late TextEditingController _phoneEditingController;

// بنفعش ياخدو قيم نصية فارغة
  String? _emailErrorText;

  String? _passwordErrorText;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tapGestureRecognizer = TapGestureRecognizer()..onTap = navToReg;
    _textEditingController = TextEditingController();
    _passwordEditingController = TextEditingController();
    _phoneEditingController = TextEditingController();
  }

  void navToReg() =>
      Navigator.pushReplacementNamed(context, '/blind_login_screen');

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tapGestureRecognizer.dispose();
    _textEditingController.dispose();
    _passwordEditingController.dispose();
    _phoneEditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //     body: SafeArea(
    //         child: Padding(
    //   padding: EdgeInsetsDirectional.only(start: 39, end: 39, top: 50),
    //   child: Column(children: [
    //     Container(
    //       color: Colors.grey,
    //       width: 272,
    //       height: 285,
    //     ),
    //     SizedBox(
    //       height: 30,
    //     ),
    //     TextField(
    //         keyboardType: TextInputType.emailAddress,
    //         style: TextStyle(
    //           color: Colors.black45,
    //         ),
    //         decoration: InputDecoration(
    //           hintText: 'اسم المستخدم',
    //           hintMaxLines: 1,
    //           hintStyle: TextStyle(color: Colors.black38, fontSize: 15),
    //           fillColor: Colors.grey.shade200,
    //           filled: true,
    //           enabledBorder: OutlineInputBorder(
    //               borderSide: BorderSide(
    //                 color: Colors.white,
    //                 //عشان تخفي العرض لازم تعمل اللون TRANSPARENT
    //                 width: 1,
    //               ),
    //               borderRadius: BorderRadius.circular(10)),
    //         )),
    //     SizedBox(
    //       height: 20,
    //     ),
    //     TextField(
    //         obscureText: true,
    //         keyboardType:
    //             TextInputType.numberWithOptions(decimal: false, signed: false),
    //         style: TextStyle(
    //           color: Colors.black45,
    //         ),
    //         decoration: InputDecoration(
    //           hintText: 'كلمة المرور',
    //           hintMaxLines: 1,
    //           hintStyle: TextStyle(color: Colors.black38, fontSize: 15),
    //           fillColor: Colors.grey.shade200,
    //           filled: true,
    //           enabledBorder: OutlineInputBorder(
    //               borderSide: BorderSide(
    //                 color: Colors.white,
    //                 //عشان تخفي العرض لازم تعمل اللون TRANSPARENT
    //                 width: 1,
    //               ),
    //               borderRadius: BorderRadius.circular(10)),
    //         )),
    //     SizedBox(height: 20),
    //     TextField(
    //       style: TextStyle(
    //         color: Colors.black45,
    //       ),
    //       decoration: InputDecoration(
    //           hintText: 'الجنس',
    //           hintStyle: TextStyle(color: Colors.black38, fontSize: 15),
    //           fillColor: Colors.grey.shade200,
    //           filled: true,
    //           enabledBorder: OutlineInputBorder(
    //               borderSide: BorderSide(
    //                 color: Colors.white,
    //                 //عشان تخفي العرض لازم تعمل اللون TRANSPARENT
    //                 width: 1,
    //               ),
    //               borderRadius: BorderRadius.circular(10)),
    //           suffixIcon: IconButton(
    //               onPressed: () {
    //                 PopupMenuButton<String>(onSelected: (value) {
    //                   //   if(_content!=value){
    //                   //     setState(() {
    //                   //       _content=value;
    //                   //       _counter=0;
    //                   //     });
    //                   //   }
    //                 }, itemBuilder: (context) {
    //                   return [
    //                     //لو شلت النوع رح يعطيني ايرور
    //                     PopupMenuItem(
    //                       child: Text('انثى'),
    //                       value: 'انثى',
    //                       height: 30,
    //                     ),
    //                     PopupMenuDivider(),
    //                     PopupMenuItem(
    //                       child: Text('ذكر'),
    //                       value: 'ذكر',
    //                       height: 30,
    //                     ),
    //                   ];
    //                 });
    //               },
    //               icon: Icon(
    //                 Icons.arrow_downward_sharp,
    //               ))),
    //     ),
    //     SizedBox(
    //       height: 20,
    //     ),
    //     TextField(
    //         keyboardType:
    //             TextInputType.numberWithOptions(decimal: false, signed: false),
    //         style: TextStyle(
    //           color: Colors.black45,
    //         ),
    //         decoration: InputDecoration(
    //           hintText: 'رقم الطوارىء',
    //           hintMaxLines: 1,
    //           hintStyle: TextStyle(color: Colors.black38, fontSize: 15),
    //           fillColor: Colors.grey.shade200,
    //           filled: true,
    //           enabledBorder: OutlineInputBorder(
    //               borderSide: BorderSide(
    //                 color: Colors.white,
    //                 //عشان تخفي العرض لازم تعمل اللون TRANSPARENT
    //                 width: 1,
    //               ),
    //               borderRadius: BorderRadius.circular(10)),
    //         )
    //     ),
    //     SizedBox(height: 20,),
    //     ElevatedButton(
    //       onPressed: () {
    //         Navigator.pushReplacementNamed(context, '/blind_login_screen');
    //       },
    //       child: Text('انشاء حساب',style: TextStyle(
    //           fontFamily: 'cairo',fontSize: 20),),
    //       style: ElevatedButton.styleFrom(
    //
    //         primary: Color(0xff000000),
    //         minimumSize: Size(354, 50),
    //         shape: RoundedRectangleBorder(
    //           borderRadius: BorderRadiusDirectional.all(Radius.circular(10),
    //           ),
    //         ),
    //       ),
    //     ),
    //
    //   ]),
    // ))
        body: SafeArea(
            child: ListView(
                padding: EdgeInsetsDirectional.only(start: 39, end: 39,top: 105.8),
                children: [
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
                height: 30,
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
              SizedBox(height: 30),
              TextField(
                style: TextStyle(
                  color: Colors.black45,
                ),
                decoration: InputDecoration(
                  hintText: 'رقم الجوال',
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
                ),
              ),
              SizedBox(height: 30),
              TextField(
                style: TextStyle(
                  color: Colors.black45,
                ),
                decoration: InputDecoration(
                    hintText: 'الجنس',
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
                    suffixIcon: DropdownButton<String>(
                      isExpanded: true,
                      value: _selectedCityID,
                      // hint: Text('نوع الجنس'),
                      items: _cities
                          .map((Gender gender) => DropdownMenuItem<String>(
                        child: Text(gender.name),
                        value: gender.id.toString(),
                      ))
                          .toList(),
                      onChanged: (String? value) {
                        if (value != null) {
                          setState(() {
                            _selectedCityID = value;
                          });
                        }
                      },
                    )),
              ),
              SizedBox(height: 30),
              TextField(
                style: TextStyle(
                  color: Colors.black45,
                ),
                decoration: InputDecoration(
                  hintText: 'رقم الطوارىء1',
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
                ),
              ),
              SizedBox(height: 30),
              TextField(
                style: TextStyle(
                  color: Colors.black45,
                ),
                decoration: InputDecoration(
                  hintText: 'رقم الطوارىء2',
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
                ),
              ),



              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed:(){
                  Navigator.pushReplacementNamed(context, '/blind_login_screen');

                },
                // _performLogin,
                child: Text(
                  'انشاء حساب',
                  style: TextStyle(fontFamily: 'cairo', fontSize: 20),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff000000),
                  minimumSize: Size(354, 74),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusDirectional.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
              ),
              Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: 'يوجد لديك حساب؟ ',
                      style: TextStyle(color: Colors.black45, fontSize: 16),
                      children: [
                        TextSpan(),
                        TextSpan(

                          recognizer: _tapGestureRecognizer,
                          text: 'تسجيل دخول',
                          style: TextStyle(
                              color: Colors.blue.shade700,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        )
                      ]),
                ),
              ),
            ]))
    );
  }
}
