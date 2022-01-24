import 'package:flutter/material.dart';
import 'package:flutter_slideable/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Slideable',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}








/*

  Widget listItems(String item) {
    return Builder(
      builder: (context) => ListTile(
        title: Text(item),
        onTap: () async {
          final slidable = Slidable.of(context)!;
          if(slidable.direction.value == 0){
            slidable.openTo(0.5);
          }else{
            slidable.close();
          }
        },
      ),
    );
  }


ListView.builder(
        itemCount: liste.length,
        itemBuilder: (context, index) {
          final item = liste[index];
          return Slidable(
            key: const ValueKey(0),
            startActionPane: ActionPane(
              extentRatio: 0.5,
              children: [
                // A SlidableAction can have an icon and/or a label.
                SlidableAction(
                  backgroundColor: const Color(0xFFFE4A49),
                  foregroundColor: Colors.white,
                  icon: Icons.delete,
                  onPressed: (BuildContext context) {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(const SnackBar(content: Text('Silindi')));
                  },
                  label: 'Delete',
                ),
                SlidableAction(
                  onPressed: (BuildContext context) {},
                  backgroundColor: const Color(0xFF21B7CA),
                  foregroundColor: Colors.white,
                  icon: Icons.share,
                  label: 'Share',
                ),
              ],
              motion: const ScrollMotion(),
            ),
            endActionPane: ActionPane(
              dismissible: DismissiblePane(onDismissed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Kaldırdık')));
              }),
              children: [
                // A SlidableAction can have an icon and/or a label.
                SlidableAction(
                  backgroundColor: const Color(0xFFFE4A49),
                  foregroundColor: Colors.white,
                  icon: Icons.delete,
                  onPressed: (BuildContext context) {},
                  label: 'Delete',
                ),
                SlidableAction(
                  onPressed: (BuildContext context) {},
                  backgroundColor: const Color(0xFF21B7CA),
                  foregroundColor: Colors.white,
                  icon: Icons.share,
                  label: 'Share',
                ),
              ],
              motion: const ScrollMotion(),
            ),
            child: listItems(item),

          );
        },
      )
 */

