import 'package:flutter/material.dart';

class ShowNotesPage extends StatefulWidget {
  const ShowNotesPage({super.key,this.titel,required this.note});
  final String? titel;
  final String? note;

  @override
  State<ShowNotesPage> createState() => _ShowNotesPageState();
}

class _ShowNotesPageState extends State<ShowNotesPage> {
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Show page"),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Card(
              color: Colors.cyan,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10,),
                    child: Text(widget.titel.toString(),style: const TextStyle(fontWeight: FontWeight.w500,fontSize: 20,color: Colors.white),),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Expanded(
              child: Card(
                color: Colors.cyan,
                child: SizedBox(
                  width: size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10,),
                        child: Text(widget.note.toString(),style: const TextStyle(fontWeight: FontWeight.w500,fontSize: 20,color: Colors.white),),
                      ),
                    ],
                  ),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
