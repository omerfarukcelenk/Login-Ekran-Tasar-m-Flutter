import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Ekranı',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Login Ekranı'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);



  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;

    return Scaffold(
     backgroundColor: Colors.deepPurple,
      body: Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding:  EdgeInsets.only(bottom: ekranYuksekligi/20),
              child: SizedBox(
                  width: ekranGenisligi/4,
                  height: ekranYuksekligi/6,
                  child: new Image.asset("images/logo.png")
              ),
            ),
            Padding(
              padding:  EdgeInsets.all(ekranYuksekligi/30),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Kullanıcı adı",
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))
                  ),
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.all(ekranYuksekligi/30),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Şifre",
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))
                  ),
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.all(ekranYuksekligi/30),
              child: SizedBox(
                width: ekranGenisligi/1.2,
                height: ekranYuksekligi/12,
                child: ElevatedButton(
                  child: Text("Giriş Yap",style: TextStyle(fontSize: ekranGenisligi/25),),onPressed: (){
                    print("Giriş Yapıldı");
                },
                    style: ElevatedButton.styleFrom(primary: Colors.pink,),
                ),
                ),
            ),
            GestureDetector(
              onTap: (){
                print("Yardım Seçildi");
              },

              child: Text("Yardım ?",
              style: TextStyle(
                color: Colors.pink,
                fontWeight: FontWeight.bold,
                fontSize: ekranGenisligi/30,
              ),
              ),
            ),
          ],
        ),
      ),
      ),

    );
  }
}
