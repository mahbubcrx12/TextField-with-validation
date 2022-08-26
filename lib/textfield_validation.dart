import 'package:flutter/material.dart';

class TextFieldWithValidation extends StatefulWidget {
  const TextFieldWithValidation({Key? key}) : super(key: key);

  @override
  State<TextFieldWithValidation> createState() =>
      _TextFieldWithValidationState();
}

class _TextFieldWithValidationState extends State<TextFieldWithValidation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: <Color>[Colors.blueGrey, Colors.indigo],
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 70, 15, 20),
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.verified_user,
                                  color: Colors.white70,
                                ),
                                hintText: "Enter User ID",
                                hintStyle: TextStyle(
                                  color: Colors.white38,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                ),
                                fillColor: Colors.black26,
                                filled: true,
                                enabled: true,
                                focusedBorder: InputBorder.none,
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.password_outlined,
                                  color: Colors.white70,
                                ),
                                hintText: "Password",
                                hintStyle: TextStyle(
                                  color: Colors.white38,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                ),
                                fillColor: Colors.black26,
                                filled: true,
                                enabled: true,
                                focusedBorder: InputBorder.none,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: <Color>[Colors.blueGrey, Colors.indigo],
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.white54),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          
          Positioned(


            top: 130,
              left: 120,
              child:CircleAvatar(
                radius: 80,
                backgroundImage: NetworkImage("https://images.unsplash.com/photo-1568417847905-1ba5effadab1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8am9rZXJ8ZW58MHx8MHx8&w=1000&q=80"),



              ) 
          )
        ],
      )
    );
  }
}
