import 'package:flutter/material.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
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
            Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                      border: Border.all(color: Colors.black26,width: 1)
                  ),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5.0),
                            child: Image.asset(
                              "assets/image/pipe.jpeg",
                              height: 80.0,
                              width: 110.0,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Center(
                                      child: Container(
                                        width: 15,
                                        height: 15,
                                        child: Icon(Icons.line_style, color: Colors.red,
                                        size: 15,),
                                      ),
                                    ),
                                      Center(
                                        child: Text('Plank Count',style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.red
                                        ),),
                                      ),
                                  ],
                                ),
                                Text('98',style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.black
                                ),
                                ),
                                SizedBox(
                                  width: 30,
                                  height: 10,
                                ),
                                Text('11-05-2022',style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black
                                ),
                                ),
                                Text('14:45',style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black
                                ),
                                ),

                              ],
                            ),
                          )
                        ],
                      ),
                      Column(
                          children: [
                            Center(
                              child: Container(
                                width: 35,
                                height: 35,
                                child: Icon(Icons.share,color: Colors.red,
                                size: 20,
                                ),
                              ),
                            ),
                            Center(
                              child: Container(
                                width: 35,
                                height: 35,
                                child: Icon(Icons.delete,color: Colors.red,
                                  size: 20,
                                ),
                              ),
                            ),
                          ],
                      )
                    ],
                  )
                ),
                Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(10.0),
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        border: Border.all(color: Colors.black26,width: 1)
                    ),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(5.0),
                              child: Image.asset(
                                "assets/image/pipe.jpeg",
                                height: 80.0,
                                width: 110.0,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Center(
                                        child: Container(
                                          width: 15,
                                          height: 15,
                                          child: Icon(Icons.circle_outlined, color: Colors.red,
                                            size: 15,),
                                        ),
                                      ),
                                      Center(
                                        child: Text('Pipe Count',style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.red
                                        ),),
                                      ),
                                    ],
                                  ),
                                  Text('152',style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.black
                                  ),
                                  ),
                                  SizedBox(
                                    width: 30,
                                    height: 10,
                                  ),
                                  Text('11-05-2022',style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black
                                  ),
                                  ),
                                  Text('14:45',style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black
                                  ),
                                  ),

                                ],
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Center(
                              child: Container(
                                width: 35,
                                height: 35,
                                child: Icon(Icons.share,color: Colors.red,
                                  size: 20,
                                ),
                              ),
                            ),
                            Center(
                              child: Container(
                                width: 35,
                                height: 35,
                                child: Icon(Icons.delete,color: Colors.red,
                                  size: 20,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                ),
                Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(10.0),
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        border: Border.all(color: Colors.black26,width: 1)
                    ),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(5.0),
                              child: Image.asset(
                                "assets/image/pipe.jpeg",
                                height: 80.0,
                                width: 110.0,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Center(
                                        child: Container(
                                          width: 15,
                                          height: 15,
                                          child: Icon(Icons.line_style, color: Colors.red,
                                            size: 15,),
                                        ),
                                      ),
                                      Center(
                                        child: Text('Plank Count',style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.red
                                        ),),
                                      ),
                                    ],
                                  ),
                                  Text('98',style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.black
                                  ),
                                  ),
                                  SizedBox(
                                    width: 30,
                                    height: 10,
                                  ),
                                  Text('11-05-2022',style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black
                                  ),
                                  ),
                                  Text('14:45',style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black
                                  ),
                                  ),

                                ],
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Center(
                              child: Container(
                                width: 35,
                                height: 35,
                                child: Icon(Icons.share,color: Colors.red,
                                  size: 20,
                                ),
                              ),
                            ),
                            Center(
                              child: Container(
                                width: 35,
                                height: 35,
                                child: Icon(Icons.delete,color: Colors.red,
                                  size: 20,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                ),
                Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(10.0),
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        border: Border.all(color: Colors.black26,width: 1)
                    ),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(5.0),
                              child: Image.asset(
                                "assets/image/pipe.jpeg",
                                height: 80.0,
                                width: 110.0,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Center(
                                        child: Container(
                                          width: 15,
                                          height: 15,
                                          child: Icon(Icons.circle_outlined, color: Colors.red,
                                            size: 15,),
                                        ),
                                      ),
                                      Center(
                                        child: Text('Pipe Count',style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.red
                                        ),),
                                      ),
                                    ],
                                  ),
                                  Text('152',style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.black
                                  ),
                                  ),
                                  SizedBox(
                                    width: 30,
                                    height: 10,
                                  ),
                                  Text('11-05-2022',style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black
                                  ),
                                  ),
                                  Text('14:45',style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black
                                  ),
                                  ),

                                ],
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Center(
                              child: Container(
                                width: 35,
                                height: 35,
                                child: Icon(Icons.share,color: Colors.red,
                                  size: 20,
                                ),
                              ),
                            ),
                            Center(
                              child: Container(
                                width: 35,
                                height: 35,
                                child: Icon(Icons.delete,color: Colors.red,
                                  size: 20,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
