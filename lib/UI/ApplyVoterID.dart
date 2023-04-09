///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:flutter/material.dart';


class ApplyVoterID extends StatelessWidget {

@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: Color(0xffffffff),
appBar: 
AppBar(
elevation:2,
centerTitle:false,
automaticallyImplyLeading: false,
backgroundColor:Color(0xffffffff),
shape:RoundedRectangleBorder(
borderRadius:BorderRadius.zero,
),
title:Text(
"Application",
style:TextStyle(
fontWeight:FontWeight.w700,
fontStyle:FontStyle.normal,
fontSize:17,
color:Color(0xff000000),
),
),
leading: Icon(
Icons.menu,
color:Color(0xff090908),
size:24,
),
actions:[
Icon(Icons.add_alert,color:Color(0xff212435),size:24),
Padding(
padding:EdgeInsets.fromLTRB(8, 0, 16, 0),
child:Icon(Icons.account_circle,color:Color(0xff212435),size:24),
),
],
),
body:Align(
alignment:Alignment(0.0, -0.6),
child:Padding(
padding:EdgeInsets.fromLTRB(16, 0, 16, 16),
child:
Column(
mainAxisAlignment:MainAxisAlignment.center,
crossAxisAlignment:CrossAxisAlignment.center,
mainAxisSize:MainAxisSize.max,
children: [
Padding(
padding:EdgeInsets.fromLTRB(0, 11, 0, 0),
child:///***If you have exported images you must have to copy those images in assets/images directory.
Image(
image:AssetImage("assets/images/Apply.png"),
height:MediaQuery.of(context).size.height * 0.2,
fit:BoxFit.cover,
),
),
Padding(
padding:EdgeInsets.fromLTRB(0, 30, 0, 0),
child:Align(
alignment:Alignment.center,
child:TextField(
controller:TextEditingController(),
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
color:Color(0xff000000),
width:1
),
),
focusedBorder:OutlineInputBorder(
borderRadius:BorderRadius.circular(4.0),
borderSide:BorderSide(
color:Color(0xff000000),
width:1
),
),
enabledBorder:OutlineInputBorder(
borderRadius:BorderRadius.circular(4.0),
borderSide:BorderSide(
color:Color(0xff000000),
width:1
),
),
labelText:"Upload Passport Size Photo",
labelStyle:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff000000),
),
filled:true,
fillColor:Color(0x1ffcbe05),
isDense:false,
contentPadding:EdgeInsets.symmetric(vertical: 8,horizontal:12),
),
),
),
),
Padding(
padding:EdgeInsets.fromLTRB(0, 15, 0, 0),
child:Align(
alignment:Alignment.center,
child:TextField(
controller:TextEditingController(),
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
color:Color(0xff000000),
width:1
),
),
focusedBorder:OutlineInputBorder(
borderRadius:BorderRadius.circular(4.0),
borderSide:BorderSide(
color:Color(0xff000000),
width:1
),
),
enabledBorder:OutlineInputBorder(
borderRadius:BorderRadius.circular(4.0),
borderSide:BorderSide(
color:Color(0xff000000),
width:1
),
),
labelText:"Upload Address Proof",
labelStyle:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff000000),
),
hintText:"Enter Text",
hintStyle:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff000000),
),
filled:true,
fillColor:Color(0x1ef9bc06),
isDense:false,
contentPadding:EdgeInsets.symmetric(vertical: 8,horizontal:12),
),
),
),
),
Align(
alignment:Alignment.centerRight,
child:Text(
"Don't know Address Proofs ?",
textAlign: TextAlign.start,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff000000),
),
),
),
Padding(
padding:EdgeInsets.fromLTRB(0, 15, 0, 0),
child:TextField(
controller:TextEditingController(),
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
color:Color(0xff000000),
width:1
),
),
focusedBorder:OutlineInputBorder(
borderRadius:BorderRadius.circular(4.0),
borderSide:BorderSide(
color:Color(0xff000000),
width:1
),
),
enabledBorder:OutlineInputBorder(
borderRadius:BorderRadius.circular(4.0),
borderSide:BorderSide(
color:Color(0xff000000),
width:1
),
),
labelText:"Upload Copy of Age Proof",
labelStyle:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff000000),
),
hintText:"Enter Text",
hintStyle:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff000000),
),
filled:true,
fillColor:Color(0x1ef9bc06),
isDense:false,
contentPadding:EdgeInsets.symmetric(vertical: 8,horizontal:12),
),
),
),
Align(
alignment:Alignment(0.9, 0.0),
child:Text(
"Don't know the Age Proof?",
textAlign: TextAlign.start,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff000000),
),
),
),
Padding(
padding:EdgeInsets.fromLTRB(0, 15, 0, 0),
child:TextField(
controller:TextEditingController(),
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
color:Color(0xff000000),
width:1
),
),
focusedBorder:OutlineInputBorder(
borderRadius:BorderRadius.circular(4.0),
borderSide:BorderSide(
color:Color(0xff000000),
width:1
),
),
enabledBorder:OutlineInputBorder(
borderRadius:BorderRadius.circular(4.0),
borderSide:BorderSide(
color:Color(0xff000000),
width:1
),
),
labelText:"Upload Identity Proof",
labelStyle:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff000000),
),
hintText:"Enter Text",
hintStyle:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff000000),
),
filled:true,
fillColor:Color(0x1ef9bc06),
isDense:false,
contentPadding:EdgeInsets.symmetric(vertical: 8,horizontal:12),
),
),
),
Align(
alignment:Alignment.centerRight,
child:Text(
"Don't know Identity Proofs?",
textAlign: TextAlign.start,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff000000),
),
),
),
Padding(
padding:EdgeInsets.fromLTRB(0, 15, 0, 0),
child:MaterialButton(
onPressed:(){},
color:Color(0xff128807),
elevation:10,
shape:RoundedRectangleBorder(
borderRadius:BorderRadius.circular(10.0),
side:BorderSide(color:Color(0xff7cfd34),width:0),
),
padding:EdgeInsets.symmetric(vertical: 22,horizontal:106),
child:Text("Apply", style: TextStyle( fontSize:18,
fontWeight:FontWeight.w600,
fontStyle:FontStyle.normal,
),),
textColor:Color(0xfffdfdfd),
height:40,
minWidth:140,
),
),
],),),),
)
;}
}
