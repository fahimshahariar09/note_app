import 'package:flutter/material.dart';
import 'package:note_app/common/data_list.dart';
import 'package:note_app/sereen/create_notes_page.dart';
import 'package:note_app/sereen/show_notes_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "My Notes",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      //backgroundColor: Colors.cyanAccent,
      body: ListView.builder(
          itemCount: titelList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ShowNotesPage(
                                note: noteList[index].toString(),
                                titel: titelList[index].toString(),
                              )));
                },
                tileColor: Colors.cyan,
                leading: const Icon(Icons.note_add),
                title: Text(titelList[index].toString()),
                subtitle: Text(
                  noteList[index].toString(),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: IconButton(
                    onPressed: (){
                      titelList.removeAt(index);
                      noteList.removeAt(index);
                      setState(() {
                      });
                    },
                    icon:const Icon(Icons.delete,)))

            );
          }),
      floatingActionButton: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const CreateNotesPage()));
        },
        child: const CircleAvatar(
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
