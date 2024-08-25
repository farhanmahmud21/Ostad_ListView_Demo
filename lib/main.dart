import 'package:flutter/material.dart';

void main() {
  runApp(L_View());
}

class L_View extends StatelessWidget {
  const L_View({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> name = ['Farhan', 'Mahmud', 'Khan', 'Aiman', "Mana"];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('List View'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => Column(
                  children: [
                    ListTile(
                      title: Text(
                        name[index],
                      ),
                      tileColor: Colors.blueAccent,
                    )
                  ],
                ),
            separatorBuilder: (context, index) => Divider(
                  height: 10,
                  color: Colors.red,
                ),
            itemCount: name.length),

        // body: ListView.builder(
        //   itemCount: name.length,
        //   itemBuilder: (context, index) {
        //     return Column(
        //       children: [
        //         ListTile(
        //           title: Text(
        //             name[index],
        //           ),
        //           trailing: Icon(Icons.abc_rounded),
        //           tileColor: Colors.amber,
        //         ),
        //         Divider()
        // ],
        //     );
        //   },
        // ),
      ),
    );
  }
}
