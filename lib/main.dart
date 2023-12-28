import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/fast.dart';
import 'package:whatsapp/second.dart';

void main(){
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/":(context) => Home()
      },
    );
  }
}









class Home extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  SafeArea( 
      
      child: DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_outlined)),
              IconButton(onPressed: (){}, icon: Icon(Icons.search)),
              IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))

            ],
            title: Text('Whatsapp'),
            backgroundColor: Colors.green,
            bottom: TabBar(tabs: [
              Icon(Icons.home),
              Text('Chats'),
              Text('Updates'),
              Text('Calls')
            ]),
          ),




          body: TabBarView(children: [
            Placeholder(color: Colors.orange,child: Center(child: Text("Home"),),),

            fast(),
            Scaffold( backgroundColor: Colors.green),
            second()


          ]),
      
 




        ),
      ),
    );
  }
}


