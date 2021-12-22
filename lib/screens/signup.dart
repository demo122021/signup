import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          // action button
          IconButton(
            icon: Icon( Icons.clear,size: 30,color: Colors.black, ),
            onPressed: () { },
          ),

        ],

      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Column(

                      children: [
                        Text ("Create an Account",textAlign: TextAlign.left, style: TextStyle(

                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Already have an account? ",textAlign: TextAlign.left,),
                            Text("Sign in",textAlign: TextAlign.left,style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18
                            ),),
                          ],
                        ),
                        SizedBox(height: 30,)
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 40
                      ),
                      child: Column(
                        children: [
                          makeInput(label: "Email"),
                          makeInput(label: "Full Name"),
                          makeInput(label: "Phone Number"),
                          makeInput(label: "Company"),
                        ],
                      ),
                    ),
                    SizedBox(height: 100,),
                    Padding(
                      padding: const EdgeInsets.all(40),
                      child: Container(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: MaterialButton(
                          minWidth: double.infinity,
                          height:60,
                          onPressed: (){},
                          color: Colors.deepPurple[900],
                          child: Text("Next",style: TextStyle(
                            fontWeight: FontWeight.w600,fontSize: 16, color: Colors.white,
                          ),),
                        ),),
                      ),
                    ),
                  ],

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget makeInput({label,obsureText = false}){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(label,style:TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: Colors.black87
      ),),
      SizedBox(height: 5,),
      TextField(
        obscureText: obsureText,
        decoration: InputDecoration(
          hintText: "Enter your " + label,
          contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey)
          ),
        ),
      ),
      SizedBox(height: 30,)

    ],
  );
}