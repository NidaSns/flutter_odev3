import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Urun extends StatelessWidget {
  final double ekranGenisligi;
  final double ekranYukseligi;
  final String imageUrl;

  const Urun(
      {required this.ekranGenisligi,
      required this.imageUrl,
      required this.ekranYukseligi,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
      ),
      child: Column(
        children: [
          SizedBox(
            width: ekranGenisligi,
            height: ekranYukseligi,
            child: Image.asset(
              imageUrl,
              fit: BoxFit.contain,
            ),
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.zoom_in),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.zoom_out),
              ),
            ],
          )
        ],
      ),
    );
  }
}
