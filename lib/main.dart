import 'package:flutter/material.dart';
import 'package:uilogin/utilities/constants.dart'as style;

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  FocusNode myFocusNode = new FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sample App'),
          centerTitle: true,
          backgroundColor: style.AppColors.primaryColor,
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Flutter Login',
                      style: TextStyle(
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.w500,
                          fontSize: 30.0),
                    )),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Sign in',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.deepPurple),

                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    focusNode: myFocusNode,
                    controller: nameController,
                    autofocus: false,
                    decoration: InputDecoration(
                      alignLabelWithHint: true,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: style.AppColors.primaryColor,
                          ),
                        ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: style.AppColors.staticgrey,),


                      ),
                      labelText: 'User Name',
                      labelStyle: TextStyle(
                        color:
                        myFocusNode.hasFocus ?Colors.deepPurple : Colors.grey[600],
                    )

                      ),
                    ),
                  ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    focusNode: myFocusNode,
                    obscureText: true,
                    controller: passwordController,
                    autofocus: false,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: style.AppColors.primaryColor),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: style.AppColors.staticgrey),
                      ),
                      labelText: 'Password',
                      labelStyle: TextStyle(
                        color: myFocusNode.hasFocus ?Colors.deepPurple : Colors.grey[600]
                      )
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: (){
                    //forgot password screen
                  },
                  textColor: Colors.deepPurple,
                  child: Text('Forgot Password'),

                ),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.deepPurple,
                      child: Text('Login'),
                      onPressed: () {
                        print(nameController.text);
                        print(passwordController.text);
                      },
                    )),
                Container(
                    child: Row(
                      children: <Widget>[
                        Text(
                            'Do not have an account?',
                          style: TextStyle(
                            color: Colors.deepPurple
                          ),
                        ),

                        FlatButton(
                          textColor: Colors.deepPurple,
                          child: Text(
                            'Sign in',
                            style: TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            //signup screen
                          },
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ))
              ],
            )));
  }
}





