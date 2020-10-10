import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cafe_REGISTRO',
      theme: ThemeData(
        backgroundColor: Colors.white,
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'REGISTRARSE'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Registrarse',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                  fontSize: 40),
            ),
            Form(
                child: Column(
                  children: [
                    Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Align(
                          child: Text(
                            'Introduce tu nombre:',
                            style: TextStyle(height: 2, fontSize: 20),
                          ),
                          alignment: Alignment.centerLeft,
                        )),
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: TextFormField(
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        decoration: const InputDecoration(
                            hintText: 'Escribe aqui tu nombre'),
                      ),
                    ),
                    Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Align(
                          child: Text(
                            'Introduce tu apellido:',
                            style: TextStyle(height: 2, fontSize: 20),
                          ),
                          alignment: Alignment.centerLeft,
                        )),
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: TextFormField(
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        decoration: const InputDecoration(
                            hintText: 'Escribe aqui tu apellido'),
                      ),
                    ),
                    Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Align(
                          child: Text(
                            'Introduce correo institucional:',
                            style: TextStyle(height: 2, fontSize: 20),
                          ),
                          alignment: Alignment.centerLeft,
                        )),
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: TextFormField(
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        decoration: const InputDecoration(
                            hintText: 'Escribe aqui el correo'),
                      ),
                    ),
                    Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Align(
                          child: Text(
                            'Introduce tu contraseña:',
                            style: TextStyle(height: 2, fontSize: 20),
                          ),
                          alignment: Alignment.centerLeft,
                        )),
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: TextFormField(
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        decoration: const InputDecoration(
                            hintText: 'Escribe aqui tu contraseña'),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(20.0),
                      child: RaisedButton(
                        //boton
                        onPressed: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SecondRoute()),
                          )
                        },
                        child: Text('Registrarse'),
                        textColor: Colors.black,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(20.0),
                      child: RaisedButton(
                        //boton
                        onPressed: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SecondRoute()),
                          )
                        },
                        child: Text('Regresar'),
                        textColor: Colors.black,
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
      backgroundColor: Colors.orange[200],
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Opciones de Cafeterías de la UNE"),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Container(
              child: RaisedButton(
                child: Text('Opción 1'),
                onPressed: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ThirdRoute())) //opcion 1
                },
                //child: Text('Cafetería Universidad'),
                textColor: Colors.black,
              ),
            ),
            Container(
              child: RaisedButton(
                child: Text('Opción 2'),
                onPressed: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ForthRoute())) //fort
                },
                //child: Text('Campus Café'),
                textColor: Colors.black,
              ),
            ),
            Container(
              child: RaisedButton(
                child: Text('Opción 3'),
                onPressed: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FifthRoute())) //fifth
                },
                //child: Text('Campus Café 2'),
                textColor: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ThirdRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: <Widget>[
            Container(
              height: 50,
              color: Colors.amber,
              child: RaisedButton(
                //boton
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondRoute()),
                  )
                },
                child: Text('Menu:'),
                textColor: Colors.black,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(15.0),
              child: Text('Hamburguesa Precio: 30'),
            ),
            Container(
              margin: const EdgeInsets.all(15.0),
              child: Text('Pizza Precio: 30'),
            ),
            Container(
              margin: const EdgeInsets.all(15.0),
              child: Text('Sandwich Precio: 15'),
            ),
            Container(
              height: 30,
              margin: const EdgeInsets.all(15.0),
              child: RaisedButton(
                //boton
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondRoute()),
                  )
                },
                child: Text('Regresar'),
                textColor: Colors.black,
              ),
            ),
            Container(
              height: 30,
              margin: const EdgeInsets.all(15.0),
              child: RaisedButton(
                //boton
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondRoute()),
                  )
                },
                child: Text('Continuar'),
                textColor: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ForthRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Opción 2"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondRoute()),
            );
          },
          child: Text('regresar2'),
        ),
      ),
    );
  }
}

class FifthRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Opción 3"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondRoute()),
            );
          },
          child: Text('Regresar3'),
        ),
      ),
    );
  }
}

class SixthRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Opción 2343"),
      ),
      body: Center(
        // children: comidas.map(_buildItem).toList(),
        child: RaisedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondRoute()),
            );
          },
          child: Text('regresar4'),
        ),
      ),
    );
  }
}
