import 'package:flutter/material.dart';
class Calaculator extends StatefulWidget {
  const Calaculator({super.key});

  @override
  State<Calaculator> createState() => _CalaculatorState();
}

class _CalaculatorState extends State<Calaculator> {
  double result=0;
  TextEditingController n1 = TextEditingController();
  TextEditingController n2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: MediaQuery.of(context).size.height*0.4,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Color(0xFF00796B),borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),bottomRight: Radius.circular(50))),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  controller: n1,
                  decoration: InputDecoration(
                    hintText: "Num1",
                    labelStyle: TextStyle(color: Colors.white,),
                    contentPadding: EdgeInsets.all(20),
                    enabledBorder: OutlineInputBorder(

                      borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.black)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  controller: n2,
                  decoration: InputDecoration(
                    hintText: "Num2",
                    labelStyle: TextStyle(color: Colors.white,),
                    contentPadding: EdgeInsets.all(20),
                    enabledBorder: OutlineInputBorder(

                      borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.black)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        Stack(
          alignment: AlignmentDirectional.center,
          children:[
            Container(
            height: 30,
            width:MediaQuery.of(context).size.width,
            color: Color(0xFF00796B) ,

                 ),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Container(
                    height: 80,
                    width:double.infinity ,
                    child: Center(child: Text("Result = $result",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                  ),
              ),

          ],

          ),
        Expanded(
          child: Container(
            
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: Color(0xFF00796B),borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: (){
                    double firstnumber=double.parse(n1.text);
                    double secondnumber=double.parse(n2.text);
                    result=firstnumber+secondnumber;
                    setState(() {

                  });},
                  child: Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(15) ,
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(color:Color(0xFFE1BEE7),borderRadius: BorderRadius.circular(15) ),
                      child: Center(child: Text("+",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    double firstnumber=double.parse(n1.text);
                    double secondnumber=double.parse(n2.text);
                    result=firstnumber-secondnumber;
                    setState(() {

                    });},
                  child: Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(15) ,
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(color:Color(0xFFE1BEE7),borderRadius: BorderRadius.circular(15) ),
                      child: Center(child: Text("-",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    double firstnumber=double.parse(n1.text);
                    double secondnumber=double.parse(n2.text);
                    result=firstnumber*secondnumber;
                    setState(() {

                    });},
                  child: Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(15) ,
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(color:Color(0xFFE1BEE7),borderRadius: BorderRadius.circular(15) ),
                      child: Center(child: Text("x",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    double firstnumber=double.parse(n1.text);
                    double secondnumber=double.parse(n2.text);
                    result=firstnumber/secondnumber;
                    setState(() {

                    });},
                  child: Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(15) ,
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(color:Color(0xFFE1BEE7),borderRadius: BorderRadius.circular(15) ),
                      child: Center(child: Text("/",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),

         ]


    );
  }
}
