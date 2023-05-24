import 'package:ev/emailconfirm.dart';
import 'package:ev/registermodel.dart';
import 'package:ev/signin.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final emailController  = TextEditingController();
  final phonenumberController = TextEditingController();
  final passwordController = TextEditingController();


  register(String  email, contact, pass) async {
    var data = SignupRequest(deviceToken:"sdsad" , deviceType:"sadsda" , email:email ,password:pass , phone: contact);
    print(data);

    // String body = json.encode(data);
    var url = Uri.parse('http://easy.deploywork.com:4360/app/auth/signup');
    var response = await http.post(
      url,
      body: data.toJson(),
      headers: {
        "accept": "application/json",
        "Access-Control-Allow-Origin": "*"
      },
    );
    print(response.body);
    print(response.statusCode);
    if (response.statusCode == 200) {
      print('success');
    } else {
      print('error');
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
                        child: Text('Register',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,),
                        ),
                      ),
                    ),
                  )

              ),
              Padding(padding: EdgeInsets.only(top:400,left:19 ),
                child: Text('Email',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                ),),
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
                child: Text('Phone Number',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                ),),

              Padding(
                padding: const EdgeInsets.only(top: 550,left: 15),
                child: TextField(
                  controller: phonenumberController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: "Phone Number",
                      prefixIcon: const Icon(Icons.call),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      )
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top:630,left:15 ),
                child: Text('Password',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                ),),

              Padding(
                padding: const EdgeInsets.only(top: 652,left: 15),
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
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
                  padding: const EdgeInsets.only(top: 750,left: 30),
                  child: SizedBox(
                    height: 60,
                    width: 330,
                    child: ElevatedButton(
                      onPressed: (){
                        register(emailController.text.toString(),phonenumberController.text.toString(), passwordController.text.toString());
                      },
                      child: Text('Register'),
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
              Padding(padding: EdgeInsets.only(top:850,left: 70),
                child: Text('Already have an Account?',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),),

              Padding(padding: EdgeInsets.only(top:850,left: 254),
                child: InkWell(
                  onTap: () =>Get.to(EmailConfirm()
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.blueAccent,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),),

            ]
        ),
      ),

    );


  }
}
