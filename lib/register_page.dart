import 'package:car_khaana/home_page.dart';
import 'package:car_khaana/login_page.dart';
import 'package:car_khaana/services/authentication_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  final unameController = TextEditingController();
  final emailController = TextEditingController();
  final passController = TextEditingController();  
  String uname = "uname";
  String email = "email";
  String pass = "pass";

  @override
  Widget build(BuildContext context) {
    var dWidth = MediaQuery.of(context).size.width;
    var dHeight = MediaQuery.of(context).size.height;
    
    var dPadding = MediaQuery.of(context).padding;
    var dSafeHeight = dHeight - dPadding.top - dPadding.bottom;
    
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
            maxWidth: MediaQuery.of(context).size.width,
            
          ),
          decoration: BoxDecoration(
            image: new DecorationImage(
              fit: BoxFit.cover,
              colorFilter: 
              ColorFilter.mode(Colors.black45.withOpacity(0.5), 
              BlendMode.darken),
              image: new AssetImage("assets/images/register_bg.jpg"),
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.only(top: 26, bottom: 110, left: 24, right: 24),
                  
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Center(
                        child: Text("Register", style: TextStyle(
                          color: Colors.white,  
                          fontSize: 46.0,
                          fontWeight: FontWeight.w800,
                        ),),
                      )),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        child: Center(
                        child: Text("Enjoy your stay at CarKhaana!", style: TextStyle(
                          color: Colors.blue.shade100,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w300,
                        ),),
                      ))
                    ],),
                )
              ),
              Expanded(
                flex:6,
                child: Container(
                  margin: const EdgeInsets.all(40.0),
                  padding: const EdgeInsets.all(24.0),
                  child: Column(                    
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade600.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: TextField(
                          style: TextStyle(color: Colors.white,),
                          controller: unameController,
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(                                
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide.none,
                            ),
                            hintText: "Username",
                            hintStyle: TextStyle(color: Colors.white),
                            prefixIcon: Icon(
                              Icons.account_circle,
                              color: Colors.white,)
                          ),
                        ),
                      ),
                      SizedBox(
                        height: dHeight*0.05
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade600.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: TextField(
                          style: TextStyle(color: Colors.white,),
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(                                
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide.none,
                            ),
                            hintText: "E-mail",
                            hintStyle: TextStyle(color: Colors.white),
                            prefixIcon: Icon(
                              Icons.email,
                              color: Colors.white,)
                          ),
                        ),
                      ),
                      SizedBox(
                        height: dHeight*0.05
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade600.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(16)
                        ),
                        child: TextField(
                          controller: passController,
                          obscureText: true,
                          style: TextStyle(color: Colors.white,),
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide.none,
                            ),
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.white),
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.white,)
                          ),
                        ),
                      ),
                      SizedBox(
                        height: dHeight*0.05
                      ),
                      SizedBox(
                        height: dHeight*0.02,
                        child: Row(
                          children: [Text("Existing User? ",style: TextStyle(color: Colors.white54),),GestureDetector(child: Text(" Login here", style: TextStyle(decoration: TextDecoration.underline, color: Colors.deepPurple)), onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    LoginPage()));})],
                        )
                      ),
                      SizedBox(
                        width: 120,
                        height:dHeight*0.05,
                        child: TextButton(	
                          child: Text('Register'),
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.blueAccent,
                            primary: Colors.white,
                            elevation: double.infinity,
                            textStyle: TextStyle(
                                fontSize: 25,	                                      	
                            ),	
                          ),	
                          onPressed: () {
                            final String uname = unameController.text.trim();
                            final String email = emailController.text.trim();
                            final String pass = passController.text.trim();
                            
                            if (uname.isEmpty){
                              print("username is empty");
                            } else {
                              if (email.isEmpty) {
                                print("email is empty");
                              } else {
                                if (pass.isEmpty) {
                                  print("pass is empty");
                                } else {
                                  //context.read<AuthenticationService>().signUp(email:email,password: pass); 

                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) =>HomePage())
                                    );
                                }
                              } 
                            }
                          },	
                      ))
                    ],
                  ),
                ),
                ),
            ],)
        )
      )
    );
  }
}