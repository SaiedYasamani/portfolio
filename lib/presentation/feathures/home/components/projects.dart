import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Projects extends StatelessWidget {
  const Projects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, String> projects = {
      'Shahrnik Organization': 'assets/images/shahrnik.png',
      'Peysepar Driver': 'assets/images/peysepar.png',
      'Esteghlal F.C Official': 'assets/images/esteghlal.png',
    };
    var links = [
      'https://play.google.com/store/apps/details?id=com.rayanandisheh.shahrnikorg&hl=en&gl=US',
      'https://play.google.com/store/apps/details?id=com.rayanandishe.peysepar.driver&hl=en&gl=US',
      'https://www.charkhoneh.com/content/930695742'
    ];
    return GridView.builder(
      itemCount: projects.length,
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemBuilder: (context, index) {
        return itemCard(
          projects.keys.toList()[index],
          projects.values.toList()[index],
          links[index],
        );
      },
    );
  }

  Padding oldView() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Icon(Icons.circle_outlined),
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  'Peysepar Driver',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: InkWell(
              onTap: () => launchUrl(
                Uri.parse(
                    'https://play.google.com/store/apps/details?id=com.rayanandishe.peysepar.driver&hl=en&gl=US'),
              ),
              child: const Text(
                'https://play.google.com/store/apps/details?id=com.rayanandishe.peysepar.driver&hl=en&gl=US',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.blueAccent,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 8.0,
              left: 30.0,
            ),
            child: Text(
              ' Peysepar is one of the smart and modern automotive systems of Ryan Andisheh Nasr Company, which makes the management of all office, vehicle and waste services of various organizations, departments and institutions manageable on the web and mobile platform.',
              style: TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 8.0,
              left: 30.0,
            ),
            child: Text(
              'Tecnologies: android java native, android services, retrofit, Google Map Api, FusedLocationProvider, Google Material, ...',
              style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  color: Colors.green),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: const [
              Icon(Icons.circle_outlined),
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  'Shahrnik Organization',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: InkWell(
              onTap: () => launchUrl(
                Uri.parse(
                    'https://play.google.com/store/apps/details?id=com.rayanandisheh.shahrnikorg&hl=en&gl=US'),
              ),
              child: const Text(
                'https://play.google.com/store/apps/details?id=com.rayanandisheh.shahrnikorg&hl=en&gl=US',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.blueAccent,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 8.0,
              left: 30.0,
            ),
            child: Text(
              ' Shahrnik is an integrated system for managing the city and establishing direct communication between citizens and municipalities. This system consists of two versions: Shahrnik Citizen and Shahrnik Organization',
              style: TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 8.0,
              left: 30.0,
            ),
            child: Text(
              'Tecnologies: android java native, retrofit, Google Map Api, FusedLocationProvider, Google Material, ...',
              style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  color: Colors.green),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: const [
              Icon(Icons.circle_outlined),
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  'Esteghlal F.C Official Application',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: InkWell(
              onTap: () => launchUrl(
                Uri.parse('https://www.charkhoneh.com/content/930695742'),
              ),
              child: const Text(
                'https://www.charkhoneh.com/content/930695742',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.blueAccent,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 8.0,
              left: 30.0,
            ),
            child: Text(
              ' Esteghlal Football Club Oﬃcial application, news, players proﬁle, online radio and tv',
              style: TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 8.0,
              left: 30.0,
            ),
            child: Text(
              'Tecnologies: android java native, retrofit, exoplayer, ..',
              style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  color: Colors.green),
            ),
          ),
        ],
      ),
    );
  }

  itemCard(String title, String image, String link) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: () {
        launchUrl(
          Uri.parse(link),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          borderOnForeground: true,
          clipBehavior: Clip.antiAlias,
          child: Container(
            alignment: Alignment.center,
            child: Flex(
              direction: Axis.vertical,
              children: [
                Flexible(
                  flex: 3,
                  fit: FlexFit.tight,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Flexible(
                  flex: 2,
                  fit: FlexFit.tight,
                  child: Container(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 8,
                        right: 8,
                      ),
                      child: Text(
                        title,
                        style: const TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
