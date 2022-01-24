import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var yemekler = ['Mantı', 'Pizza', 'Pilav'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slidable'),
      ),
      body: ListView.builder(
        itemCount: yemekler.length,
        itemBuilder: (context, index) {
          var item = yemekler[index];
          return Slidable(
            key: const ValueKey(0),
            child: items(item),
            startActionPane: ActionPane(
              extentRatio: 0.5,
              motion: const ScrollMotion(),
              children: [
                SlidableAction(
                  onPressed: (context) => slidemethod(context, item, index),
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  label: 'Paylaş',
                  icon: Icons.share,
                ),
                SlidableAction(
                  onPressed: (context) => slidemethod(context, item, index),
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  label: 'Kaldır',
                  icon: Icons.delete,
                ),
              ],
            ),
            endActionPane: ActionPane(
              dismissible: DismissiblePane(onDismissed: (){
                ScaffoldMessenger.of(this.context).showSnackBar(
                  SnackBar(
                    content: Text('$item kaldırıldı'),
                    duration: const Duration(seconds: 1),
                  ),
                );
              },),
              extentRatio: 0.5,
              motion: const ScrollMotion(),
              children: [
                SlidableAction(
                  onPressed: (context) => slidemethod(context, item, index),
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  label: 'Ekle',
                  icon: Icons.add,
                ),
                SlidableAction(
                  onPressed: (context) => slidemethod(context, item, index),
                  backgroundColor: Colors.orange,
                  foregroundColor: Colors.white,
                  label: 'Düzenle',
                  icon: Icons.edit,
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget items(String item) => Builder(
        builder: (context) => ListTile(
          title: Text(item),
          onTap: () async {
            var slideable = Slidable.of(context)!;
            if (slideable.direction.value == 0) {
              await slideable.openTo(0.5);
            } else {
              await slideable.close();
            }
            print(slideable.direction.value);
          },
        ),
      );

  slidemethod(BuildContext context, String item, int index) {
    ScaffoldMessenger.of(this.context).showSnackBar(
      SnackBar(
        content: Text('$item tetiklendi'),
        duration: const Duration(seconds: 1),
      ),
    );
  }
}
