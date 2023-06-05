import 'package:flutter/material.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class ApplicationDetail extends StatefulWidget {
  const ApplicationDetail({super.key});

  @override
  State<ApplicationDetail> createState() => _ApplicationDetailState();
}

class _ApplicationDetailState extends State<ApplicationDetail> {
  var detail = passedApplication;
  var scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 40, left: 16, right: 16, bottom: 16),
                  child: SizedBox(
                    width: double.infinity,
                    child: Card(
                      borderOnForeground: true,
                      color: Colors.white,
                      elevation: 5,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 75),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                detail?.name ?? "",
                                style: const TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                detail?.description ?? "",
                                style: const TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            screenShots()
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    launchUrl(Uri.parse(detail?.link ?? ""));
                  },
                  child: SizedBox(
                    width: 80,
                    height: 80,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(58, 148, 147, 147),
                              blurRadius: 10,
                              spreadRadius: 10,
                              blurStyle: BlurStyle.normal)
                        ],
                      ),
                      child: ClipOval(
                        child: SizedBox(
                          width: 70,
                          height: 70,
                          child: Image.asset(detail?.icon ?? ""),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  SizedBox screenShots() {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      height: 200,
      child: Scrollbar(
        thumbVisibility: true,
        controller: scrollController,
        scrollbarOrientation: ScrollbarOrientation.bottom,
        child: ListView.builder(
          itemCount: detail?.screenShot.length,
          scrollDirection: Axis.horizontal,
          controller: scrollController,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 140,
                height: 200,
                child: Image.asset(detail?.screenShot[index] ?? ""),
              ),
            );
          },
        ),
      ),
    );
  }
}
