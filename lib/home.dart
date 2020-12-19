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
          title: "Polusi Udara DKI Tinggi di Pagi Hari, Ini Tips Aman Berolahraga",
          desc: "sa",
          id: "1",
          category: "gallery",
          imageUrl: "https://akcdn.detik.net.id/community/media/visual/2020/07/19/begini-ramainya-kawasan-bkt-saat-minggu-pagi-7_169.jpeg?w=700&q=90",
        ),
        new PostModel(
          title:
              "Sederet Aturan Baru PSBB DKI Jelang Natal dan Tahun Baru",
          desc: "sa",
          id: "2",
          category: "news",
          imageUrl:
              "https://akcdn.detik.net.id/community/media/visual/2020/06/17/sterilisasi-monas-jelang-dibuka-kembali-di-masa-psbb-transisi-1_169.jpeg?w=700&q=90",
        ),
        new PostModel(
          title:
              "Ole Gunnar Solskjaer: Manchester United  Bikin Saya Ubanan!",
          desc: "sa",
          id: "3",
          category: "sport",
          imageUrl:
              "https://akcdn.detik.net.id/community/media/visual/2019/06/25/1f76c9d2-3a35-4772-81d1-5bb2b93c5c70_169.png?w=700&q=90",
        ),
        new PostModel(
          title:
              "Bacaan Niat Sholat 5 Waktu Lengkap dengan Artinya",
          desc: "sa",
          id: "4",
          category: "gallery",
          imageUrl:
              "https://akcdn.detik.net.id/community/media/visual/2019/12/20/5cbf3995-2ee8-4ae1-bb62-f63333401e56_169.jpeg?w=700&q=90",
        ),
        new PostModel(
          title:
              "Jeff Bezos, Orang Terkaya Dunia yang Diramal Akan Bangkrut",
          desc: "sa",
          id: "5",
          category: "news",
          imageUrl:
              "https://akcdn.detik.net.id/community/media/visual/2019/04/12/7a22ed4d-4141-496a-8d1c-84be50d9ee8b_169.jpeg?w=700&q=90",
        ),
        new PostModel(
          title:
              "Kena COVID-19, Presiden Prancis Ceritakan 3 Gejala Corona yang Dialaminya",
          desc: "sa",
          id: "6",
          category: "news",
          imageUrl:
              "https://akcdn.detik.net.id/community/media/visual/2020/12/18/emmanuel-macron-presiden-prancis-dinyatakan-positif-covid-19-dan-siapa-pemimpin-dunia-lainnya-yang-sudah-terpapar_169.jpeg?w=700&q=90",
        ),
        new PostModel(
          title:
          "Bintang AC Milan Zlatan Ibrahimovic: Singa Bisa Dijinakkan, Saya Tidak!",
          desc: "sa",
          id: "7",
          category: "sport",
          imageUrl:
            "https://akcdn.detik.net.id/community/media/visual/2020/12/18/emmanuel-macron-presiden-prancis-dinyatakan-positif-covid-19-dan-siapa-pemimpin-dunia-lainnya-yang-sudah-terpapar_169.jpeg?w=700&q=90"
        ),
        new PostModel(
            title: "Liga Primer Jose Mourinho Mengeluh: Jika Saya Bertingkah Seperti Jurgen Klopp, Pasti Langsung Diusir",
            desc: "sa",
            id: "8",
            category: "sport",
            imageUrl:
            "https://images.daznservices.com/di/library/GOAL/86/72/jurgen-klopp-jose-mourinho-2020_hhswhgnwncimzrhwftjqslm6.jpg?t=1915639670&amp;quality=60&amp;w=800"
        ),
        new PostModel(
            title: "Alvaro Morata Bikin Andrea Pirlo Marah Saat Juventus Ditahan Atalanta, Ada Apa?",
            desc: "sa",
            id: "9",
            category: "sport",
            imageUrl:
            "https://images.daznservices.com/di/library/GOAL/ab/c2/morata-juventus-atalanta-serie-a_pjvqibr2l06s1bkza1otn2ao0.jpg?t=1883519030&amp;quality=60&amp;w=800"
        ),
        new PostModel(
            title: "5 Fakta Alergi Olahraga, Beneran Ada dan Berbahaya",
            desc: "sa",
            id: "10",
            category: "sport",
            imageUrl:
            "https://akcdn.detik.net.id/community/media/visual/2019/02/20/fa187f0d-27ce-4a60-aa7d-0e9f76804622_169.jpeg?w=700&q=90"
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
