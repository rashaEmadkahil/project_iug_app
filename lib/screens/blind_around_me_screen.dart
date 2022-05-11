import 'package:flutter/material.dart';

class BlindAroundMeScreen extends StatefulWidget {
  const BlindAroundMeScreen({Key? key}) : super(key: key);

  @override
  _BlindAroundMeScreenState createState() => _BlindAroundMeScreenState();
}

class _BlindAroundMeScreenState extends State<BlindAroundMeScreen> {
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
          'أماكن بالقرب',
          style: TextStyle(color: Colors.black,
          fontSize: 20
              ,fontWeight: FontWeight.bold),
        ),
      ),
      // body: Padding(padding: EdgeInsetsDirectional.only(start: 22,end: 22),
      //   child: Column(
      //     children: [
      //       SizedBox(height: 50,),
      //       ElevatedButton(
      //         onPressed: () {
      //           Navigator.pushReplacementNamed(context, '/blind_profile_screen');
      //         },
      //         child: Text('تحميل مزيد من النتائج',style: TextStyle(fontSize: 16
      //             ,fontWeight: FontWeight.w600)),
      //         style: ElevatedButton.styleFrom(
      //           primary: Color(0xff000000),
      //           minimumSize: Size(384, 71),
      //
      //         ),
      //       ),
      //       SizedBox(height: 30,),
      //       Expanded(
      //         child: ListView.builder(
      //             padding: EdgeInsets.symmetric( horizontal: 15),
      //           itemCount: 5,
      //           itemBuilder:  (context, index) {
      //             return Card(
      //               shape: RoundedRectangleBorder(
      //                   side: BorderSide(color: Color(0XFF707070))),
      //               child: ListTile(
      //                 contentPadding: EdgeInsets.only(right: 20),
      //                 title: Text('مزاج-مطعم' ,
      //                   style: TextStyle(fontSize: 16, color: Colors.black),),
      //                 subtitle: Text('3أقدام   2دقيقة',
      //                   style: TextStyle(fontSize: 15,
      //                       color: Color(0XFF6A6A6A)),),
      //               ),
      //             );
      //           }
      //         ),
      //         // child: ListView(children: [
      //         //   Card(
      //         //     shape: RoundedRectangleBorder(
      //         //         side: BorderSide(color: Color(0xff707070))
      //         //     ),
      //         //     child: ListTile(
      //         //       title: Text('مزاج-مطعم',
      //         //         style: TextStyle(fontSize: 16,
      //         //             color: Colors.black),),
      //         //       subtitle: Text('3أقدام   2دقيقة',style:
      //         //       TextStyle(fontSize: 15),),
      //         //     ),
      //         //   ),
      //         //   SizedBox(height: 20,),
      //         //
      //         //   Card(
      //         //     shape: RoundedRectangleBorder(
      //         //         side: BorderSide(color: Color(0xff707070))
      //         //     ),
      //         //     child: ListTile(
      //         //       title: Text('مزاج-مطعم',
      //         //         style: TextStyle(fontSize: 16,
      //         //             color: Colors.black),),
      //         //       subtitle: Text('3أقدام   2دقيقة',style:
      //         //       TextStyle(fontSize: 15),),
      //         //     ),
      //         //   ),
      //         //   SizedBox(height: 20,),
      //         //
      //         //   Card(
      //         //     shape: RoundedRectangleBorder(
      //         //         side: BorderSide(color: Color(0xff707070))
      //         //     ),
      //         //     child: ListTile(
      //         //       title: Text('مزاج-مطعم',
      //         //         style: TextStyle(fontSize: 16,
      //         //             color: Colors.black),),
      //         //       subtitle: Text('3أقدام   2دقيقة',style:
      //         //       TextStyle(fontSize: 15),),
      //         //     ),
      //         //   ),
      //         //   SizedBox(height: 20,),
      //         //
      //         //   Card(
      //         //     shape: RoundedRectangleBorder(
      //         //         side: BorderSide(color: Color(0xff707070))
      //         //     ),
      //         //     child: ListTile(
      //         //       title: Text('مزاج-مطعم',
      //         //         style: TextStyle(fontSize: 16,
      //         //             color: Colors.black),),
      //         //       subtitle: Text('3أقدام   2دقيقة',style:
      //         //       TextStyle(fontSize: 15),),
      //         //     ),
      //         //   ),
      //         //
      //         // ],
      //         // ),
      //       )
      //     ],
      //   ),
      // ),
      body: ListView(
        padding: EdgeInsetsDirectional.only( start: 22, top: 48.4,end: 22),

        children: [
          Text('شمالا',style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 18
          ),
          ),
          SizedBox(height: 14,),
          Text('كابيتال مول',style: TextStyle(
              color: Colors.black,
              fontSize: 16
          ),
          ),
          SizedBox(height: 29,),
          Text('جنوبا',style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 18
          ),
          ),
          SizedBox(height: 14,),
          Text('برج الشروق',style: TextStyle(
              color: Colors.black,
              fontSize: 16
          ),
          ),
          SizedBox(height: 29,),
          Text('غربا',style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 18
          ),
          ),
          SizedBox(height: 14,),
          Text(' الجندي المجهول',style: TextStyle(
              color: Colors.black,
              fontSize: 16
          ),
          ),
          SizedBox(height: 29,),
          Text('شرقا',style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 18
          ),
          ),
          SizedBox(height: 14,),
          Text('مفترق السرايا',style: TextStyle(
              color: Colors.black,
            fontSize: 16

          ),
          ),


        ],
      ),
    );
  }
}
