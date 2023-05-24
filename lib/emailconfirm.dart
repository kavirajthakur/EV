import 'package:ev/successful.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
class EmailConfirm extends StatefulWidget {
  const EmailConfirm({Key? key}) : super(key: key);

  @override
  State<EmailConfirm> createState() => _EmailConfirmState();
}

class _EmailConfirmState extends State<EmailConfirm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children:[
            Padding(padding: EdgeInsets.only(top:50,left: 34),
              child: Image.asset('assets/AW-.png'),
          ),

            Padding(padding: EdgeInsets.only(top: 450,left: 90),
                child:Text('Email Confirmation',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
            ),
            Padding(padding: EdgeInsets.only(top: 500,left: 90),
            child: Text('Email has been sent to your mail'),),
            Padding(padding: EdgeInsets.only(top: 550,left: 90),
            child: Text('Check your Inbox'),),
            Padding(padding: EdgeInsets.only(top:550,left: 210),
              child: InkWell(
                onTap: (){},
                child: const Text(
                  '"mail@gmail.com"',
                  style: TextStyle(
                    color: Colors.blueAccent,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),),
            Padding(
                padding: const EdgeInsets.only(top: 650,left: 30),
                child: SizedBox(
                  height: 60,
                  width: 330,
                  child: ElevatedButton(
                    onPressed: (){
                      Get.to(Successful());

                    },
                    child: Text('Resend'),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),

                      ),
                    ),
                  ),
                )
            ),



        ]
    ),
      ),

    );
  }
}
