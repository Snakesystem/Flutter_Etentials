import 'package:flutter/material.dart';

class PageViewWidget extends StatefulWidget {
  const PageViewWidget({super.key});

  @override
  State<PageViewWidget> createState() => _PageViewWidgetState();
}

class _PageViewWidgetState extends State<PageViewWidget> {
  PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal.shade200,
          title: const Text("Page View"),
        ),
        body:
            // PageView(
            //   onPageChanged: (value) => log('Move page to $value'),
            //   children: const [
            //     Center(
            //       child: Text(
            //         "Page 1",
            //         style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            //       ),
            //     ),
            //     Center(
            //       child: Text(
            //         "Page 2",
            //         style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            //       ),
            //     ),
            //     Center(
            //       child: Text(
            //         "Page 3",
            //         style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            //       ),
            //     ),
            //   ],
            // )

            Stack(
          children: [
            PageView.builder(
                controller: pageController,
                itemCount: 3,
                itemBuilder: (context, int index) => Center(
                      child: Text(
                        "Page ${index + 1}",
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    )),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 100,
                width: double.infinity,
                color: Colors.teal.shade200,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          if ((pageController.page ?? 0) >= 1) {
                            pageController.previousPage(
                                duration: const Duration(
                                  milliseconds: 500,
                                ),
                                curve: Curves.easeIn);
                          }
                        },
                        child: const Text('PREV'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // pageController.jumpToPage(0);
                          pageController.animateTo(0,
                              duration: const Duration(
                                milliseconds: 500,
                              ),
                              curve: Curves.easeIn);
                        },
                        child: const Text('HOME'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if ((pageController.page ?? 0) <= 1) {
                            pageController.nextPage(
                                duration: const Duration(
                                  milliseconds: 500,
                                ),
                                curve: Curves.easeIn);
                          }
                        },
                        child: const Text('NEXT'),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
