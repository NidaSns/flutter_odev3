import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tasarim_odev/renkler.dart';
import 'package:tasarim_odev/urun.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Alışveriş Sitesi",
          style: TextStyle(fontFamily: "Pacifico", fontSize: 22),
        ),
        backgroundColor: anaRenk,
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 300,
            child: Image.asset("resimler/resim3.jpg", fit: BoxFit.contain),
          ),
          Text(
            "İNDİRİM ZAMANI",
            style: TextStyle(
                fontSize: ekranGenisligi / 12,
                color: anaRenk,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Urun(
                    ekranGenisligi: ekranGenisligi / 3,
                    ekranYukseligi: ekranYuksekligi / 8,
                    imageUrl: "resimler/resim1.jpg",
                  ),
                  Urun(
                    ekranGenisligi: ekranGenisligi / 3,
                    ekranYukseligi: ekranYuksekligi / 8,
                    imageUrl: "resimler/resim2.jpg",
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Urun(
                    ekranGenisligi: ekranGenisligi / 3,
                    ekranYukseligi: ekranYuksekligi / 8,
                    imageUrl: "resimler/resim4.jpg",
                  ),
                  Urun(
                    ekranGenisligi: ekranGenisligi / 3,
                    ekranYukseligi: ekranYuksekligi / 8,
                    imageUrl: "resimler/resim5.jpg",
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
