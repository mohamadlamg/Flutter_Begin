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
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(

          children: [
          Padding(
              padding: EdgeInsets.all(5.0),
              child: Image(image: AssetImage(
                'assets/images/son.png',
                
              ),
              width: 350.0,
              height: 450.0,
              
              ),
            ),
            PartieTitre(),
            PartieTexte(),
            PartieIcone(),
            PartieRubrique()

        ]

          ),

        ),
        
        
    ),
    );
  }
}

class PartieTitre extends StatelessWidget {
  const PartieTitre({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
     
      padding: EdgeInsets.all(20),
      
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("L'ÈRE DE LA DESINFORMATION",
          style:TextStyle(
            color: Colors.black,
            fontSize: 32,
            fontWeight: FontWeight.w900,
          ) ,
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text("Verifiez toujours ce que vous voyez sur le Net !",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),),
          )
        ],
      ),
    );
  }
}

class PartieTexte extends StatelessWidget {
  const PartieTexte({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: 
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text("La désinformation est une manipulation intentionnelle de l'information visant à tromper, diviser ou nuire. Face à la viralité des fausses nouvelles (fake news) sur internet, chacun a le pouvoir de stopper leur propagation.",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
        ),),
      ),
    );
  }
}

class PartieIcone extends StatelessWidget {
  const PartieIcone({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Row(
      mainAxisAlignment:MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          child: Column(children: [
            Icon(Icons.phone,size: 18.0,color: const Color.fromARGB(155, 207, 126, 102),),
            SizedBox(height: 10,),
            Text("TEL",
            style: TextStyle(fontWeight: FontWeight.w500))
          ],
          ),
          
        ),

        Container(
          child: Column(children: [
            Icon(Icons.mail,size: 18.0,color: const Color.fromARGB(155, 207, 126, 102),),
            SizedBox(height: 10,),
            Text("MAIL",
            style: TextStyle(fontWeight: FontWeight.w500))
          ],
          ),
          
        ),

        Container(
          child: Column(children: [
            Icon(Icons.share,size: 18.0,color: const Color.fromARGB(155, 207, 126, 102),),
            SizedBox(height: 10,),
            Text("PARTAGE",
            style: TextStyle(fontWeight: FontWeight.w500),)
          ],
          ),
          
        ), 

      ],),
    );
  }
}


class PartieRubrique extends StatelessWidget {
  const PartieRubrique({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
         ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Image(image: AssetImage(
                'assets/images/lale.png',
                
              ),
              width: 140.0,
              height: 140.0,
              fit:BoxFit.cover,
              
              ),
        ),

        ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Image(image: AssetImage(
                'assets/images/suite.png',
                
              ),
              width: 140.0,
              height: 140.0,
              fit:BoxFit.cover,
              
              ),
        ),
       ],
      ),
    );
  }
}