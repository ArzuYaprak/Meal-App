import 'package:flutter/material.dart';
import 'package:yemek_uygulamasi/Yemekler.dart';

class DetaySayfasi extends StatefulWidget {

  Yemekler yemek;

  DetaySayfasi({required this.yemek});

  @override
  State<DetaySayfasi> createState() => _DetaySayfasiState();
}

class _DetaySayfasiState extends State<DetaySayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.yemek.yemek_adi),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("resimler/${widget.yemek.yemek_resim_adi}"),
            Text("${widget.yemek.yemek_fiyat} \u{20BA}",style: TextStyle(fontSize: 48,color: Colors.blue),),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                child: Text("SİPARİŞ VER"),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Colors.orange, // Düğme üzerindeki metin rengi
                ),
                onPressed: () {
                  print("Sipariş verildi.");
                },
              ),
            ),

          ],
        ),
      ),
    );
  }
}
