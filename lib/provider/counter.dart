import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter_provider.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {

    // UI Part is here
    final counter = Provider.of<Counter>(context); //ui will rebuild when data changes
  
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text("Simple Counter")),
      body: Center(
        child: Text("${counter.count}",style: TextStyle(fontSize: 40),
        ),
      ),

      //button part is here  
       floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [

          FloatingActionButton(
            heroTag: "increment",
            onPressed: counter.increment,
            backgroundColor: Colors.green,
            foregroundColor: Colors.black,
            elevation: 10,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),
            side: BorderSide(color:Colors.black)),           
            child: Icon(Icons.add),
            ),
            
          SizedBox(height: 15),
          FloatingActionButton(
            heroTag: "decrement",
            onPressed: counter.decrement,
            backgroundColor: Colors.red,
            foregroundColor: Colors.black,
            elevation: 50,
            shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),
            side: BorderSide(color:Colors.black)),
            child: Icon(Icons.remove),
            ),
        ],
       ),
    );
  }
}





