///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:flutter/material.dart';


class ProfileImage extends StatelessWidget {

@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: Color(0xffffffff),
appBar: 
AppBar(
elevation:1,
centerTitle:false,
automaticallyImplyLeading: false,
backgroundColor:Color(0xffffffff),
shape:RoundedRectangleBorder(
borderRadius:BorderRadius.zero,
),
title:Text(
"Profile",
style:TextStyle(
fontWeight:FontWeight.w700,
fontStyle:FontStyle.normal,
fontSize:18,
color:Color(0xff000000),
),
),
leading: Icon(
Icons.menu,
color:Color(0xff212435),
size:24,
),
actions:[
Icon(Icons.add_alert,color:Color(0xff212435),size:24),
Padding(
padding:EdgeInsets.fromLTRB(8, 0, 16, 0),
child:Icon(Icons.account_circle_outlined,color:Color(0xff212435),size:24),
),
],
),
body:Padding(
padding:EdgeInsets.symmetric(vertical: 0,horizontal:16),
child:SingleChildScrollView(
child:
Column(
mainAxisAlignment:MainAxisAlignment.start,
crossAxisAlignment:CrossAxisAlignment.center,
mainAxisSize:MainAxisSize.max,
children: [
Padding(
padding:EdgeInsets.fromLTRB(0, 18, 0, 16),
child:Container(
height:120,
width:120,
clipBehavior: Clip.antiAlias,
decoration: BoxDecoration(
shape: BoxShape.circle,
),
child:Image.asset(
 "images/proImage.jpg",
fit:BoxFit.cover),
),
),
Text(
"Sanket Disale",
textAlign: TextAlign.start,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w900,
fontStyle:FontStyle.normal,
fontSize:23,
color:Color(0xff000000),
),
),
Padding(
padding:EdgeInsets.fromLTRB(0, 15, 0, 16),
child:Row(
mainAxisAlignment:MainAxisAlignment.start,
crossAxisAlignment:CrossAxisAlignment.start,
mainAxisSize:MainAxisSize.max,
children:[

Expanded(
flex: 1,
child: 
Column(
mainAxisAlignment:MainAxisAlignment.start,
crossAxisAlignment:CrossAxisAlignment.center,
mainAxisSize:MainAxisSize.max,
children: [
Text(
"40",
textAlign: TextAlign.start,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w700,
fontStyle:FontStyle.normal,
fontSize:16,
color:Color(0xff000000),
),
),
Padding(
padding:EdgeInsets.fromLTRB(0, 8, 0, 0),
child:Text(
"Refferals",
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
],),),
Container(
margin:EdgeInsets.all(0),
padding:EdgeInsets.all(0),
width:5,
height:40,
decoration: BoxDecoration(
color:Color(0xff3a57e8),
shape:BoxShape.rectangle,
borderRadius:BorderRadius.zero,
border:Border.all(color:Color(0x4d9e9e9e),width:1),
),
)

,
Expanded(
flex: 1,
child: 
Column(
mainAxisAlignment:MainAxisAlignment.start,
crossAxisAlignment:CrossAxisAlignment.center,
mainAxisSize:MainAxisSize.max,
children: [
Text(
"2",
textAlign: TextAlign.start,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w700,
fontStyle:FontStyle.normal,
fontSize:16,
color:Color(0xff000000),
),
),
Padding(
padding:EdgeInsets.fromLTRB(0, 8, 0, 0),
child:Text(
"Rewards",
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
],),),
],),),
Row(
mainAxisAlignment:MainAxisAlignment.start,
crossAxisAlignment:CrossAxisAlignment.center,
mainAxisSize:MainAxisSize.max,
children:[

Padding(
padding:EdgeInsets.fromLTRB(0, 12, 0, 0),
child:Text(
"       Voter ID : SZH8390254",
textAlign: TextAlign.start,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w800,
fontStyle:FontStyle.normal,
fontSize:18,
color:Color(0xff000000),
),
),
),
],),
Padding(
padding:EdgeInsets.fromLTRB(0, 14, 0, 0),
child:Text(
"Anawali",
textAlign: TextAlign.start,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w500,
fontStyle:FontStyle.normal,
fontSize:18,
color:Color(0xff000000),
),
),
),
Padding(
padding:EdgeInsets.fromLTRB(0, 8, 0, 0),
child:Text(
"Tal : Pandharpur Dist : Solapur",
textAlign: TextAlign.start,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w600,
fontStyle:FontStyle.normal,
fontSize:16,
color:Color(0xff000000),
),
),
),
Padding(
padding:EdgeInsets.fromLTRB(0, 18, 0, 0),
child:MaterialButton(
onPressed:(){},
color:Color(0xff14f02c),
elevation:10,
shape:RoundedRectangleBorder(
borderRadius:BorderRadius.circular(10.0),
side:BorderSide(color:Color(0xff0ff228),width:1),
),
padding:EdgeInsets.symmetric(vertical: 21,horizontal:75),
child:Text("My QR Code", style: TextStyle( fontSize:18,
fontWeight:FontWeight.w600,
fontStyle:FontStyle.normal,
),),
textColor:Color(0xff000000),
height:40,
minWidth:140,
),
),
],),),),
)
;}
}
