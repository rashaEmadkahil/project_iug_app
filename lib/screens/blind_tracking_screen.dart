import 'package:flutter/material.dart';

class BlindTrackingScreen extends StatefulWidget {
  const BlindTrackingScreen({Key? key}) : super(key: key);

  @override
  _BlindTrackingScreenState createState() => _BlindTrackingScreenState();
}

class _BlindTrackingScreenState extends State<BlindTrackingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white,
        leading: IconButton(onPressed: () {
          Navigator.pushReplacementNamed(context, '/blind_home_screen');
        },icon: Icon(Icons.arrow_back_ios_rounded,
        color: Colors.black,),
        ),
        elevation: 0,
        centerTitle: true,
        title: Text('معلومات الرحلة',style: TextStyle(color: Colors.black,
        fontSize: 20
            ,fontWeight: FontWeight.bold),),),

      body: ListView(
        padding: EdgeInsetsDirectional.only( start: 22, top: 54.4,end: 22),

        children: [
          Text('مزاج',style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black
          ),
          ),
          SizedBox(height: 5,),
          Text('غزة-رمال-كابيتال مول',style: TextStyle(
              color: Colors.black45
          ),
          ),
          SizedBox(height: 15,),
          Text('المسافة المتبقية بالقدم',style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black
          ),
          ),
          SizedBox(height: 5,),
          Text('80 قدم',style: TextStyle(
              color: Colors.black45
          ),
          ),
          SizedBox(height: 15,),
          Text('الوقت المتبقي',style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black
          ),
          ),
          SizedBox(height: 5,),
          Text('3 دقائق',style: TextStyle(
              color: Colors.black45
          ),
          ),
          SizedBox(height: 15,),
          Text('حالة الطقس',style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black
          ),
          ),
          SizedBox(height: 5,),
          Text('27 C',style: TextStyle(
              color: Colors.black45
          ),
          ),
          SizedBox(height: 44,),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/blind_home_screen');
            },
            child: Text('انهاء الرحلة',style: TextStyle(fontSize: 16
                ,fontWeight: FontWeight.w600)),
            style: ElevatedButton.styleFrom(
              primary: Color(0xff000000),
              minimumSize: Size(384, 71),
            ),
          ),
        ],
      ),
    );
  }
}

