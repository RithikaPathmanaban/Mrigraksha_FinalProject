import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HIS extends StatefulWidget {
  const HIS({super.key});

  @override
  State<HIS> createState() => _HISState();
}

class _HISState extends State<HIS> {
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

  final str = '+91-8107299711';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 231, 231),
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Center(
            child: Text(
              'Help in suffering',
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
                "We believe the hallmark of an equitable society is how it treats its animals, because these voiceless beings are inheritors of this Earth as much as the human race.Contact us for any rescue of a dog or if u have any question,we'd love to hear from you.",
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
                          "HIS Helpline",
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
                                '+91-8107299711',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
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
              child: Image.asset('assets/helpline/help.png'),
            )
          ]),
        ),
      ),
    );
  }
}
