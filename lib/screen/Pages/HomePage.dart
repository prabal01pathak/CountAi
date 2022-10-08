import 'dart:convert';
import 'dart:ffi';
import 'dart:io';
import 'dart:ui';

import 'package:count_ai/screen/DetectorView/result.dart';
import 'package:count_ai/screen/Toast.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/border/gf_border.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:typed_data';

//import 'package:path_provider/path_provider.dart';
import 'package:mime/mime.dart';


import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';

import '../../ImageOutput.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  late PickedFile _imageFile;
  final ImagePicker _picker = new ImagePicker();

  final items = ['Plank Counter','Pipe Counter'];
  String? value;

  bool isUpload=true, isImage = false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10,top: 5, right: 10,bottom: 5),
              child: Container(
                height: 40,
                width: 130,
                child: Image(image: AssetImage("assets/image/facegenie.png"),),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20,top:20,right:20,bottom:10),
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                border: Border.all(color: Colors.black26,width: 1)
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  value: value,
                  iconSize: 36,
                  hint: Text('Choose Category'),
                  icon: Icon(Icons.arrow_drop_down,color: Colors.black26,),
                  isExpanded: true,
                  items: items.map(buildMenuItem).toList(),
                  onChanged: (value) => setState(() => this.value =value as String?),),
              ),
            ),
            new GestureDetector(
              onTap: () {
                takePhoto(ImageSource.gallery, context);
              },
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                width: double.infinity,
                child: GFBorder(
                  dashedLine: [4,6],
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                          Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(22.5),
                                color: Colors.red.shade100
                              ),
                              child: Icon(
                                Icons.upload_file_outlined,
                                color: Colors.red,
                              ),
                          ),
                        SizedBox(
                          width: 30,
                          height: 15,
                        ),

                          Text(
                            'Click to upload',
                            style: TextStyle(
                              shadows: [
                                Shadow(
                                  color: Colors.red,
                                  offset: Offset(0,-5)
                                )
                              ],
                              color: Colors.transparent,
                              fontSize: 14,
                              decoration: TextDecoration.underline,
                              decorationThickness: 1,
                              decorationColor: Colors.red
                            ),
                          ),

                        SizedBox(
                          width: 30,
                          height: 10,
                        ),
                        Text(
                          '.PNG or .JPG extension file (max. 3MB)',
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 14
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Row(children: <Widget>[
              Expanded(
                child: new Container(
                    margin: const EdgeInsets.only(left: 20.0, right: 0),
                    child: Divider(
                      color: Colors.black26,
                      height: 50,
                    )),
              ),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Text("OR",style: TextStyle(
                    color: Colors.white,
                ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: Colors.red
                ),
              ),
              

              Expanded(
                child: new Container(
                    margin: const EdgeInsets.only(left: 0, right: 20.0),
                    child: Divider(
                      color: Colors.black26,
                      height: 50,
                    )),
              ),
            ]),
            Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 0,
                ),
                Center(
                  child: Text("Take a new image",style: TextStyle(
                    color: Colors.black54,
                    fontSize: 14
                  ),),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 20,
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      takePhoto(ImageSource.camera, context);
                    },
                    child: Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        color: Colors.red
                      ),
                      child: Icon(Icons.camera_alt_outlined,color: Colors.white,),
                    ),
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );

  }

  takePhoto(ImageSource source, BuildContext context) async {
    final pickedFile = await _picker.getImage(source: source);

    if(pickedFile.path != null)
      {
        _imageFile = pickedFile;
        Navigator.of(context).push(
            MaterialPageRoute(builder: (_) => Result(image: pickedFile)));
      }

  }

  DropdownMenuItem<String> buildMenuItem(String item) =>
      DropdownMenuItem(value: item,
      child: Text(
        item,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),
      ),);
}


fileFormat(PickedFile imageFile) async {

}
