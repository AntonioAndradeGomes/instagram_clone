import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone/models/idioma.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  List<Idioma> idiomas = <Idioma>[
    new Idioma("Português (Brasil)"),
    new Idioma("English"),
    new Idioma("Español")
  ];

  Idioma idiomaSelecionado;

  @override
  void initState() {
    super.initState();
    idiomaSelecionado = idiomas[0];
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new SingleChildScrollView(
          child: new Stack(
            children: <Widget>[
              new Container(
                height: MediaQuery.of(context).size.height,
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: new DropdownButton<Idioma>(
                        underline: null,
                        value: idiomaSelecionado,
                        icon: new Icon(Icons.keyboard_arrow_down),
                        onChanged: (Idioma idioma){
                          setState(() {
                            idiomaSelecionado = idioma;
                          });
                        },
                        items: idiomas.map((Idioma idioma){
                          return new DropdownMenuItem(
                            value: idioma,
                            child: new Text(
                              idioma.nome,
                              style: const TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                    new Padding(
                      padding: const EdgeInsets.all(20),
                      child: new Column(
                        children: <Widget>[
                          const Text(
                            "Instagram",
                            style: const TextStyle(
                              color: Colors.black,
                              fontFamily: "Billabong",
                              fontSize: 50,
                            ),
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: new Container(
                              height: 50,
                              decoration: new BoxDecoration(
                                border: new Border.all(width: 1, color: Colors.grey[300]),
                                color: Colors.grey[100],
                              ),
                              child: new Padding(
                                padding: new EdgeInsets.only(left: 10),
                                child: TextFormField(
                                  style:const TextStyle(
                                    fontSize: 15,
                                  ),
                                  decoration: new InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Número de Telefone, email ou nome de usuário',
                                  ),
                                ),
                              ),
                            ),
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: new Container(
                              height: 50,
                              decoration: new BoxDecoration(
                                border: new Border.all(width: 1, color: Colors.grey[300]),
                                color: Colors.grey[100],
                              ),
                              child: new Padding(
                                padding: new EdgeInsets.only(left: 10),
                                child: TextFormField(
                                  style:const TextStyle(
                                    fontSize: 15,
                                  ),
                                  decoration: new InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Senha',
                                  ),
                                ),
                              ),
                            ),
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: new Container(
                              child: new Container(
                                height: 50,
                                width: MediaQuery.of(context).size.width,
                                child: RaisedButton(
                                  onPressed: (){},
                                  elevation: 0,
                                  color: Colors.blue[100],//destivado
                                  child: const Text(
                                    "Entrar",
                                    style: const TextStyle(
                                        color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          new Container(
                            width: MediaQuery.of(context).size.width,
                            child: new Padding(
                              padding: const EdgeInsets.all(8),
                              child: new Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  const Text(
                                    "Esqueceu seus dados de login?",
                                    style: const TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                  new GestureDetector(
                                    onTap: (){},
                                    child: const Text(
                                      " Obtenha ajuda para entrar.",
                                      style: const TextStyle(
                                        fontSize: 12,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 15,),
                          new Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: new Container(
                              child: new Container(
                                height: 50,
                                width: MediaQuery.of(context).size.width,
                                child: RaisedButton(
                                  onPressed: (){},
                                  elevation: 0,
                                  color: Colors.blue,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      const Icon(
                                        FontAwesomeIcons.facebookSquare,
                                        color: Colors.white,
                                        size: 25,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Text(
                                        "Entrar com Facebook",
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          new Container(
                            width: MediaQuery.of(context).size.width,
                            child: new Row(
                              children: <Widget>[
                                new Expanded(
                                    child: new Container(
                                      margin: const EdgeInsets.only(left: 10, right: 20),
                                      child: new Divider(
                                        color: Colors.grey,
                                        height: 36,
                                      ),
                                    ),
                                ),
                                const Text(
                                  "OU",
                                ),
                                new Expanded(
                                  child: new Container(
                                    margin: const EdgeInsets.only(left: 10, right: 20),
                                    child: new Divider(
                                      color: Colors.grey,
                                      height: 36,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          new Container(
                            width: MediaQuery.of(context).size.width,
                            child: new Padding(
                              padding: const EdgeInsets.all(8),
                              child: new Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  const Text(
                                    "Não tem uma conta?",
                                    style: const TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                  new GestureDetector(
                                    onTap: (){},
                                    child: const Text(
                                      " Cadastre-se.",
                                      style: const TextStyle(
                                        fontSize: 12,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    new Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: new BoxDecoration(
                        border: Border.all(
                          width: 0.1,
                          color: Colors.grey
                        )
                      ),
                      child: new Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: new Center(
                          child: const Text(
                            "Instagram do Facebook",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
