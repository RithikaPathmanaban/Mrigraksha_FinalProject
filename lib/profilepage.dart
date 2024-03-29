import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mrigrakksha/grid.dart';

class Name extends StatefulWidget {
  const Name({Key? key}) : super(key: key);

  @override
  State<Name> createState() => _NameState();
}

class _NameState extends State<Name> {
  TextEditingController dateInput = TextEditingController();

  @override
  void initState() {
    dateInput.text = ""; // Set the initial value of the text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 231, 231),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            'Create Profile',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w300,
              fontSize: 25,
            ),
          ),
        ),
        backgroundColor: Color(0xff19B9AF),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(180),
            bottomLeft: Radius.circular(180),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            const CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('assets/dog1.jpg'),
              backgroundColor: Colors.black,
            ),
            buildTextFormField('Name', 'Enter your Dog\'s Name'),
            SizedBox(height: 40),
            buildTextFormField('Breed', 'Enter the Dog\'s breed'),
            SizedBox(height: 40),
            buildTextFormField(
                'Age', 'Enter your Dog\'s Age', TextInputType.number),
            SizedBox(height: 40),
            buildTextFormField('Gender', 'Enter your Dog\'s Gender'),
            SizedBox(height: 20),
            buildDateInputField('Last Vaccination Date'),
            SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => gridPage()),
                );
              },
              child: Text(
                'Create Profile',
                style: TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildTextFormField(String label, String hint,
      [TextInputType inputType = TextInputType.text]) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: TextFormField(
        keyboardType: inputType,
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.black),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.black),
          ),
          labelStyle: TextStyle(color: Colors.black),
          labelText: label,
          hintText: hint,
          hintStyle: TextStyle(color: Colors.black),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }

  Widget buildDateInputField(String label) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: TextFormField(
        keyboardType: TextInputType.datetime,
        style: TextStyle(color: Colors.black),
        controller: dateInput,
        decoration: InputDecoration(
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.black),
          ),
          labelText: label,
          labelStyle: TextStyle(color: Colors.black),
          hintText: 'Enter last Vaccination Date',
          hintStyle: TextStyle(color: Colors.black),
        ),
        readOnly: true,
        onTap: () async {
          DateTime? pickedDate = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2000),
            lastDate: DateTime(2101),
          );

          if (pickedDate != null) {
            String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
            setState(() {
              dateInput.text = formattedDate;
            });
          } else {
            print("Date is not selected");
          }
        },
      ),
    );
  }
}
