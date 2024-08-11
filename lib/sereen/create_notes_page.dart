import 'package:flutter/material.dart';
import 'package:note_app/common/data_list.dart';
import 'package:note_app/sereen/home_page.dart';

class CreateNotesPage extends StatefulWidget {
  const CreateNotesPage({super.key});

  @override
  State<CreateNotesPage> createState() => _CreateNotesPageState();
}

class _CreateNotesPageState extends State<CreateNotesPage> {
  final TextEditingController _titelController = TextEditingController();
  final TextEditingController _noteController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Notes"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: _titelController,
                decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(),
                  hintText: "titel",
                  hintStyle: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.black,fontSize: 20,
                  )
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                  controller: _noteController,
                  maxLines: 10,
                  decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(),
                      hintText: "note",
                      hintStyle: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.black,fontSize: 20,
                      )
                  )),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  titelList.add(_titelController.text);
                  noteList.add(_noteController.text);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                },
                child: const Text("Save"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
