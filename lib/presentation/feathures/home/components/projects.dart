import 'package:flutter/material.dart';
import 'package:portfolio/model/details.dart';
import 'package:portfolio/presentation/feathures/application_detail/application_detail.dart';
import 'package:portfolio/utils/constants.dart';

class Projects extends StatelessWidget {
  const Projects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var titles = [
      'Shahrnik Organization',
      'Peysepar Driver',
      'Esteghlal F.C Official'
    ];
    var images = [
      'assets/images/shahrnik.png',
      'assets/images/peysepar.png',
      'assets/images/esteghlal.png'
    ];
    var descriptions = [
      "Ryan Andisheh Nasr Company with 16 years of experience in the field of production of public relations and relief systems and launching national systems 1666 health insurance, 139 rangeland and watershed organizations, integrated meeting system of the Martyr and Veterans Affairs Foundation, 194 relief and Gas accidents, 122 relief and water and sewage accidents and 137 more than 100 municipalities, since 1392 has designed a comprehensive system of mobile citizenship and organizational mobile of municipalities with the brand name Shahrnik. Shahrnik is an integrated system for managing the city and establishing direct communication between citizens and municipalities. This system consists of two versions: citizen citizenship and organizational citizenship. Organizational city version in order to manage and handle citizens' requests, record urban problems by municipal staff and use the municipality's advanced and dedicated messenger to send and receive messages in text, video, audio, and location format and create user groups Between municipal personnel, without the need to have the mobile number of municipal personnel, it is used only for municipal personnel. Therefore, it is necessary to be able to use this version, to register its user details by the system administrator in the municipality, and users must have received their user details from the system administrator before downloading and installing it.",
      "Peysepar is one of the smart and modern automotive systems of Ryan Andisheh Nasr Company, which makes the management of all office, vehicle and waste services of various organizations, departments and institutions manageable on the web and mobile platform. Peysepar system also, by reducing the costs of office transportation service, optimal use of available vehicles, producing accurate reports of vehicle services including distance traveled, operating time, stopping time, number of services performed by driver, passenger, department , Makes it possible to manage and .... This system, which is implemented on the GIS platform, consists of two web and mobile driver software.The web version of the system is responsible for automating service request services, assigning services and submitting reports.The mobile version of the system is installed on the driver's mobile and manages the service report to the driver, announces readiness for service by the driver with the center, registers arrival reports , Is responsible for addressing the route as well as recording quality surveys of driver services provided by the passenger or employees",
      "Esteghlal Cultural and Sports Company of Iran, in order to provide better and easier service to its millions of fans, whose popularity is the result of their support, has released the first version of its mobile phone software called \"Esteghlal Official Super Application\" with the slogan \"Anytime, Anywhere\" Along with his beloved team, he presents the special version of the Android operating system in the first phase, in response to the enthusiasm of the fans who, without pay or money, beat the stone of this club on their chests."
    ];
    var links = [
      'https://play.google.com/store/apps/details?id=com.rayanandisheh.shahrnikorg&hl=en&gl=US',
      'https://play.google.com/store/apps/details?id=com.rayanandishe.peysepar.driver&hl=en&gl=US',
      'https://www.charkhoneh.com/content/930695742'
    ];
    List<List<String>> screens = [
      [
        "assets/images/shahrnik1.jpg",
        "assets/images/shahrnik2.jpg",
        "assets/images/shahrnik3.jpg",
        "assets/images/shahrnik4.jpg",
        "assets/images/shahrnik5.jpg",
        "assets/images/shahrnik6.jpg"
      ],
      [
        "assets/images/peysepar01.jpg",
        "assets/images/peysepar02.jpg",
        "assets/images/peysepar03.jpg",
        "assets/images/peysepar04.jpg",
        "assets/images/peysepar05.jpg",
        "assets/images/peysepar06.jpg",
        "assets/images/peysepar07.jpg",
      ],
      [
        "assets/images/esteghala01.jpg",
        "assets/images/esteghala02.jpg",
        "assets/images/esteghala03.jpg",
        "assets/images/esteghala04.jpg",
        "assets/images/esteghala05.jpg",
        "assets/images/esteghala06.jpg",
        "assets/images/esteghala07.jpg"
      ]
    ];
    return GridView.builder(
      itemCount: 3,
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemBuilder: (context, index) {
        return itemCard(context, titles[index], images[index],
            descriptions[index], links[index], screens[index]);
      },
    );
  }

  itemCard(BuildContext context, String title, String image, String description,
      String link, List<String> screens) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: () {
        passedApplication =
            Details(0, title, image, description, link, screens);
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ApplicationDetail(),
          ),
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
