
import 'package:flutter/material.dart';
///teste 
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // tirar a logo DEBUG do canto
      title: 'Mercado Aberto',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffffd740),

        elevation:0,

        leading: //deixa o ícone na esquerda e só cabe 1
            IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () {
              },
            ),

        actions: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width - (2 * 32) - (8 * 5),
            padding: const EdgeInsets.only(top: 3, bottom: 2),
              child: TextField(
                decoration: InputDecoration(
                  isDense: true,
                  prefixIcon: const Icon(Icons.search),
                  contentPadding: EdgeInsets.symmetric(vertical:5.0),
                  filled: true, //vai falar que a barra vai ter uma cor para preencher
                  fillColor: Colors.white, //a cor 
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  hintText:
                    'Buscar no Mercado Aberto'
                
                ),
              )
          ),
        
          IconButton(
            icon: const Icon(
              Icons.shopping_cart_outlined ,
              color: Colors.black,
            ),
            onPressed: () {
            },
          )
        ],
   

        bottom: const PreferredSize(      
          preferredSize:  Size.fromHeight(30.0),
          child: ListTile( 
            leading: Icon(Icons.pin_drop_outlined, color: Colors.black, size: 19.0,),    
            title: Text("Enviar para Maria Eduarda - Rua Jardim California, 294",
             style: TextStyle(fontSize: 11.5), textAlign: TextAlign.left)
          ),
        ),

      

      ),//AppBar 
          body: Container(
          decoration:BoxDecoration(gradient: LinearGradient (
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xffffd740), Color(0xfff5f5f5),]
          ),
        ),
          ),
      
  
    );
  }
}
