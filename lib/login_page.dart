import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Color> ListColor = [
      Color.fromARGB(255, 240, 92, 1),
      Color.fromARGB(255, 240, 92, 1),
      Color.fromARGB(255, 241, 138, 0)
    ];
    _FunTextField(BuildContext context) {
      return <Widget>[
        SizedBox(
          height: 15,
        ),
        Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(50))),
          child: TextField(
              style: new TextStyle(fontSize: 18.0, color: Color(0xFFbdc6cf)),
              decoration: new InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Username',
                contentPadding:
                    const EdgeInsets.only(left: 30.0, bottom: 14.0, top: 8.0),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: new BorderRadius.circular(50),
                ),
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.blueGrey,
                ),
              )),
        ),
        SizedBox(
          height: 12,
        ),
        Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(50))),
          child: TextField(
              style: new TextStyle(fontSize: 18.0, color: Color(0xFFbdc6cf)),
              decoration: new InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Password',
                contentPadding:
                    const EdgeInsets.only(left: 30.0, bottom: 14.0, top: 8.0),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: new BorderRadius.circular(50),
                ),
                prefixIcon: Icon(
                  Icons.vpn_key,
                  color: Colors.blueGrey,
                ),
              )),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 25),
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              "Forgot password ?",
              style: TextStyle(fontSize: 12, color: Colors.blueGrey),
            ),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Container(
            height: 50,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: ListColor,
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft),
                borderRadius: BorderRadius.all(Radius.circular(110))),
            child: Center(
              child: Text("LOGIN" ,style: TextStyle(
                color: Colors.white,
                fontSize: 17
              ),),
            )),
            
        SizedBox(
          height: 12,
        ),
        Align(
          alignment: Alignment.center,
          child: Text("Don't have account ?" ,style: TextStyle(color: Colors.blueGrey),),
        )
      ];
    }

    return Scaffold(
      backgroundColor: Color.fromRGBO(248, 248, 248, 1),
      body: ListView(
        children: <Widget>[
          Container(
            height: 280,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: ListColor,
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight),
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(110))),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Center(
                    child: Icon(
                      Icons.center_focus_strong,
                      color: Colors.white,
                      size: 70,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 25, bottom: 30),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(children: _FunTextField(context)),
            ),
          )
        ],
      ),
    );
  }
}
