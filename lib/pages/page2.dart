import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  // final ListMenu makanan;

  // DetailScreen({
  //   required this.makanan,
  // });

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int _jumlah = 0;

  void tambah() {
    setState(() {
      _jumlah++;
    });
  }

  void kurang() {
    setState(() {
      _jumlah--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: Container(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 4),
          height: double.infinity,
          width: double.infinity,
          child: Card(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  child: Card(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Menu :'),
                          Text(
                            'Kentang Goreng',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('Harga :'),
                          Text(
                            'Rp 10.000',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          // SizedBox(height: 20),
                          Text('Jumlah :'),
                          Row(
                            children: [
                              IconButton(
                                  onPressed: kurang, icon: Icon(Icons.remove)),
                              Text(
                                '$_jumlah',
                                style: TextStyle(fontSize: 15),
                              ),
                              IconButton(
                                  onPressed: tambah, icon: Icon(Icons.add)),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                child: Text('Check Out'),
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.lightGreen),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                // Image.asset('images/makanan1.jpeg'),
                // Row(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     IconButton(onPressed: kurang, icon: Icon(Icons.remove)),
                //     SizedBox(
                //       width: 80,
                //       height: 100,
                //     ),
                //     Text(
                //       '$_jumlah',
                //       style:
                //           TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                //     ),
                //     SizedBox(
                //       width: 80,
                //       height: 100,
                //     ),
                //     IconButton(onPressed: tambah, icon: Icon(Icons.add))
                //   ],
                // ),
                // ElevatedButton(
                //   onPressed: () {},
                //   child: Text('Total'),
                //   style: ElevatedButton.styleFrom(primary: Colors.lightGreen),
                // )
                // OutlineButton(
                //   child: Text('Nantinya tombol submit'),
                //   onPressed: () {
                //     Navigator.pop(context);
                //   },
                // ),
              ],
            ),
          )),
    );
  }
}
