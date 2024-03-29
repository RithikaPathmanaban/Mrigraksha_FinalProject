import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class bluecross extends StatefulWidget {
  const bluecross({super.key});

  @override
  State<bluecross> createState() => _bluecrossState();
}

class _bluecrossState extends State<bluecross> {
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

  final str = '0300 790 9903';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 231, 231),
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Center(
            child: Text(
              'BLUECROSS',
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
      body: Center(
        child: Column(children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            margin: EdgeInsets.fromLTRB(20, 70, 20, 90),
            child: Text(
              "If you have any question or enquiry that you can't find an answer to on our site, we'd love to hear from you. Please click on the button below to submit any question and we'll do our best to get back to you as soon as possible with an answer.",
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
                        "Blue Cross Helpline",
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
                              '0300 790 9903',
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
            child: Image.asset('assets/helpline/blue.png'),
          )
        ]),
      ),
    );
  }
}
