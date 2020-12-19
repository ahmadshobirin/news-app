import 'package:expandable_card/expandable_card.dart';
import 'package:flutter/material.dart';

class ExampleApp extends StatefulWidget {
  @override
  _ExampleAppState createState() => _ExampleAppState();
}

class _ExampleAppState extends State<ExampleApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ExpandableCardPage(
          page: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: new NetworkImage(
                        "https://images.pexels.com/photos/5943/fashion-coffee-time-lifestyle.jpg?cs=srgb&dl=pexels-kaboompics-com-5943.jpg&fm=jpg"),
                    fit: BoxFit.cover)),
          ),
          expandableCard: ExpandableCard(
            padding: EdgeInsets.only(top: 0, left: 20, right: 20),
            minHeight: 225,
            maxHeight: 700,
            backgroundColor: Colors.white,
            hasRoundedCorners: true,
            hasHandle: false,
            hasShadow: true,
            children: <Widget>[
              Center(
                child: Text(
                  "______",
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Button("Home"),
                    SizedBox(
                      width: 10,
                    ),
                    Button("News"),
                    SizedBox(
                      width: 10,
                    ),
                    Button("Sport"),
                    SizedBox(
                      width: 10,
                    ),
                    Button("Gallery"),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              News(
                  "https://images.daznservices.com/di/library/GOAL/f7/f6/ole-gunnar-solskjaer-man-utd_z5qdprkl4su1vkzh8j2jt0b3.jpg?t=1228189446&amp;quality=60&amp;w=800",
                  "Ole Gunnar Solskjaer:\nManchester United \nBikin Saya Ubanan!"),
              News("https://images.daznservices.com/di/library/GOAL/15/e9/ole-gunnar-solskjaer-pep-guardiola-manchester-united-manchester-city_18xfcxstrqxok1pw02ga0vkzt4.jpg?t=1560721126&amp;quality=60&amp;w=800",
                  "Diimbangi Manchester \nCity Tanpa Gol, \nOle Gunnar Solskjaer: \nIni Performa Derbi \nTerbaik Manchester United"),
              News(
                  "https://akcdn.detik.net.id/community/media/visual/2020/12/19/dani-wisnu-1_169.jpeg?w=700&q=90",
                  "Pesilat Dunia\nDani Wisnu Tutup Usia"),
              News(
                  "https://akcdn.detik.net.id/community/media/visual/2019/06/25/1f76c9d2-3a35-4772-81d1-5bb2b93c5c70_169.png?w=700&q=90",
                  "Bacaan Niat Sholat\n5 Waktu Lengkap\ndengan Artinya "),
              News(
                  "https://akcdn.detik.net.id/community/media/visual/2019/12/20/5cbf3995-2ee8-4ae1-bb62-f63333401e56_169.jpeg?w=700&q=90",
                  "Bertato, Ini Tampang\nHabib Husein \nAlatas Tersangka \nKasus Pencabulan"),
            ],
          ),
        ),
      ),
    );
  }
}

Widget Button(var tittle) {
  return RaisedButton(
    shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(30.0)),
    onPressed: () {},
    child: Text(
      tittle,
      style: TextStyle(
          fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
    ),
    color: Colors.deepPurple,
  );
}

Widget News(var link, var tittle) {
  return Card(
    elevation: 2.0,
    child: Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: Container(
              height: 80,
              width: 120,
              child: Image.network(
                link,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Container(
          child: Text(
            tittle,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
  );
}
