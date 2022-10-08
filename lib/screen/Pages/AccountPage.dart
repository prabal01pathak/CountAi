import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Center(
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        child: Icon(Icons.arrow_back_outlined, color: Colors.red,),
                      ),
                      Text('Back',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.red
                        ),)
                    ],
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10,top: 5, right: 10,bottom: 5),
                    child: Container(
                      height: 40,
                      width: 130,
                      child: Image(image: AssetImage("assets/image/facegenie.png"),),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              child: Stack(
                children: <Widget> [
                  Container(
                    width: double.infinity,
                    height: 90,
                    child: Image(image: AssetImage("assets/image/account_header.png"),
                      fit: BoxFit.fill,),
                  ),
                  Positioned(
                    child: Container(
                      margin: EdgeInsets.only(top: 30, bottom: 20),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(
                              "assets/image/user.jpg",
                              height: 100.0,
                              width: 100.0,
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 10,
                          ),
                          Text('Fname Lname',style: TextStyle(fontSize: 16,color: Colors.black),),
                          SizedBox(
                            width: double.infinity,
                            height: 5,
                          ),
                          Text('xyz000@gmail.com',style: TextStyle(fontSize: 14,color: Colors.black54),),
                          SizedBox(
                            width: double.infinity,
                            height: 5,
                          ),
                          Text('+91 00000 00000',style: TextStyle(fontSize: 14,color: Colors.black54),),
                        ],
                      ),
                    ),
                  )

                ],
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 1,
                      color: Colors.black26,
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 0),
                      child: Row(
                        children: [
                          Center(child: Icon(Icons.edit_outlined, color: Colors.black54,)),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Center(
                              child: Text('Edit Profile',
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 16
                              ),),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 1,
                      color: Colors.black26,
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 0),
                      child: Row(
                        children: [
                          Center(child: Icon(Icons.delete_outline, color: Colors.black54,)),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Center(
                              child: Text('Clear History',
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 16
                                ),),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 1,
                      color: Colors.black26,
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 0),
                      child: Row(
                        children: [
                          Center(child: Icon(Icons.lock_outline, color: Colors.black54,)),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Center(
                              child: Text('Change Password',
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 16
                                ),),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 1,
                      color: Colors.black26,
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 0),
                      child: Row(
                        children: [
                          Center(child: Icon(Icons.mail_outline, color: Colors.black54,)),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Center(
                              child: Text('Contact Us',
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 16
                                ),),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 1,
                      color: Colors.black26,
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 0),
                      child: Row(
                        children: [
                          Center(child: Icon(Icons.web, color: Colors.black54,)),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Center(
                              child: Text('Visit Our Website',
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 16
                                ),),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 1,
                      color: Colors.black26,
                    ),

                    Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 0),
                        child: new GestureDetector(
                          onTap: (){
                            showDialog(context: context, builder: (context){
                              return Container(
                                child: AlertDialog(
                                  title: Text('Log out session',
                                    style: TextStyle(
                                        fontSize: 18
                                    ),),
                                  content: const Text('Are you sure you want to logout?',
                                    style: TextStyle(
                                        fontSize: 14
                                    ),),
                                  actions: [
                                    TextButton(onPressed: (){
                                      Navigator.pop(context);
                                    }, child: Text('YES, LOG OUT',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.red
                                      ),)),
                                    TextButton(onPressed: (){
                                      Navigator.pop(context);
                                    }, child: Text('NO, I AM STAYING',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.red
                                      ),)),
                                  ],
                                ),
                              );
                            });
                          },
                          child: Row(
                            children: [
                              Center(child: Icon(Icons.logout_outlined, color: Colors.black54,)),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Center(
                                  child: Text('Log Out',
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 16
                                    ),),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),

                    Container(
                      width: double.infinity,
                      height: 1,
                      color: Colors.black26,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
