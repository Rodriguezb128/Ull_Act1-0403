import 'package:flutter/material.dart';
import 'package:rodriguez0403/pantallas0403/panel0403/panel_pantalla0403.dart';
import 'Itemdeporte.dart';

class PanelPantalla0403 extends StatelessWidget {
  const PanelPantalla0403({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff6e554c),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu, color: Color(0xffffffff)),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://raw.githubusercontent.com/Rodriguezb128/img-IOS/main/icondeport.png"),
            ),
          )
        ],
        title: const Text(
          'SportLife Rodriguez0403',
          style: TextStyle(color: Color(0xffffffff)),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color(0xffdeb69b),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 5),
                      color:
                          Theme.of(context).colorScheme.primary.withOpacity(.1),
                      spreadRadius: 5,
                      blurRadius: 5)
                ]),
            child: TextField(
              decoration: InputDecoration(
                  hintText: " Que quieres ver",
                  hintStyle: TextStyle(fontWeight: FontWeight.w300),
                  border: InputBorder.none,
                  prefix: Icon(Icons.search, color: Color(0xff000000))),
            ),
          ),
          Container(
            height: 180,
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://raw.githubusercontent.com/Rodriguezb128/img-IOS/main/deports.jpg")),
            ),
          ),
          ListTile(
            title: Text("Top Estrellas Del Deportes"),
            titleTextStyle: Theme.of(context).textTheme.titleLarge,
            trailing: Icon(Icons.filter_list_outlined),
          ),
          Expanded(
            child: GridView.count(
              padding: EdgeInsets.all(15),
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 15,
              children: [for (int i = 1; i <= 10; i++) Itemdeporte()],
            ),
          ),
        ],
      ),
    );
  }
}
