import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'dart:io' as Io;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mime/mime.dart';

import 'package:count_ai/screen/Toast.dart';

import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';

import '../../ImageOutput.dart';

class Result extends StatefulWidget {

  const Result({Key? key, required this.image}) : super(key: key);

  final PickedFile image;

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {

  bool circular = true;

  ImageOutput imageOutput = ImageOutput();

  @override
  void initState(){
    super.initState();

    fetchData();
  }

  void fetchData() async{
    String url = 'https://planks-and-pipes-analyticskart-f4lotw6szq-el.a.run.app/pipe';

    Uri apiUri = Uri.parse('https://planks-and-pipes-analyticskart-f4lotw6szq-el.a.run.app/pipe');

    final mimeTypeData =
    lookupMimeType('${widget.image.path}', headerBytes: [0xFF, 0xD8]).split('/');

    // Intilize the multipart request
    final imageUploadRequest = http.MultipartRequest('POST', Uri.parse(url));

    // Attach the file in the request
    final file = await http.MultipartFile.fromPath(
        'imageFile', '${widget.image.path}',
        contentType: MediaType(mimeTypeData[0], mimeTypeData[1]));

    imageUploadRequest.files.add(file);

    try {
      final streamedResponse = await imageUploadRequest.send();
      final response = await http.Response.fromStream(streamedResponse);
      if (response.statusCode != 200) {
        return null;
      }

      final Map<String, dynamic> responseData = json.decode(response.body);
      //_resetState();

      setState(() {
        imageOutput = ImageOutput.fromJson(responseData);
      });

      //ShowToastComponent.showDialog(responseData.toString(), context);
      print(responseData);
      circular = false;

    } catch (e) {
      print(e);
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {

    final bytesN = Io.File('${widget.image.path}').readAsBytesSync();
    String base64Encode(List<int> bytes) => base64.encode(bytesN);

    Uint8List image;
    String countString;
    
    if(imageOutput.image!=null)
      {
        image = Base64Decoder().convert(imageOutput.image.toString());    
      }
    else
      {
        image = Base64Decoder().convert(base64Encode(bytesN));
      }
    //print(imageOutput.image.toString());
    
    if(imageOutput.count!=null)
      {
        countString = 'Total Count : '+imageOutput.count.toString();
      }
    else
      {
        countString = 'Please wait...';
      }
    return Scaffold(
        body: Column(
          children: <Widget>[
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
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Container(
                  color: Colors.white,
                  width: double.infinity,
                  height: 350.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(50), // Image radius
                      child: Image.memory(
                        image,
                        height: 350.0,
                        fit: BoxFit.fill,
                        width: double.infinity,
                      ),
                    ),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                      child: Text(countString,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w800
                        ),),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Colors.red
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      width: 33,
                      height: 33,
                      child: Icon(Icons.share,color: Colors.white,),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Colors.red
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        )
    );
  }
}

/*class Result extends StatelessWidget {

  const Result({Key? key, required this.image,}) : super(key: key);
  final PickedFile image;


  @override
  Widget build(BuildContext context) {

    ImageOutput imageOutput = ImageOutput();

    return StatefulWrapper(

      onInit: () {
        _getThingsOnStartup(image,context,imageOutput);
      },

      child: Scaffold(
          body: Column(
            children: <Widget>[
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
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Container(
                    color: Colors.white,
                    width: double.infinity,
                    height: 350.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: SizedBox.fromSize(
                        size: Size.fromRadius(50), // Image radius
                        child: Image.file(
                          File(image.path),
                          height: 350.0,
                          fit: BoxFit.fill,
                          width: double.infinity,
                        ),
                      ),
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                        child: Text(imageOutput.count.toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w800
                        ),),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Colors.red
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        width: 33,
                        height: 33,
                        child: Icon(Icons.share,color: Colors.white,),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Colors.red
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          )
      ),
    );
  }

  void _getThingsOnStartup(PickedFile image, BuildContext context, ImageOutput imageOutput) async {
    //print('Start');
    String url = 'https://planks-and-pipes-analyticskart-f4lotw6szq-el.a.run.app/pipe';

    Uri apiUri = Uri.parse('https://planks-and-pipes-analyticskart-f4lotw6szq-el.a.run.app/pipe');

    final mimeTypeData =
    lookupMimeType(image.path, headerBytes: [0xFF, 0xD8]).split('/');

    // Intilize the multipart request
    final imageUploadRequest = http.MultipartRequest('POST', Uri.parse(url));

    // Attach the file in the request
    final file = await http.MultipartFile.fromPath(
        'imageFile', image.path,
        contentType: MediaType(mimeTypeData[0], mimeTypeData[1]));

    imageUploadRequest.files.add(file);

    try {
      final streamedResponse = await imageUploadRequest.send();
      final response = await http.Response.fromStream(streamedResponse);
      if (response.statusCode != 200) {
        return null;
      }

      final Map<String, dynamic> responseData = json.decode(response.body);
      //_resetState();

      setState(() { 

      });
      imageOutput = ImageOutput.fromJson(responseData);
      //ShowToastComponent.showDialog(responseData.toString(), context);
      print(responseData);

      /*List<ImageOutput> parseUser(String responseBody){
        var list = json.decode(responseBody) as List<dynamic>;
        var imageOutput = list.map((e) => ImageOutput.fromJson(e)).toList();
        return imageOutput;
      }*/


      //print(imageOutput.count);
     //ImageOutput imageOutput;
      //imageOutput.count;

    } catch (e) {
      print(e);
      return null;
    }
  }

}


class StatefulWrapper extends StatefulWidget {
  final Function onInit;
  final Widget child;
  const StatefulWrapper({required this.onInit, required this.child});
  @override
  _StatefulWrapperState createState() => _StatefulWrapperState();
}
class _StatefulWrapperState extends State<StatefulWrapper> {
  @override
  void initState() {
    if(widget.onInit != null) {
      widget.onInit();
    }
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}*/
