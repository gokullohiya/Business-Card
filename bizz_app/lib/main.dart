import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  home: BusinessCard(),
));

class BusinessCard extends StatelessWidget {
  const BusinessCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: const Text("Business Card") ,
      leading: const Icon(Icons.person_outline),
      backgroundColor: Colors.brown,

    ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            _getCard(),
        _getAvatar(),
    ]
      ),),
      backgroundColor: Colors.white,
    );
  }

  Container _getCard() {
    return Container(
      width: 400,
      height: 400,
      margin: const EdgeInsets.all(50.0),
      decoration: BoxDecoration(
        color: Colors.brown.shade100,
        border: Border.all(color: Colors.brown.shade500,width: 5),
        borderRadius: BorderRadius.circular(5)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Gokul Lohiya",
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
                color: Colors.brown,),),
          const Text("CSE Undergraduate"),
          const Text("7017529528"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [Icon(
              Icons.mail),
            Text("gokullohia8@outlook.com"),],
          )
        ],
      ),
    );

  }

 Container _getAvatar() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(
            Radius.circular(50.0)),
        border: Border.all(
            color: Colors.brown.shade500, width: 3),
        image: const DecorationImage(
            image: AssetImage("assets/picture.jpg"),
        fit: BoxFit.cover)

      ),
    );
 }
}
