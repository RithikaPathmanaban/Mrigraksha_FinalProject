import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 231, 231),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(12, 20, 12, 12),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 130.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.0),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xff19B9AF),
                          blurRadius: 2.0,
                          offset: Offset(0.0, 2.0))
                    ],
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xff19B9AF),
                          Color(0xff19B9AF),
                        ])),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Vaccinate your \n dog at time',
                        style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 60),
              Center(
                child: Text(
                  'Vaccine for your dog',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              TaskContainer(),
              TaskContainer1(),
              TaskContainer2(),
              TaskContainer3(),
              TaskContainer4(),
              SizedBox(
                height: 100.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TaskCard extends StatelessWidget {
  final String? imageUrl;
  final String? label;
  const TaskCard({Key? key, this.imageUrl, this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey, blurRadius: 2.0, spreadRadius: 0.5)
                ]),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            label ?? '',
            style: TextStyle(fontSize: 18.0),
          )
        ],
      ),
    );
  }
}

class TaskContainer extends StatefulWidget {
  const TaskContainer({Key? key}) : super(key: key);

  @override
  _TaskContainerState createState() => _TaskContainerState();
}

class _TaskContainerState extends State<TaskContainer> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        height: 60.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0), color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    isActive = !isActive;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.blueAccent, width: 4.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      height: 10.0,
                      width: 10.0,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: isActive
                              ? Colors.blueAccent
                              : Colors.transparent),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                "45 days -- DHPPi + L",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  decoration: isActive
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
                ),
              ),
              Expanded(
                child: Container(),
              ),
              SizedBox(
                width: 10.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TaskContainer1 extends StatefulWidget {
  const TaskContainer1({super.key});

  @override
  State<TaskContainer1> createState() => _TaskContainer1State();
}

class _TaskContainer1State extends State<TaskContainer1> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        height: 60.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0), color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    isActive = !isActive;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.blueAccent, width: 4.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      height: 10.0,
                      width: 10.0,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: isActive
                              ? Colors.blueAccent
                              : Colors.transparent),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                "3 weeks from first vaccine --\n DHPPi + L first booster",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  decoration: isActive
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
                ),
              ),
              Expanded(
                child: Container(),
              ),
              SizedBox(
                width: 10.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TaskContainer2 extends StatefulWidget {
  const TaskContainer2({super.key});

  @override
  State<TaskContainer2> createState() => _TaskContainer2State();
}

class _TaskContainer2State extends State<TaskContainer2> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        height: 60.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0), color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    isActive = !isActive;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.blueAccent, width: 4.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      height: 10.0,
                      width: 10.0,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: isActive
                              ? Colors.blueAccent
                              : Colors.transparent),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                "3 weeks from Second vaccine --\nDHPPi + L second booster",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  decoration: isActive
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
                ),
              ),
              Expanded(
                child: Container(),
              ),
              SizedBox(
                width: 10.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TaskContainer3 extends StatefulWidget {
  const TaskContainer3({super.key});

  @override
  State<TaskContainer3> createState() => _TaskContainer3State();
}

class _TaskContainer3State extends State<TaskContainer3> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        height: 60.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0), color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    isActive = !isActive;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.blueAccent, width: 4.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      height: 10.0,
                      width: 10.0,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: isActive
                              ? Colors.blueAccent
                              : Colors.transparent),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                "3 weeks from Second DHPPi\n + L Anti-Rabies",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  decoration: isActive
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
                ),
              ),
              Expanded(
                child: Container(),
              ),
              SizedBox(
                width: 10.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TaskContainer4 extends StatefulWidget {
  const TaskContainer4({super.key});

  @override
  State<TaskContainer4> createState() => _TaskContainer4State();
}

class _TaskContainer4State extends State<TaskContainer4> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        height: 60.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0), color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    isActive = !isActive;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.blueAccent, width: 4.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      height: 10.0,
                      width: 10.0,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: isActive
                              ? Colors.blueAccent
                              : Colors.transparent),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                "3 weeks after anti-rabies \nshot -- Anti-RAbies shot",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  decoration: isActive
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
                ),
              ),
              Expanded(
                child: Container(),
              ),
              SizedBox(
                width: 10.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
