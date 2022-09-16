import 'package:flutter/material.dart';

class RegisterWidget extends StatelessWidget {
  const RegisterWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    String email = '', pass = '';
    bool _isObsecure = false;
    var _fromKey ;
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          // toolbarHeight: 150,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          flexibleSpace: Image(
            image: AssetImage('assets/grindr-logo.png'),
            fit: BoxFit.cover,
            width: 30,
          ),
          bottom: TabBar(
            indicatorWeight: 2,
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                text: 'Email',
              ),
              Tab(
                text: 'Phone',
              ),
            ],
          ),
        ),
        body:Column(
          children: <Widget> [
            Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: 16.0, horizontal: 32.0),
              child: Column(
                key: _fromKey,
                children: [
                  //EmailField
                  TextFormField(
                    onChanged: (value) {
                      email = value;
                    },
                    textInputAction: TextInputAction.next,
                    decoration: const InputDecoration(
                      hintText: "Enter Email",
                      labelText: "Username",
                    ),
                    validator: (input) {
                      // Bang Operator is used

                      if (input!.isEmpty) {
                        return "Username cannot be empty";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  //PasswordField
                  TextFormField(
                    onChanged: (value) {
                      pass = value;
                    },
                    textInputAction: TextInputAction.next,
                    obscureText: _isObsecure,
                    decoration: InputDecoration(
                      hintText: "Enter password ",
                      labelText: "Password",
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isObsecure
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                        onPressed: () {
                          // setState(() {
                          //   _isObsecure = !_isObsecure;
                          // });
                        },
                      ),
                    ),

                  ),
                  SizedBox(
                    height: 10,
                  ),
                  //Forgot password
                  Container(
                    alignment: Alignment(1, 0),
                    padding: EdgeInsets.only(top: 15, left: 20),
                    child: const InkWell(
                      child: Text(
                        'Forgot Password',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat',
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  //SIGNIN Activity
                  Container(
                    height: 40,
                    child: Material(
                      borderRadius: BorderRadius.circular(20),
                      shadowColor: Colors.greenAccent,
                      color: Colors.black,
                      elevation: 7,
                      child: InkWell(
                        onTap: () async{
                          await Future.delayed(Duration(seconds: 1));

                        },
                        child: Center(
                          child: Text(
                            'SIGNIN',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text('OR'),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  //Register Button
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 10, left: 0),

                    child:InkWell(
                      child: Text(
                        'Sign up now',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat',
                            decoration: TextDecoration.underline),
                      ),
                      onTap: () {
                        // Navigator.pushNamed(
                        //     context, MyRoutes.registerRoute);
                      },
                    ),
                  ),
                ],
              ),




  ),
      ],
    ),
      ),
        );

  }
}