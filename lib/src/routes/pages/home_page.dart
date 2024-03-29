// import 'package:flutter/material.dart';

// class HomePage extends StatefulWidget {
//   HomePage({Key? key}) : super(key: key);

//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: _appBar(),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             _header(),
//             Container(
//               margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
//               height: 230.0,
//               child: _listRecommended(),
//             ),
//             Container(
//               alignment: Alignment.topLeft,
//               margin: EdgeInsets.only(left: 30),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'New Pets',
//                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//                   ),
//                   Padding(padding: EdgeInsets.only(top: 10)),
//                   Text(
//                     'Find you best friend and give them a new home!',
//                     style: TextStyle(fontSize: 16),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
//               height: 500.0,
//               child: _listNew(),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   AppBar _appBar() {
//     return AppBar(
//       backgroundColor: Color(0xFFF9F9F9),
//       elevation: 0.0,
//       leading: Container(
//         padding: EdgeInsets.only(left: 20),
//         child: IconButton(
//           icon: Icon(
//             Icons.widgets_outlined,
//             color: Colors.black87,
//             size: 25,
//           ),
//           onPressed: () {},
//         ),
//       ),
//       actions: [
//         CircleAvatar(
//           backgroundColor: Colors.black87,
//           maxRadius: 12,
//           child: IconButton(
//             padding: EdgeInsets.only(right: 0),
//             icon: Icon(
//               Icons.pets,
//               color: Colors.white,
//               size: 16,
//             ),
//             onPressed: () {},
//           ),
//         ),
//         SizedBox(
//           width: 20,
//         )
//       ],
//     );
//   }

//   Container _header() {
//     return Container(
//       //color: Colors.red,
//       padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             'Adopt',
//             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//           ),
//           SizedBox(height: 10),
//           Text(
//             'Your favorite animal',
//             style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
//           ),
//           SizedBox(height: 20),
//           _searchInput(),
//           SizedBox(height: 20),
//           Text(
//             'Recommended',
//             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//           ),
//           Container()
//         ],
//       ),
//     );
//   }

//   Card _searchInput() {
//     return Card(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(100),
//       ),
//       child: Container(
//         padding: EdgeInsets.symmetric(horizontal: 20),
//         child: TextField(
//           cursorColor: Colors.black54,
//           decoration: InputDecoration(
//               icon: Icon(Icons.search, color: Colors.black),
//               border: InputBorder.none,
//               hintText: 'Search ...'),
//         ),
//       ),
//     );
//   }

//   ListView _listRecommended() {
//     return ListView(
//       scrollDirection: Axis.horizontal,
//       children: _lista(),
//     );
//   }

//   List<int> edades = [2, 4, 3, 6, 3, 5, 2];
//   List<String> nombresImg = ['buster', 'cody', 'larry', 'lixy'];
//   String capitalize(String s) => s[0].toUpperCase() + s.substring(1);

//   List<Widget> _lista() {
//     final List<Widget> cards = [];
//     int cont = 0;

//     for (var item in nombresImg) {
//       cards.add(_itemList(item, capitalize(item), edades[cont]));
//       cont++;
//     }

//     return cards;
//   }

//   Widget _itemList(img, nombre, years) {
//     return Stack(
//       children: [
//         Card(
//           color: Colors.white,
//           margin: EdgeInsets.fromLTRB(10, 40, 10, 6),
//           shape:
//               RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//           elevation: 4,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(height: 120, width: 140),
//               Container(
//                 margin: EdgeInsets.only(left: 12),
//                 child: Text(
//                   '$nombre',
//                   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.only(left: 12),
//                 child: Text(
//                   '$years Years old',
//                   style: TextStyle(
//                       fontWeight: FontWeight.w600,
//                       fontSize: 16,
//                       color: Colors.black54),
//                 ),
//               ),
//               Row(
//                 children: [
//                   Container(
//                     height: 22,
//                     width: 40,
//                     child: IconButton(
//                         padding: EdgeInsets.all(0),
//                         onPressed: () {},
//                         icon: Icon(Icons.call, size: 20),
//                         color: Colors.black54),
//                   ),
//                   Container(
//                     height: 22,
//                     width: 40,
//                     child: IconButton(
//                         padding: EdgeInsets.all(0),
//                         onPressed: () {},
//                         icon: Icon(Icons.email, size: 20),
//                         color: Colors.black54),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//         Image(
//           height: 150,
//           width: 160,
//           image: AssetImage('assets/dog1.jpg'),
//         ),
//       ],
//     );
//   }

//   Widget _listNew() {
//     return ListView(
//       children: _lista2(),
//     );
//   }

//   List<Widget> _lista2() {
//     final List<Widget> cards = [];
//     int cont = 0;

//     for (var item in nombresImg) {
//       cards.add(_itemListNew(item, capitalize(item), edades[cont]));
//       cont++;
//     }

//     return cards;
//   }

//   Widget _itemListNew(img, nombre, years) {
//     return Stack(
//       children: [
//         _cards2(nombre, years),
//         Row(
//           children: [
//             Expanded(child: SizedBox()),
//             Image(
//               height: 180,
//               image: AssetImage('assets/images.jpeg'),
//             ),
//             SizedBox(
//               width: 30,
//             ),
//           ],
//         ),
//       ],
//     );
//   }

//   Card _cards2(nombre, years) {
//     return Card(
//       color: Colors.white,
//       margin: EdgeInsets.fromLTRB(10, 30, 10, 0),
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//       elevation: 4,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           SizedBox(height: 40),
//           Container(
//             margin: EdgeInsets.only(left: 30),
//             child: Text(
//               '$nombre',
//               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
//             ),
//           ),
//           Container(
//             margin: EdgeInsets.only(left: 30),
//             child: Text(
//               '$years Years old',
//               style: TextStyle(
//                   fontWeight: FontWeight.w600,
//                   fontSize: 16,
//                   color: Colors.black54),
//             ),
//           ),
//           Row(
//             children: [
//               Container(
//                 margin: EdgeInsets.only(left: 20),
//                 height: 22,
//                 width: 40,
//                 child: IconButton(
//                     padding: EdgeInsets.all(0),
//                     onPressed: () {},
//                     icon: Icon(Icons.call, size: 20),
//                     color: Colors.black54),
//               ),
//               Container(
//                 height: 22,
//                 width: 40,
//                 child: IconButton(
//                     padding: EdgeInsets.all(0),
//                     onPressed: () {},
//                     icon: Icon(Icons.email, size: 20),
//                     color: Colors.black54),
//               ),
//             ],
//           ),
//           SizedBox(height: 40),
//         ],
//       ),
//     );
//   }
// //
// }
