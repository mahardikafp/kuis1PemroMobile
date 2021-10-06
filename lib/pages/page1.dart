import 'package:flutter/material.dart';
import 'package:navigation/main.dart';
import 'package:navigation/pages/page2.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var ListMenu = [
    Menu(
        nama_menu: 'Kentang Goreng',
        total: 10,
        harga: 'Rp 10.000',
        gambar: 'images2/food2.jpg'),
    Menu(
        nama_menu: 'Burger',
        total: 10,
        harga: 'Rp 15.000',
        gambar: 'images2/food1.jpeg'),
    Menu(
        nama_menu: 'Mi Ayam',
        total: 10,
        harga: 'Rp 8.000',
        gambar: 'images2/food4.jpg'),
    Menu(
        nama_menu: 'Steak + Salad',
        total: 10,
        harga: 'Rp 30.000',
        gambar: 'images2/food5.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jual Makanan'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        color: Colors.lightGreen,
        child: ListView(children: [
          Container(
            height: 180,
            width: double.infinity,
            decoration: new BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images2/food.jpg'), fit: BoxFit.cover),
            ),
          ),
          // for (var i = 0; i < ListMenu.length; i++)
          Column(
            children: ListMenu.map((makanan) {
              return Card(
                color: Colors.lightGreen,
                child: Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: 120,
                      height: 120,
                      color: Colors.lightGreen,
                      child: Image.asset(makanan.gambar),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          makanan.nama_menu,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Jumlah : ${makanan.total}',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          makanan.harga,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Expanded(child: Container()),
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext ctx2) {
                                return DetailScreen();
                              },
                            ),
                          );
                        },
                        icon: Icon(Icons.add_box_rounded)),
                    SizedBox(
                      width: 5,
                    ),
                  ],
                ),
              );
            }).toList(),
          )

          // InkWell(
          //   child: Card(
          //     color: Colors.lightGreen,
          //     child: Row(
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         children: [
          //           Container(
          //             width: 170,
          //             height: 110,
          //             child: Image.asset(
          //               ListMenu[i].gambar,
          //               width: 200,
          //               height: 150,
          //             ),
          //           ),
          //           SizedBox(
          //             width: 15,
          //           ),
          //           Column(
          //               crossAxisAlignment: CrossAxisAlignment.start,
          //               children: [
          //                 Text(
          //                   ListMenu[i].nama_menu,
          //                   style: TextStyle(
          //                       fontSize: 15, fontWeight: FontWeight.bold),
          //                 ),
          //                 Text(
          //                   'Jumlah pesanan: ${ListMenu[i].total}',
          //                   style: TextStyle(
          //                       fontSize: 15, fontWeight: FontWeight.bold),
          //                 ),
          //                 Text(
          //                   ListMenu[i].harga,
          //                   style: TextStyle(
          //                       fontSize: 15, fontWeight: FontWeight.bold),
          //                 )
          //               ]),
          //           SizedBox(
          //             width: 5,
          //           ),
          //           Flexible(
          //             child: Column(
          //               children: [
          //                 FlatButton(
          //                   child: Icon(
          //                     Icons.add_box_rounded,
          //                     size: 40,
          //                   ),
          //                   onPressed: () {
          //                     Navigator.push(
          //                       context,
          //                       MaterialPageRoute(builder: (context) {
          //                         return DetailScreen();
          //                       }),
          //                     );
          //                   },
          //                 ),
          //               ],
          //             ),
          //           ),
          //         ]),
          //   ),
          // ),
        ]),
      ),
    );
  }
}
