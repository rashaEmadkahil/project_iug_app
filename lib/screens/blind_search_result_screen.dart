import 'package:flutter/material.dart';

class BlindSearchResultScreen extends StatefulWidget {
  const BlindSearchResultScreen({Key? key}) : super(key: key);

  @override
  _BlindSearchResultScreenState createState() =>
      _BlindSearchResultScreenState();
}

class _BlindSearchResultScreenState extends State<BlindSearchResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/blind_home_screen');
          },
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
          ),
        ),
        elevation: 0,
        centerTitle: true,
        title: Text(
          ' نتائج البحث',
          style: TextStyle(color: Colors.black,
          fontSize: 20
              ,fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        padding: EdgeInsetsDirectional.only(start: 22, end: 22,top: 28.4),

        children: [
          Align(
              alignment: AlignmentDirectional.topStart,
              child: Text(
                'مطاعم',
              )),
          SizedBox(
            height: 33,
          ),


          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 5,
            itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsetsDirectional.only(bottom: 20),
            shape: RoundedRectangleBorder(
                side: BorderSide(color: Color(0XFF707070))),
            child: ListTile(
              contentPadding: EdgeInsets.only(right: 20),
              title: Text(
                'ردهة مطاعم كابيتال مول',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              subtitle: Text(
                'غزة-رمال-كابيتال مول',
                style: TextStyle(fontSize: 15,
                color: Color(0XFF6A6A6A)),
              ),
            ),
          );
            },
          ),
          SizedBox(height: 39,),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacementNamed(
                  context, '/blind_profile_screen');
            },
            child:
                Text('تحميل مزيد من النتائج', style: TextStyle(fontSize: 16
                    ,fontWeight: FontWeight.w600)),
            style: ElevatedButton.styleFrom(
              primary: Color(0xff000000),
              minimumSize: Size(384, 71),
            ),
          ),



          // child: ListView(children: [
          //   Card(
          //     shape: RoundedRectangleBorder(
          //       side: BorderSide(color: Color(0xff707070))
          //     ),
          //     child: ListTile(
          //       title: Text('ردهة مطاعم كابيتال مول',
          //           style: TextStyle(fontSize: 16,
          //           color: Colors.black),),
          //       subtitle: Text('غزة-رمال-كابيتال مول',style:
          //         TextStyle(fontSize: 15),),
          //     ),
          //   ),
          //   SizedBox(height: 20,),
          //
          //   Card(
          //     shape: RoundedRectangleBorder(
          //         side: BorderSide(color: Color(0xff707070))
          //     ),
          //     child: ListTile(
          //       title: Text('ردهة مطاعم كابيتال مول',
          //         style: TextStyle(fontSize: 16,
          //             color: Colors.black),),
          //       subtitle: Text('غزة-رمال-كابيتال مول',style:
          //       TextStyle(fontSize: 15),),
          //     ),
          //   ),
          //   SizedBox(height: 20,),
          //
          //   Card(
          //     shape: RoundedRectangleBorder(
          //         side: BorderSide(color: Color(0xff707070))
          //     ),
          //     child: ListTile(
          //       title: Text('ردهة مطاعم كابيتال مول',
          //         style: TextStyle(fontSize: 16,
          //             color: Colors.black),),
          //       subtitle: Text('غزة-رمال-كابيتال مول',style:
          //       TextStyle(fontSize: 15),),
          //     ),
          //   ),
          //   SizedBox(height: 20,),
          //
          //   Card(
          //     shape: RoundedRectangleBorder(
          //         side: BorderSide(color: Color(0xff707070))
          //     ),
          //     child: ListTile(
          //       title: Text('ردهة مطاعم كابيتال مول',
          //         style: TextStyle(fontSize: 16,
          //             color: Colors.black),),
          //       subtitle: Text('غزة-رمال-كابيتال مول',style:
          //       TextStyle(fontSize: 15),),
          //     ),
          //   ),
          //   SizedBox(height: 20,),
          // ],
          // ),
        ],
      ),
    );
  }
}
