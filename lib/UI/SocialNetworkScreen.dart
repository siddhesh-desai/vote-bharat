///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:flutter/material.dart';


class SocialNetworkScreen extends StatelessWidget {

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
"Networks",
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
"Social Networks",
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
Row(
mainAxisAlignment:MainAxisAlignment.start,
crossAxisAlignment:CrossAxisAlignment.center,
mainAxisSize:MainAxisSize.max,
children:[

Container(
margin:EdgeInsets.fromLTRB(7, 0, 0, 0),
padding:EdgeInsets.all(0),
width:275,
height:100,
decoration: BoxDecoration(
color:Color(0x1efcbe05),
shape:BoxShape.rectangle,
borderRadius:BorderRadius.zero,
border:Border.all(color:Color(0x4d9e9e9e),width:1),
),
child:
Text(
"       Social Network Canvas Image Logo",
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
],),
Expanded(
flex: 1,
child: 
GridView( 
padding:EdgeInsets.fromLTRB(8, 25, 8, 0),
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
color:Color(0x4cff671f),
shape:BoxShape.rectangle,
borderRadius:BorderRadius.circular(12.0),
border:Border.all(color:Color(0x4d9e9e9e),width:1),
),
child:

Card( 
margin:EdgeInsets.all(0),
color:Color(0xa3fdfbfb),
shadowColor:Color(0xffff6720),
elevation:1,
shape:RoundedRectangleBorder(
borderRadius:BorderRadius.circular(12.0),
side: BorderSide(color:Color(0xffffffff), width:1),
),
child:
///***If you have exported images you must have to copy those images in assets/images directory.
Image(
image:AssetImage("assets/images/voteSelfi2a.jpg"),
height:100,
width:140,
fit:BoxFit.cover,
),
),
),
Container(
margin:EdgeInsets.all(0),
padding:EdgeInsets.all(0),
width:200,
height:100,
decoration: BoxDecoration(
color:Color(0x4b9d7373),
shape:BoxShape.rectangle,
borderRadius:BorderRadius.circular(12.0),
border:Border.all(color:Color(0x4d9e9e9e),width:1),
),
child:

Card( 
margin:EdgeInsets.all(0),
color:Color(0xfffcd740),
shadowColor:Color(0xffffffff),
elevation:2,
shape:RoundedRectangleBorder(
borderRadius:BorderRadius.circular(12.0),
side: BorderSide(color:Color(0xffffffff), width:1),
),
child:
///***If you have exported images you must have to copy those images in assets/images directory.
Image(
image:AssetImage("assets/images/voteSelfi1.jpg"),
height:100,
width:140,
fit:BoxFit.cover,
),
),
),
Container(
margin:EdgeInsets.zero,
padding:EdgeInsets.zero,
width:200,
height:100,
decoration: BoxDecoration(
color:Color(0x1f000000),
shape:BoxShape.rectangle,
borderRadius:BorderRadius.zero,
border:Border.all(color:Color(0x4d9e9e9e),width:1),
),
child:

Card( 
margin:EdgeInsets.all(0),
color:Color(0xffe0e0e0),
shadowColor:Color(0xff000000),
elevation:1,
shape:RoundedRectangleBorder(
borderRadius:BorderRadius.circular(4.0),
side: BorderSide(color:Color(0x4d9e9e9e), width:1),
),
child:
///***If you have exported images you must have to copy those images in assets/images directory.
Image(
image:AssetImage("assets/images/voteSelfi3.jpg"),
height:100,
width:140,
fit:BoxFit.cover,
),
),
),
Padding(
padding:EdgeInsets.all(30),
child:Align(
alignment:Alignment(0.0, -0.1),
child:Icon(
Icons.add,
color:Color(0xff212435),
size:50,
),
),
),
],),),
],),
)
;}
}
