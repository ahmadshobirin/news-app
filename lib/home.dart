import 'package:expandable_card/expandable_card.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/models/PostModel.dart';

class ExampleApp extends StatefulWidget {
  @override
  _ExampleAppState createState() => _ExampleAppState();
}

class _ExampleAppState extends State<ExampleApp> {
  List<PostModel> dataPostAll = [];
  List<PostModel> posts = [];
  @override
  void initState() {
    getAllPost();
    super.initState();
  }

  getAllPost() {
    setState(() {
      dataPostAll = [
        new PostModel(
          title:
              "Ole Gunnar Solskjaer:\nManchester United \nBikin Saya Ubanan!",
          desc: "sa",
          id: "1",
          category: "news",
          imageUrl:
              "https://images.daznservices.com/di/library/GOAL/f7/f6/ole-gunnar-solskjaer-man-utd_z5qdprkl4su1vkzh8j2jt0b3.jpg?t=1228189446&amp;quality=60&amp;w=800",
        ),
        new PostModel(
          title:
              "Ole Gunnar Solskjaer:\nManchester United \nBikin Saya Ubanan!",
          desc: "sa",
          id: "1",
          category: "news",
          imageUrl:
              "https://akcdn.detik.net.id/community/media/visual/2020/12/19/dani-wisnu-1_169.jpeg?w=700&q=90",
        ),
        new PostModel(
          title:
              "Ole Gunnar Solskjaer:\nManchester United \nBikin Saya Ubanan!",
          desc: "sa",
          id: "1",
          category: "news",
          imageUrl:
              "https://images.daznservices.com/di/library/GOAL/f7/f6/ole-gunnar-solskjaer-man-utd_z5qdprkl4su1vkzh8j2jt0b3.jpg?t=1228189446&amp;quality=60&amp;w=800",
        ),
        new PostModel(
          title:
              "Ole Gunnar Solskjaer:\nManchester United \nBikin Saya Ubanan!",
          desc: "sa",
          id: "1",
          category: "news",
          imageUrl:
              "https://akcdn.detik.net.id/community/media/visual/2019/12/20/5cbf3995-2ee8-4ae1-bb62-f63333401e56_169.jpeg?w=700&q=90",
        ),
        new PostModel(
          title:
              "Ole Gunnar Solskjaer:\nManchester United \nBikin Saya Ubanan!",
          desc: "sa",
          id: "1",
          category: "news",
          imageUrl:
              "https://images.daznservices.com/di/library/GOAL/f7/f6/ole-gunnar-solskjaer-man-utd_z5qdprkl4su1vkzh8j2jt0b3.jpg?t=1228189446&amp;quality=60&amp;w=800",
        ),
        new PostModel(
          title:
              "Ole Gunnar Solskjaer:\nManchester United \nBikin Saya Ubanan!",
          desc: "sa",
          id: "1",
          category: "gallery",
          imageUrl:
              "https://images.daznservices.com/di/library/GOAL/f7/f6/ole-gunnar-solskjaer-man-utd_z5qdprkl4su1vkzh8j2jt0b3.jpg?t=1228189446&amp;quality=60&amp;w=800",
        ),
      ];
      posts = dataPostAll;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ExpandableCardPage(
          page: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: new NetworkImage(
                        "https://images.pexels.com/photos/5943/fashion-coffee-time-lifestyle.jpg?cs=srgb&dl=pexels-kaboompics-com-5943.jpg&fm=jpg"),
                    fit: BoxFit.cover)),
          ),
          expandableCard: ExpandableCard(
            padding: EdgeInsets.only(top: 0, left: 20, right: 20),
            minHeight: MediaQuery.of(context).size.height * 0.3,
            maxHeight: MediaQuery.of(context).size.height * 0.9,
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
                    Button(
                      onpressbtn: () => this.onpress("Home"),
                      tittle: "Home",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Button(
                      onpressbtn: () => this.onpress("News"),
                      tittle: "News",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Button(
                      onpressbtn: () => this.onpress("Sport"),
                      tittle: "Sport",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Button(
                        onpressbtn: () => this.onpress("Gallery"),
                        tittle: "Gallery"),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  padding: EdgeInsets.only(top: 8),
                  // physics: NeverScrollableScrollPhysics(),
                  itemCount: posts.length,
                  itemBuilder: (context, index) {
                    print(posts[index].toString());
                    return News(
                      posts[index].imageUrl,
                      posts[index].title,
                    );
                  },
                ),
              ),
              SizedBox(
                height: 60,
              ),
              // News(
              //     "https://images.daznservices.com/di/library/GOAL/15/e9/ole-gunnar-solskjaer-pep-guardiola-manchester-united-manchester-city_18xfcxstrqxok1pw02ga0vkzt4.jpg?t=1560721126&amp;quality=60&amp;w=800",
              //     "Diimbangi Manchester \nCity Tanpa Gol, \nOle Gunnar Solskjaer: \nIni Performa Derbi \nTerbaik Manchester United"),
              // News(
              //     "https://akcdn.detik.net.id/community/media/visual/2020/12/19/dani-wisnu-1_169.jpeg?w=700&q=90",
              //     "Pesilat Dunia\nDani Wisnu Tutup Usia"),
              // News(
              //     "https://akcdn.detik.net.id/community/media/visual/2019/06/25/1f76c9d2-3a35-4772-81d1-5bb2b93c5c70_169.png?w=700&q=90",
              //     "Bacaan Niat Sholat\n5 Waktu Lengkap\ndengan Artinya "),
              // News(
              //     "https://akcdn.detik.net.id/community/media/visual/2019/12/20/5cbf3995-2ee8-4ae1-bb62-f63333401e56_169.jpeg?w=700&q=90",
              //     "Bertato, Ini Tampang\nHabib Husein \nAlatas Tersangka \nKasus Pencabulan"),
            ],
          ),
        ),
      ),
    );
  }

  onpress(String s) {
    print(s.toLowerCase());
    switch (s.toLowerCase()) {
      case "home":
        setState(() {
          posts = dataPostAll;
        });
        break;
      case "news":
        setState(() {
          posts = dataPostAll
              .where((i) => i.category == s.toLowerCase() ? true : false)
              .toList();
        });
        break;
      case "sport":
        setState(() {
          posts = dataPostAll
              .where((i) => i.category == s.toLowerCase() ? true : false)
              .toList();
        });
        break;
      case "gallery":
        setState(() {
          posts = dataPostAll
              .where((i) => i.category == s.toLowerCase() ? true : false)
              .toList();
        });
        break;
    }
  }
}

class Button extends StatelessWidget {
  const Button({Key key, this.tittle, this.onpressbtn}) : super(key: key);
  final tittle;
  final Function onpressbtn;
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(30.0)),
      onPressed: onpressbtn,
      child: Text(
        tittle,
        style: TextStyle(
            fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
      ),
      color: Colors.deepPurple,
    );
  }
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
        Expanded(
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
