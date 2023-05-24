import 'package:flutter/material.dart';
class Successful extends StatefulWidget {
  const Successful({Key? key}) : super(key: key);

  @override
  State<Successful> createState() => _SuccessfulState();
}

class _SuccessfulState extends State<Successful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(padding: EdgeInsets.only(top: 200,left: 85),
          child: Image.asset('assets/Done.png'),),
          Padding(padding: EdgeInsets.only(top: 420,left: 90),
          child: Text('Registered',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),)
          ,Padding(padding: EdgeInsets.only(top: 480,left: 75),
          child: Text('Your Registration was succesful',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),),
          Padding(padding: EdgeInsets.only(top: 550,left: 70),

          child: SizedBox(
            height: 60,
            width: 250,
            child: ElevatedButton(

    style: ElevatedButton.styleFrom(
    primary: Colors.white,
      shape: StadiumBorder(),

    ),

    onPressed: (){},
    child: Text('Back to Login',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
    ),
    ),

          ),
          ),
        ],
      )
      
    );
  }
}
