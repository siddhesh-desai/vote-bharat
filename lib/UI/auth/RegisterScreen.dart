///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:flutter/material.dart';


class RegisterScreen extends StatelessWidget {

@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: Color(0xffffffff),
appBar: 
AppBar(
elevation:4,
centerTitle:false,
automaticallyImplyLeading: false,
backgroundColor:Color(0xfffe9832),
shape:RoundedRectangleBorder(
borderRadius:BorderRadius.zero,
),
leading: Icon(
Icons.arrow_back,
color:Color(0xfffd9934),
size:0,
),
),
body:Align(
alignment:Alignment(0.0, -0.6),
child:Padding(
padding:EdgeInsets.fromLTRB(16, 0, 16, 16),
child:SingleChildScrollView(
child:
Column(
mainAxisAlignment:MainAxisAlignment.center,
crossAxisAlignment:CrossAxisAlignment.center,
mainAxisSize:MainAxisSize.max,
children: [
///***If you have exported images you must have to copy those images in assets/images directory.
Image(
image:AssetImage("assets/images/WhatsApp-Image-2023-04-08-at-12.30.53-PM.jpeg"),
height:100,
fit:BoxFit.cover,
),
Padding(
padding:EdgeInsets.fromLTRB(0, 12, 0, 0),
child:Align(
alignment:Alignment.centerLeft,
child:Text(
"Sign Up",
textAlign: TextAlign.start,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w700,
fontStyle:FontStyle.normal,
fontSize:24,
color:Color(0xff000000),
),
),
),
),
Padding(
padding:EdgeInsets.fromLTRB(0, 16, 0, 0),
child:TextField(
controller:TextEditingController(),
obscureText:false,
textAlign:TextAlign.start,
maxLines:1,
style:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:16,
color:Color(0xff000000),
),
decoration:InputDecoration(
disabledBorder:OutlineInputBorder(
borderRadius:BorderRadius.circular(4.0),
borderSide:BorderSide(
color:Color(0xff9e9e9e),
width:1
),
),
focusedBorder:OutlineInputBorder(
borderRadius:BorderRadius.circular(4.0),
borderSide:BorderSide(
color:Color(0xff9e9e9e),
width:1
),
),
enabledBorder:OutlineInputBorder(
borderRadius:BorderRadius.circular(4.0),
borderSide:BorderSide(
color:Color(0xff9e9e9e),
width:1
),
),
labelText:"Name",
labelStyle:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff030303),
),
filled:true,
fillColor:Color(0xfff3f3f3),
isDense:false,
contentPadding:EdgeInsets.symmetric(vertical: 8,horizontal:12),
),
),
),
Padding(
padding:EdgeInsets.fromLTRB(0, 16, 0, 0),
child:TextField(
controller:TextEditingController(text:"abc@gmail.com"),
obscureText:false,
textAlign:TextAlign.start,
maxLines:1,
style:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff000000),
),
decoration:InputDecoration(
disabledBorder:OutlineInputBorder(
borderRadius:BorderRadius.circular(4.0),
borderSide:BorderSide(
color:Color(0xff9e9e9e),
width:1
),
),
focusedBorder:OutlineInputBorder(
borderRadius:BorderRadius.circular(4.0),
borderSide:BorderSide(
color:Color(0xff9e9e9e),
width:1
),
),
enabledBorder:OutlineInputBorder(
borderRadius:BorderRadius.circular(4.0),
borderSide:BorderSide(
color:Color(0xff9e9e9e),
width:1
),
),
labelText:"Email",
labelStyle:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff000000),
),
filled:true,
fillColor:Color(0xffefefef),
isDense:false,
contentPadding:EdgeInsets.symmetric(vertical: 8,horizontal:12),
),
),
),
Padding(
padding:EdgeInsets.fromLTRB(0, 16, 0, 0),
child:TextField(
controller:TextEditingController(text:"12345678"),
obscureText:true,
textAlign:TextAlign.start,
maxLines:1,
style:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff000000),
),
decoration:InputDecoration(
disabledBorder:OutlineInputBorder(
borderRadius:BorderRadius.circular(4.0),
borderSide:BorderSide(
color:Color(0xff9e9e9e),
width:1
),
),
focusedBorder:OutlineInputBorder(
borderRadius:BorderRadius.circular(4.0),
borderSide:BorderSide(
color:Color(0xff9e9e9e),
width:1
),
),
enabledBorder:OutlineInputBorder(
borderRadius:BorderRadius.circular(4.0),
borderSide:BorderSide(
color:Color(0xff9e9e9e),
width:1
),
),
labelText:"Password",
labelStyle:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff000000),
),
filled:true,
fillColor:Color(0xffededed),
isDense:false,
contentPadding:EdgeInsets.symmetric(vertical: 8,horizontal:12),
),
),
),
Padding(
padding:EdgeInsets.fromLTRB(0, 16, 0, 20),
child:TextField(
controller:TextEditingController(text:"12345678"),
obscureText:true,
textAlign:TextAlign.start,
maxLines:1,
style:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff000000),
),
decoration:InputDecoration(
disabledBorder:OutlineInputBorder(
borderRadius:BorderRadius.circular(4.0),
borderSide:BorderSide(
color:Color(0xff9e9e9e),
width:1
),
),
focusedBorder:OutlineInputBorder(
borderRadius:BorderRadius.circular(4.0),
borderSide:BorderSide(
color:Color(0xff9e9e9e),
width:1
),
),
enabledBorder:OutlineInputBorder(
borderRadius:BorderRadius.circular(4.0),
borderSide:BorderSide(
color:Color(0xff9e9e9e),
width:1
),
),
labelText:"Confirm Password",
labelStyle:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:16,
color:Color(0xff000000),
),
filled:true,
fillColor:Color(0xffebebeb),
isDense:false,
contentPadding:EdgeInsets.symmetric(vertical: 8,horizontal:12),
),
),
),
Row(
mainAxisAlignment:MainAxisAlignment.center,
crossAxisAlignment:CrossAxisAlignment.center,
mainAxisSize:MainAxisSize.max,
children:[


SizedBox(
width:16,
),
],),
MaterialButton(
onPressed:(){},
color:Color(0xff128807),
elevation:10,
shape:RoundedRectangleBorder(
borderRadius:BorderRadius.circular(10.0),
side:BorderSide(color:Color(0xff128607),width:1),
),
padding:EdgeInsets.symmetric(vertical: 22,horizontal:100),
child:Text("Sign Up", style: TextStyle( fontSize:18,
fontWeight:FontWeight.w600,
fontStyle:FontStyle.normal,
),),
textColor:Color(0xffffffff),
height:40,
minWidth:140,
),
],),),),),
)
;}
}
