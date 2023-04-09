///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:flutter/material.dart';


class VoterEducation extends StatelessWidget {

@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: Color(0xfff6f6f6),
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
"Education",
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
body:
Column(
mainAxisAlignment:MainAxisAlignment.start,
crossAxisAlignment:CrossAxisAlignment.center,
mainAxisSize:MainAxisSize.max,
children: [
Padding(
padding:EdgeInsets.fromLTRB(0, 0, 0, 16),
child:SingleChildScrollView(
child:
Column(
mainAxisAlignment:MainAxisAlignment.start,
crossAxisAlignment:CrossAxisAlignment.start,
mainAxisSize:MainAxisSize.max,
children: [
Padding(
padding:EdgeInsets.fromLTRB(0, 11, 0, 0),
child:Align(
alignment:Alignment(-0.8, 0.0),
child:Text(
"Voter Education",
textAlign: TextAlign.start,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w900,
fontStyle:FontStyle.normal,
fontSize:22,
color:Color(0xff000000),
),
),
),
),
],),),),
Expanded(
flex: 1,
child: 
GridView( 
padding:EdgeInsets.symmetric(vertical: 0,horizontal:8),
shrinkWrap:false,
scrollDirection:Axis.vertical,
physics:ScrollPhysics(), 
gridDelegate: SliverGridDelegateWithFixedCrossAxisCount( 
crossAxisCount:2,
crossAxisSpacing:8,
mainAxisSpacing:8,
childAspectRatio:1.2,
),
children:[
Container(
margin:EdgeInsets.all(0),
padding:EdgeInsets.all(0),
width:200,
height:100,
decoration: BoxDecoration(
color:Color(0xfffdd83d),
shape:BoxShape.rectangle,
borderRadius:BorderRadius.circular(12.0),
border:Border.all(color:Color(0x4d9e9e9e),width:1),
),
child:

Card( 
margin:EdgeInsets.all(4),
color:Color(0xfffcd73f),
shadowColor:Color(0xffff6720),
elevation:1,
shape:RoundedRectangleBorder(
borderRadius:BorderRadius.circular(12.0),
side: BorderSide(color:Color(0xffffffff), width:1),
),
child:
Align(
alignment:Alignment.center,
child:Text(
"Democracy",
textAlign: TextAlign.start,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w800,
fontStyle:FontStyle.normal,
fontSize:19,
color:Color(0xff191825),
),
),
),
),
),
Container(
margin:EdgeInsets.all(0),
padding:EdgeInsets.all(0),
width:200,
height:100,
decoration: BoxDecoration(
color:Color(0xffffda3d),
shape:BoxShape.rectangle,
borderRadius:BorderRadius.circular(12.0),
border:Border.all(color:Color(0x4d9e9e9e),width:1),
),
child:

Card( 
margin:EdgeInsets.all(4),
color:Color(0xfffcd740),
shadowColor:Color(0xffffffff),
elevation:0,
shape:RoundedRectangleBorder(
borderRadius:BorderRadius.circular(12.0),
side: BorderSide(color:Color(0xffffffff), width:1),
),
child:
Padding(
padding:EdgeInsets.fromLTRB(15, 0, 0, 0),
child:Align(
alignment:Alignment(-1.0, 0.0),
child:Text(
"Awareness",
textAlign: TextAlign.center,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w800,
fontStyle:FontStyle.normal,
fontSize:19,
color:Color(0xff191825),
),
),
),
),
),
),
Container(
margin:EdgeInsets.all(0),
padding:EdgeInsets.all(0),
width:200,
height:100,
decoration: BoxDecoration(
color:Color(0xfffdd83b),
shape:BoxShape.rectangle,
borderRadius:BorderRadius.circular(12.0),
border:Border.all(color:Color(0xff9c9c9c),width:1),
),
child:

Card( 
margin:EdgeInsets.all(4),
color:Color(0xfffed93c),
shadowColor:Color(0xff000000),
elevation:1,
shape:RoundedRectangleBorder(
borderRadius:BorderRadius.circular(12.0),
side: BorderSide(color:Color(0xffffffff), width:1),
),
child:
Padding(
padding:EdgeInsets.fromLTRB(16, 0, 0, 0),
child:Align(
alignment:Alignment.center,
child:Text(
"     EVM    Machine",
textAlign: TextAlign.start,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w800,
fontStyle:FontStyle.normal,
fontSize:19,
color:Color(0xff161520),
),
),
),
),
),
),
Container(
margin:EdgeInsets.all(0),
padding:EdgeInsets.all(0),
width:200,
height:100,
decoration: BoxDecoration(
color:Color(0xfffbd63a),
shape:BoxShape.rectangle,
borderRadius:BorderRadius.circular(12.0),
border:Border.all(color:Color(0xfffed83e),width:1),
),
child:

Card( 
margin:EdgeInsets.all(4),
color:Color(0xfffdd93d),
shadowColor:Color(0xff000000),
elevation:1,
shape:RoundedRectangleBorder(
borderRadius:BorderRadius.circular(12.0),
side: BorderSide(color:Color(0xfffefefe), width:1),
),
child:
Padding(
padding:EdgeInsets.fromLTRB(13, 0, 0, 0),
child:Align(
alignment:Alignment.center,
child:Text(
"   Referral And Reward",
textAlign: TextAlign.center,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w800,
fontStyle:FontStyle.normal,
fontSize:18,
color:Color(0xff171622),
),
),
),
),
),
),
],),),
],),
)
;}
}
