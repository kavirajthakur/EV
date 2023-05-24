import 'dart:convert';
import 'package:http/http.dart';
import 'package:get/get.dart';
import 'package:ev/register.dart';
import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  void login(String email , password) async {

    try{

      var response = await post(
          Uri.parse('http://easy.deploywork.com:4360/app/auth/login'),
          body: {
            'email' : 'eve.holt@reqres.in',
            'password' : 'cityslicka'
          }
      );

      if(response.statusCode == 200){

        var data = jsonDecode(response.body.toString());
        print(data['token']);
        print('Login successfully');

      }else {
        print('failed');
      }
    }catch(e){
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:SingleChildScrollView(
          child: Stack(
            children: [
              Padding(padding: EdgeInsets.only(top:50,left: 34),
            child:Image.asset('assets/Vector.png',),),
            Padding(padding: EdgeInsets.only(top: 260),
            child: Container(
              child: SingleChildScrollView(
                child: Padding(padding: EdgeInsets.only(top: 50,left: 120),
                  child: Text('Log In',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,),
                ),
              ),
            ),
    )

            ),
              Padding(padding: EdgeInsets.only(top:400,left:19 ),
              child: Text('Email',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
              ),),
              SizedBox(
            height: 12,
             ),

              SizedBox(
                height: 30,
              ),
                Padding(
                  padding: const EdgeInsets.only(top: 440,left: 19),
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: "hello@gmail.com",
                      prefixIcon: const Icon(Icons.mail_outline),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      )
                    ),

                  ),
                ),

              Padding(padding: EdgeInsets.only(top:520,left:15 ),
                child: Text('Password',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                ),),

              Padding(
                padding: const EdgeInsets.only(top: 550,left: 15),
                child: TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                      hintText: "Password",
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: Icon(Icons.visibility),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      )
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 650,left: 30),
                child: SizedBox(
                  height: 60,
                  width: 330,
                  child: ElevatedButton(
                    onPressed: (){
                      login(emailController.text.toString(), passwordController.text.toString());
                    },
                    child: Text('Login'),
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
              Padding(padding: EdgeInsets.only(top:730,left: 100),
                child: Text('Forgot your Password?',style: TextStyle(color: Colors.grey),),),

              Padding(padding: EdgeInsets.only(top:760,left: 100),
                child: Text("Don't have an" ,style: TextStyle(color: Colors.black),),),
              Padding(padding: EdgeInsets.only(top:760,left: 200),
              child: InkWell(
                onTap: (){
                  Get.to(Register());
                },
                child: const Text(
                  'Register?',
                  style: TextStyle(
                    color: Colors.blueAccent,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),)

            ]
              ),
        ),

    );


  }
}
