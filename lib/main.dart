import 'package:flutter/material.dart';

void main() {
  runApp(const MonAppli());
}

class MonAppli extends StatelessWidget {
  const MonAppli({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Magazine Infos',
      debugShowCheckedModeBanner: false,
      home: PageAccueil(),
    );
  }
}

class PageAccueil extends StatelessWidget {
  const PageAccueil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Magazine Infos'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(85, 126, 195, 252),
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Icon(Icons.menu,size: 22.0,),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Icon(Icons.settings,size: 22.0,),
          )
        ],
      ),
      body: Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          
          children: [
            Text('Dernière nouvelle !',style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 26,
              color: const Color.fromARGB(255, 147, 121, 42)

            ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Image(image: AssetImage(
                'assets/images/son.png',
                
              ),
              width: 350.0,
              height: 450.0,
              
              ),
            ),
            FloatingActionButton(onPressed: (){
              debugPrint('Tu as cliqué dessus !');
            },child: const Text("Click",style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 15,

            ),
            ),
            ),
            
          ],
        ),
      ),
    );
  }
}
