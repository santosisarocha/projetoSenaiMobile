import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ApaeFood',
      theme: ThemeData(             
        textTheme: GoogleFonts.newsreaderTextTheme(),

        colorScheme: const ColorScheme.light().copyWith(
          primary: Color.fromRGBO(192, 255, 111, 1), // Defina a cor do texto do título aqui
        ),
        
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromRGBO(192, 255, 111, 1), // Defina a cor do AppBar aqui
        ),
      ),
      home: const MyHomePage(title: 'ApaeFood'),
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
        title: Row(
          children: [
            Text(
              widget.title,
              style: Theme.of(context).textTheme.headline6!,
            ),
            SizedBox(width: 100),
            SizedBox(
              width: 60,
              height: 60,
              child: Container(
                color: const Color.fromRGBO(255, 227, 82, 1),
                child: IconButton(
                  onPressed: () {
                    // Ação ao pressionar o ícone de pesquisa
                  },
                  icon: Icon(Icons.search),
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(width: 0),
            SizedBox(
              width: 60,
              height: 60,
              child: Container(
                color: Color.fromRGBO(171, 199, 251, 1),
                child: IconButton(
                  onPressed: () {
                    // Ação ao pressionar o ícone do carrinho
                  },
                  icon: Icon(Icons.shopping_cart),
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(width: 0),
            SizedBox(
              width: 60,
              height: 60,
              child: Container(
                color: const Color.fromRGBO(82, 156, 224, 1),
                child: IconButton(
                  onPressed: () {
                    // Ação ao pressionar o ícone do perfil
                  },
                  icon: Icon(Icons.person),
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Image.asset('assets/tela.png'),
              SizedBox(height: 20), // Espaçamento entre a imagem e o primeiro retângulo
              Container(
                width: double.infinity, // Largura total
                padding: EdgeInsets.all(20),
                color: Color.fromRGBO(216, 241, 255, 1), // Cor do primeiro retângulo
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 40,
                      child: Image.asset('assets/mequi.png'), // Imagem 1
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 40,
                      child: Image.asset('assets/bk.png'), // Imagem 2
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 40,
                      child: Image.asset('assets/popeyes.png'), // Imagem 3
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 40,
                      child: Image.asset('assets/subway.png'), // Imagem 4
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20), // Espaçamento entre o primeiro e o segundo retângulo
              Container(
                color: Colors.white, // Cor do segundo retângulo
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildSquareWithButton('assets/caixa1.png'),
                    _buildSquareWithButton('assets/caixa2.png'),
                    _buildSquareWithButton('assets/caixa3.png'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: const Color.fromRGBO(216, 251, 171, 1), // Cor do rodapé
        padding: EdgeInsets.all(10),
        child: Text(
          'Este é o rodapé',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  Widget _buildSquareWithButton(String imagePath) {
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          color: Colors.grey[300], // Cor do quadrado
          child: Image.asset(imagePath), // Imagem dentro do quadrado
        ),
        SizedBox(height: 10),
        SizedBox(
          width: 30, // Tamanho do botão
          height: 30, // Tamanho do botão
          child: FloatingActionButton(
            onPressed: () {
              // Ação ao pressionar o botão
            },
            child: Icon(Icons.add, size: 20), // Tamanho do ícone
            backgroundColor: Colors.blue, // Cor do botão
          ),
        ),
      ],
    );
  }
}
