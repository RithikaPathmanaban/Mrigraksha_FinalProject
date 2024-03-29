import 'package:flutter/material.dart';
// import 'package:pet_adoption/screens/home.dart';

void main() {
  runApp(adobtme());
}

class adobtme extends StatelessWidget {
  const adobtme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Colors.black,
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class PetModel {
  final String name, breed, desc, image;
  final int age;

  PetModel(this.name, this.breed, this.desc, this.image, this.age);
}

class Details extends StatelessWidget {
  const Details({
    Key? key,
    required this.petList,
    required this.index,
  }) : super(key: key);

  final List<PetModel> petList;
  final int? index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Center(
            child: Text(
              'Adopt Me',
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
      body: Column(
        children: [
          SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  child: Image.network(petList[index!].image),
                ),
                Positioned(
                  top: 50,
                  left: 10,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: Colors.deepPurple[800],
                    ),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      petList[index!].name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      petList[index!].breed,
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Chip(
                  label: Text(
                    '${petList[index!].age.toString()} years',
                    style: const TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Colors.purple[300],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              petList[index!].desc,
              textAlign: TextAlign.justify,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple[400],
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 100,
                ),
              ),
              onPressed: () => print('Enquire'),
              child: const Text('Enquire'),
            ),
          ),
        ],
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> catList = ['Dogs'];
    List<PetModel> petList = [
      PetModel(
          'Rover',
          'Pug',
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet dictum enim, nec malesuada neque. Duis bibendum egestas sem, sed semper nisl imperdiet quis. Vivamus venenatis suscipit tortor, et faucibus ligula convallis non. Morbi vitae mi finibus massa tempor tempus tincidunt id velit.',
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSa6s2SobrqKNhoLGjRFxyAPQj3t5sfYdED3j0neQ_I&s',
          2),
      PetModel(
          'Rex',
          'German Shepard',
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet dictum enim, nec malesuada neque. Duis bibendum egestas sem, sed semper nisl imperdiet quis. Vivamus venenatis suscipit tortor, et faucibus ligula convallis non. Morbi vitae mi finibus massa tempor tempus tincidunt id velit.',
          'https://images.saymedia-content.com/.image/ar_4:3%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:eco%2Cw_1200/MTc4MzAwMjIwNTk2MDM3MjI5/german-shepherd-puppy-bite-inhibition-games.jpg',
          1),
      PetModel(
          'Murphy',
          'Puggle',
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet dictum enim, nec malesuada neque. Duis bibendum egestas sem, sed semper nisl imperdiet quis. Vivamus venenatis suscipit tortor, et faucibus ligula convallis non. Morbi vitae mi finibus massa tempor tempus tincidunt id velit.',
          'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6e/Alert_Pug_Puppy.jpg/1200px-Alert_Pug_Puppy.jpg',
          1),
      PetModel(
          'Rocky',
          'Husky',
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet dictum enim, nec malesuada neque. Duis bibendum egestas sem, sed semper nisl imperdiet quis. Vivamus venenatis suscipit tortor, et faucibus ligula convallis non. Morbi vitae mi finibus massa tempor tempus tincidunt id velit.',
          'https://i.pinimg.com/originals/d2/6e/b3/d26eb3a76559bf520a2fbeb9f2698bbb.jpg',
          1),
      PetModel(
          'Louis',
          'Westie',
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet dictum enim, nec malesuada neque. Duis bibendum egestas sem, sed semper nisl imperdiet quis. Vivamus venenatis suscipit tortor, et faucibus ligula convallis non. Morbi vitae mi finibus massa tempor tempus tincidunt id velit.',
          'https://static.independent.co.uk/2020/12/26/11/highland-terrier.jpg?width=1200',
          1),
      PetModel(
          'Rex',
          'Golden Retriever',
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet dictum enim, nec malesuada neque. Duis bibendum egestas sem, sed semper nisl imperdiet quis. Vivamus venenatis suscipit tortor, et faucibus ligula convallis non. Morbi vitae mi finibus massa tempor tempus tincidunt id velit.',
          'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f8/Golden_Retriever_Puppy_12weeks.JPG/1200px-Golden_Retriever_Puppy_12weeks.JPG',
          1),
    ];

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            const SizedBox(height: 18.0),
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(onPressed: () => {}, icon: const Icon(Icons.menu)),
                  const Spacer(),
                  // const CircleAvatar(
                  //   radius: 20.0,
                  //   backgroundImage: AssetImage('assets/ses.png'),
                  //   backgroundColor: Colors.transparent,
                  // )
                ],
              ),
            ),
            Expanded(
              flex: 7,
              child: Column(
                children: [
                  // search
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Find a new friend',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Material(
                        elevation: 2.0,
                        borderRadius: BorderRadius.circular(30.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: const BorderSide(
                                  color: Colors.transparent, width: 0.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: const BorderSide(
                                  color: Colors.transparent, width: 0.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: const BorderSide(
                                  color: Colors.transparent, width: 0.0),
                            ),
                            // hintStyle: TextStyle(color: Colors.grey[800]),
                            filled: true,
                            hintText: "Search",
                            prefixIcon: const Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                            fillColor: Colors.grey[50],
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  // Categories
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: catList.length,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Material(
                          elevation: 2.0,
                          borderRadius: BorderRadius.circular(30.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.purple[400],
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30),
                              child: Center(
                                child: Text(
                                  catList[index],
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Pet List
                  SizedBox(
                    height: 500,
                    width: 500,
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                      ),
                      itemCount: petList.length,
                      itemBuilder: (context, index) => InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Details(petList: petList, index: index))),
                        child: Container(
                          width: 500,
                          height: 500,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white70,
                          ),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20)),
                                child: Image.network(petList[index].image),
                              ),
                              const SizedBox(height: 10),
                              Center(
                                child: Text(
                                  '${petList[index].name} - ${petList[index].age.toString()}yrs ',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
