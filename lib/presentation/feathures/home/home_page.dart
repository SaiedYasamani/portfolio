import 'package:flutter/material.dart';
import 'package:portfolio/presentation/feathures/home/components/projects.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 10),
  )..repeat(reverse: true);

  late final Animation<Offset> _offsetAnimaiton = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(1.5, 0.0),
  ).animate(
    CurvedAnimation(
      parent: _controller,
      curve: Curves.elasticIn,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(alignment: Alignment.center, children: [
          background(context),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              profile(context),
              header('Work Experiences'),
              body([
                company('Rayan Andishe Nasr'),
                companyInfo('Mar/2020 - Now', 'Android Developer'),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: company('Bani Ertebat Mahan (Banico)'),
                ),
                companyInfo('Nov/2018 - Mar/2022', 'Mobile Developer'),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: company('Sam Sirvan System'),
                ),
                companyInfo('Mar/2018 - Nov/2018', 'Android Developer'),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: company('Shaghayegh Printing Complex'),
                ),
                companyInfo(
                    'Mar/2016 - Mar/2018', 'Android Developer - Graphist')
              ]),
              header('Education'),
              bodyTwo([
                blackText('Bachelor`s degree in software engineering'),
                greenText('Payam Noor University(PNU)'),
              ]),
              header('Certificates'),
              bodyTwo([
                blackText('Advanced Android Programming'),
                greenText('Sematek Inc.'),
                blackText('ATC - Android Application Development'),
                greenText('Sematek Inc.')
              ]),
              header('Skils'),
              bodyTwo([
                blackTextTwo('Java, Kotlin, Dart, Flutter'),
                blackTextTwo('Android Studio, VS code, Gradle'),
                blackTextTwo(
                    'Android Jetpack, Architecture Components, Rxjava, Dagger2, Hint, Room'),
                blackTextTwo('MVVM, MPV, Clean Code'),
                blackTextTwo('Git, TFS, Jira'),
                blackTextTwo('J-Unit, TDD'),
                blackTextTwo('Scrum and Agile methods'),
              ]),
              header('Projects'),
              const Projects(),
            ],
          ),
        ]),
      ),
    );
  }

  Padding blackTextTwo(String text) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 8.0,
        left: 30.0,
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Padding greenText(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.green,
        ),
      ),
    );
  }

  Padding blackText(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Padding bodyTwo(List<Widget> data) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: data,
      ),
    );
  }

  Padding header(String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(150, 191, 243, 243),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
      ),
    );
  }

  Padding body(List<Widget> data) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: data,
      ),
    );
  }

  Padding companyInfo(String duration, String role) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: Row(
        children: [
          Text(
            duration,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              role,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row company(String company) {
    return Row(children: [
      const Icon(Icons.circle_outlined),
      Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Text(
          company,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      )
    ]);
  }

  Transform background(BuildContext context) {
    return Transform.rotate(
      origin: const Offset(0, 0),
      angle: -pi / 4,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Image.asset(
          'assets/images/android.png',
          color: Colors.grey.shade200,
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }

  Container profile(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: SlideTransition(
        position: _offsetAnimaiton,
        child: Stack(
          alignment: Alignment.centerRight,
          children: [
            info(context),
            avatar(),
          ],
        ),
      ),
    );
  }

  Padding info(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(26.0),
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color.fromARGB(150, 191, 243, 243),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            bottomLeft: Radius.circular(30),
            topRight: Radius.circular(50),
            bottomRight: Radius.circular(50),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Saeed Yasamani',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Mobile Developer',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.green,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 8, bottom: 8, right: 8),
                child: Divider(
                  color: Colors.teal,
                  height: 3,
                  thickness: 3,
                ),
              ),
              Row(
                children: const [
                  Icon(
                    Icons.phone_android_outlined,
                    size: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Text(
                      '+98914 - 644 - 6689',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: const [
                  Icon(
                    Icons.mail,
                    size: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Text(
                      'saeidyasamani@gmail.com',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container avatar() {
    return Container(
      width: 160,
      height: 160,
      decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Color.fromARGB(58, 148, 147, 147),
                blurRadius: 10,
                spreadRadius: 10,
                blurStyle: BlurStyle.normal)
          ]),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipOval(
          clipBehavior: Clip.antiAlias,
          child: SizedBox(
            width: 150,
            height: 150,
            child: Image.asset(
              'assets/images/me.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
