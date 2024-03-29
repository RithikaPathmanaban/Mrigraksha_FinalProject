import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Pethelp extends StatefulWidget {
  const Pethelp({super.key});

  @override
  State<Pethelp> createState() => _PethelpState();
}

class _PethelpState extends State<Pethelp> {
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

  final str = '952-435-7738';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 231, 231),
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Center(
            child: Text(
              'PET HELPLINE',
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
              margin: EdgeInsets.fromLTRB(20, 70, 20, 110),
              child: Text(
                "Animal Humane Society’s free Pet Helpline provides caring, compassionate advice and resources to address whatever animal issues you may be experiencing. Whether you need help managing your pet’s behavior, or a referral for veterinary care, pet-friendly housing, low-cost spay/neuter surgery, or other local assistance programs,",
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
                          "Pet Helpline",
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
                                '952-435-7738',
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
              child: Image.asset('assets/helpline/ph.png'),
            )
          ]),
        ),
      ),
    );
  }
}
