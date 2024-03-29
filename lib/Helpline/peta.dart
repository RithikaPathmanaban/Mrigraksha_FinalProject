import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class peta extends StatefulWidget {
  const peta({super.key});

  @override
  State<peta> createState() => _petaState();
}

class _petaState extends State<peta> {
  Future<void> _copyToClipboard() async {
    await Clipboard.setData(ClipboardData(text: str));
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      duration: Duration(milliseconds: 800),
      backgroundColor: Color(0xff19B9AF),
      content: Text(
        '               Copied to clipboard',
        style: TextStyle(
            color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
      ),
    ));
  }

  final str = '+91 9820122602';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 231, 231),
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Center(
            child: Text(
              'PETA India',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
          backgroundColor: Color(0xff19B9AF),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(150),
                  bottomLeft: Radius.circular(150)))),
      body: SingleChildScrollView(
        child: Center(
          child: Column(children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              margin: EdgeInsets.fromLTRB(20, 70, 20, 90),
              child: Text(
                "Animals are not ours to experiment on,eat,wear,use for entertainment,or abuse in any other way.To help an animal who's in immediate physical danger or in urgent need of veterinary care, please call our emergency number:",
                textAlign: TextAlign.left,
              ),
            ),
            ElevatedButton.icon(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                      title: Center(
                        child: const Text(
                          "Peta Helpline",
                          style: TextStyle(
                              color: Color(0xff19B9AF),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      actions: <Widget>[
                        Container(
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: IconButton(
                                    padding: EdgeInsets.all(0),
                                    onPressed: _copyToClipboard,
                                    icon: Icon(
                                      Icons.copy,
                                      size: 30,
                                    )),
                              ),
                              Text(
                                '+91 9820122602',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
                icon: Icon(
                  Icons.call,
                  color: Color(0xff19B9AF),
                  size: 40,
                ),
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(150, 90),
                    backgroundColor: Colors.white,
                    elevation: 30),
                label: Text(
                  'Contact us',
                  style: TextStyle(
                      color: Color(0xff19B9AF),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )),
            Container(
              child: Image.asset('assets/helpline/petapic.png'),
            )
          ]),
        ),
      ),
    );
  }
}
