import 'package:flutter/material.dart';

class LOG extends StatefulWidget {
  const LOG({super.key});

  @override
  State<LOG> createState() => _LOGState();
}

class _LOGState extends State<LOG> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [

        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Color(0xFFFF6B00),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(height: 70),
              Padding(
                padding: EdgeInsets.only(left: 10.0,bottom: 3),
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Welcome Back",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            ],
          ),
        ),

        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.75,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(70),
              topRight: Radius.circular(70),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20.0,left: 20),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.orangeAccent.withOpacity(0.2),
                        blurRadius: 10,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Email or Phone number",
                      contentPadding: const EdgeInsets.all(20),
                        enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.orangeAccent)

                        )
                    ),
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0,left: 20),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.orangeAccent.withOpacity(0.2),
                        blurRadius: 10,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Password",
                      contentPadding: const EdgeInsets.all(20),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.orangeAccent)

                      )
                    ),

                  ),

                ),
              ),
              SizedBox(height: 50,),
              Text("Forget Password?",style: TextStyle(color: Colors.black38,fontSize: 17),),
              SizedBox(height: 50,),
              GestureDetector(
                child: Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    width: 150,
                    decoration: BoxDecoration(color: Color(0xFFFF6B00),borderRadius: BorderRadius.circular(20)),
                    child: Center(child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),),),
                  ),
                ),
              ),
              SizedBox(height: 50,),
              Text("Continue with social media",style: TextStyle(color: Colors.black38,fontSize: 17),),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        width: 150,
                        decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(20)),
                        child: Center(child: Text("Facebook",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),),
                      ),
                    ),
                  ),
                  GestureDetector(
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        width: 150,
                        decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(20)),
                        child: Center(child: Text("Github",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
