///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:flutter/material.dart';
import 'flutterViz_video_player.dart';


class EVMEdu extends StatelessWidget {

@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: Color(0xffebebeb),
appBar: 
AppBar(
elevation:4,
centerTitle:false,
automaticallyImplyLeading: false,
backgroundColor:Color(0xffffffff),
shape:RoundedRectangleBorder(
borderRadius:BorderRadius.zero,
),
title:Text(
"EVM Education",
style:TextStyle(
fontWeight:FontWeight.w700,
fontStyle:FontStyle.normal,
fontSize:18,
color:Color(0xff000000),
),
),
leading: Icon(
Icons.arrow_back,
color:Color(0xff212435),
size:24,
),
actions:[
Icon(Icons.add_alert,color:Color(0xff212435),size:24),
Padding(
padding:EdgeInsets.fromLTRB(0, 0, 8, 0),
child:Icon(Icons.account_circle_outlined,color:Color(0xff212435),size:24),
),
],
),
body:Row(
mainAxisAlignment:MainAxisAlignment.start,
crossAxisAlignment:CrossAxisAlignment.center,
mainAxisSize:MainAxisSize.max,
children:[


Expanded(
flex: 1,
child: 
ListView(
scrollDirection: Axis.vertical,
padding:EdgeInsets.all(8),
shrinkWrap:true,
physics:ClampingScrollPhysics(), 
children:[


Card( 
margin:EdgeInsets.fromLTRB(0, 12, 0, 0),
color:Color(0xfff8f2e6),
shadowColor:Color(0xffd5f0f9),
elevation:0.5,
shape:RoundedRectangleBorder(
borderRadius:BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(12.0), bottomLeft: Radius.circular(12.0), bottomRight: Radius.circular(12.0)),
),
child:
Row(
mainAxisAlignment:MainAxisAlignment.start,
crossAxisAlignment:CrossAxisAlignment.center,
mainAxisSize:MainAxisSize.max,
children:[

Container(
margin:EdgeInsets.all(0),
padding:EdgeInsets.all(0),
width:150,
height:100,
decoration: BoxDecoration(
color:Color(0x1f000000),
shape:BoxShape.rectangle,
borderRadius:BorderRadius.only(topLeft: Radius.circular(12.0), bottomLeft: Radius.circular(12.0)),
border:Border.all(color:Color(0x4d9e9e9e),width:1),
),
child:
FlutterVizVideoPlayer(
url: "",
),
),
Container(
margin:EdgeInsets.all(0),
padding:EdgeInsets.all(0),
width:120,
height:100,
decoration: BoxDecoration(
color:Color(0x1f000000),
shape:BoxShape.rectangle,
borderRadius:BorderRadius.only(topRight: Radius.circular(12.0), bottomRight: Radius.circular(12.0)),
border:Border.all(color:Color(0x4d9e9e9e),width:1),
),
child:
Padding(
padding:EdgeInsets.fromLTRB(5, 0, 0, 0),
child:Align(
alignment:Alignment(0.0, 0.1),
child:Text(
"Know Your EVM",
textAlign: TextAlign.start,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w700,
fontStyle:FontStyle.normal,
fontSize:19,
color:Color(0xff191825),
),
),
),
),
),
],),
),

Card( 
margin:EdgeInsets.fromLTRB(0, 12, 0, 8),
color:Color(0xfff6f1e5),
shadowColor:Color(0xffd6f0f8),
elevation:0.5,
shape:RoundedRectangleBorder(
borderRadius:BorderRadius.circular(12.0),
),
child:
Row(
mainAxisAlignment:MainAxisAlignment.start,
crossAxisAlignment:CrossAxisAlignment.start,
mainAxisSize:MainAxisSize.max,
children:[

Container(
margin:EdgeInsets.all(0),
padding:EdgeInsets.all(0),
width:150,
height:100,
decoration: BoxDecoration(
color:Color(0x1f000000),
shape:BoxShape.rectangle,
borderRadius:BorderRadius.only(topLeft: Radius.circular(12.0), bottomLeft: Radius.circular(12.0)),
border:Border.all(color:Color(0x4d9e9e9e),width:1),
),
child:
FlutterVizVideoPlayer(
url: "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
),
),
Container(
margin:EdgeInsets.all(0),
padding:EdgeInsets.all(0),
width:120,
height:100,
decoration: BoxDecoration(
color:Color(0x1f000000),
shape:BoxShape.rectangle,
borderRadius:BorderRadius.only(topRight: Radius.circular(12.0), bottomRight: Radius.circular(12.0)),
border:Border.all(color:Color(0x4d9e9e9e),width:1),
),
child:
Padding(
padding:EdgeInsets.fromLTRB(5, 15, 0, 0),
child:Text(
"EVM: Bharat ki Misal",
textAlign: TextAlign.start,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w700,
fontStyle:FontStyle.normal,
fontSize:19,
color:Color(0xff191825),
),
),
),
),
],),
),

Card( 
margin:EdgeInsets.fromLTRB(0, 12, 0, 8),
color:Color(0xfff7f2e6),
shadowColor:Color(0xff000000),
elevation:1,
shape:RoundedRectangleBorder(
borderRadius:BorderRadius.circular(12.0),
),
child:
Row(
mainAxisAlignment:MainAxisAlignment.start,
crossAxisAlignment:CrossAxisAlignment.start,
mainAxisSize:MainAxisSize.max,
children:[

Container(
margin:EdgeInsets.all(0),
padding:EdgeInsets.all(0),
width:150,
height:100,
decoration: BoxDecoration(
color:Color(0x1f000000),
shape:BoxShape.rectangle,
borderRadius:BorderRadius.only(topLeft: Radius.circular(12.0), bottomLeft: Radius.circular(12.0)),
border:Border.all(color:Color(0x4d9e9e9e),width:1),
),
child:
FlutterVizVideoPlayer(
url: "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
),
),
Container(
margin:EdgeInsets.all(0),
padding:EdgeInsets.all(0),
width:120,
height:100,
decoration: BoxDecoration(
color:Color(0x1f000000),
shape:BoxShape.rectangle,
borderRadius:BorderRadius.only(topRight: Radius.circular(12.0), bottomRight: Radius.circular(12.0)),
border:Border.all(color:Color(0x4d9e9e9e),width:1),
),
child:
Padding(
padding:EdgeInsets.fromLTRB(5, 15, 0, 0),
child:Text(
"How to use EVM",
textAlign: TextAlign.center,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w700,
fontStyle:FontStyle.normal,
fontSize:19,
color:Color(0xff15151f),
),
),
),
),
],),
),

Card( 
margin:EdgeInsets.fromLTRB(0, 12, 0, 0),
color:Color(0xfff5f0e5),
shadowColor:Color(0xff000000),
elevation:1,
shape:RoundedRectangleBorder(
borderRadius:BorderRadius.circular(12.0),
),
child:
Row(
mainAxisAlignment:MainAxisAlignment.start,
crossAxisAlignment:CrossAxisAlignment.start,
mainAxisSize:MainAxisSize.max,
children:[

Container(
margin:EdgeInsets.all(0),
padding:EdgeInsets.all(0),
width:150,
height:100,
decoration: BoxDecoration(
color:Color(0x1f000000),
shape:BoxShape.rectangle,
borderRadius:BorderRadius.only(topLeft: Radius.circular(12.0), bottomLeft: Radius.circular(12.0)),
border:Border.all(color:Color(0x4d9e9e9e),width:1),
),
child:
FlutterVizVideoPlayer(
url: "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
),
),
Container(
margin:EdgeInsets.all(0),
padding:EdgeInsets.all(0),
width:120,
height:100,
decoration: BoxDecoration(
color:Color(0x1f000000),
shape:BoxShape.rectangle,
borderRadius:BorderRadius.only(topRight: Radius.circular(12.0), bottomRight: Radius.circular(12.0)),
border:Border.all(color:Color(0x4d9e9e9e),width:1),
),
child:
Padding(
padding:EdgeInsets.fromLTRB(5, 15, 0, 0),
child:Text(
"EVM History",
textAlign: TextAlign.start,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w700,
fontStyle:FontStyle.normal,
fontSize:19,
color:Color(0xff161620),
),
),
),
),
],),
),
],),),
],),
)
;}
}
