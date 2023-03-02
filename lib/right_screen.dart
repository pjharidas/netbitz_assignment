import 'package:flutter/material.dart';
import 'package:iot_app/widgets/slidable_image.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: const TextTheme(
            displayLarge: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
            displayMedium: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
            displaySmall: TextStyle(fontSize: 15),
            bodyMedium: TextStyle(
              color: Colors.black,
              fontSize: 16,
            )),
        // is not restarted.
      ),
      home: MyHomePage(),
    );
  }
}

const kBlueColor = Color(0xff4B48C9);
const kStarIcon = Icon(
  Icons.star,
  color: kBlueColor,
);
const kPadding = EdgeInsets.symmetric(horizontal: 30);

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                const VehicalImageCarousel(),
                Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withOpacity(0.7),
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: kPadding,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Honda Activa 4g 120cc",
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                      const Spacer(),
                      const Icon(Icons.share_outlined),
                      const SizedBox(width: 10),
                      const Icon(Icons.favorite_border),
                    ],
                  ),
                ),
                Padding(
                  padding: kPadding,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "★ 4.3",
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium!
                            .copyWith(color: kBlueColor),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "(44 rides)",
                        style: Theme.of(context).textTheme.displayMedium!,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: kPadding,
                  child: Row(
                    children: [
                      const Icon(
                        Icons.water_drop_rounded,
                        color: Colors.grey,
                        size: 20,
                      ),
                      Text(
                        "  Petrol   ",
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                      Text(
                        "|  ",
                        style: TextStyle(color: Colors.grey, fontSize: 30),
                      ),
                      const Icon(
                        Icons.moped_rounded,
                        color: Colors.grey,
                        size: 20,
                      ),
                      Text(
                        "  Non-geared   ",
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                      Text(
                        "|  ",
                        style: TextStyle(color: Colors.grey, fontSize: 30),
                      ),
                      const Icon(
                        Icons.people,
                        color: Colors.grey,
                        size: 20,
                      ),
                      Text(
                        "  2 Seater   ",
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                    ],
                  ),
                ),
                const Divider(
                  thickness: 1,
                ),
                Padding(
                  padding: kPadding,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "DATE & TIME",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: kPadding,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "12:30 PM",
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Tue, 2 Feb",
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(color: Colors.black),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.arrow_right_alt,
                        size: 60,
                        color: Colors.grey,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "6:30 PM",
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Tue, 2 Feb",
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(color: Colors.black),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const Divider(
                  height: 40,
                  thickness: 1,
                ),
                Padding(
                  padding: kPadding,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "INSURANCE & PROTECTION",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: kPadding,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Covered by LifeBuddy corp",
                        style: Theme.of(context).textTheme.bodyMedium!,
                      ),
                      Icon(
                        Icons.info_outline_rounded,
                        color: kBlueColor,
                      )
                    ],
                  ),
                ),
                const Divider(
                  height: 40,
                  thickness: 1,
                ),
                Padding(
                  padding: kPadding,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.6,
                        child: Text(
                          "Cancellation after ride is accepted will incur a fine.",
                          softWrap: true,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                      Icon(
                        Icons.info_outline_rounded,
                        color: kBlueColor,
                      )
                    ],
                  ),
                ),
                const Divider(
                  height: 40,
                  thickness: 1,
                ),
                Padding(
                  padding: kPadding,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "VEHICLE REVIEWS",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            height: 150,
                            width: MediaQuery.of(context).size.width * 0.6,
                            color: Colors.white,
                            padding: const EdgeInsets.all(20),
                            // margin: const EdgeInsets.all(8),
                            child: Column(children: [
                              Row(
                                children: [
                                  const CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        "https://s3-alpha-sig.figma.com/img/051d/0d92/a0c3a8cd1e154bdf527eea73c05047cc?Expires=1678665600&Signature=CooozqBncBO0ZeEL8lRtide2nnFrLYTgOLqiBn~wt3BQnkC45FJCyRcWn~X8H-7rh5W8qjC8~Dp8mc4KN85PkCrvqRTv8DhWTRlaGdUEHFct34H0YvKhcIhmWOObwz9LyPlA6FdVRin3fbgvEJNmFgpJb5YalxgQh~ESJ0DOxFrnR7vNsIBLJbro-irQ0JjZZwfVlhxXcShKlXdnwFOEg3w6UoVN9tAUe72CT5OSkjGeAVBrnzB87pu0TFh~1YkgYYLowCXM5MAFnjkF~TtLxrisW0BGY12PeiNlttvjSmDG6iG2UGWb-lyjkJK1laR0kISOxWjMghUhXlvKH7UwCQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // This row will be replaced by the respective widget for rating
                                      Row(
                                        children: const [
                                          kStarIcon,
                                          kStarIcon,
                                          kStarIcon,
                                          kStarIcon,
                                          kStarIcon,
                                        ],
                                      ),
                                      Text(
                                        "Manish",
                                        style: TextStyle(
                                            color: Colors.grey.shade600),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Best host ever. Everything was on time and convenient. 5 stars!",
                                style: Theme.of(context).textTheme.bodyMedium,
                                softWrap: true,
                              )
                            ]),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 150,
                            width: MediaQuery.of(context).size.width * 0.6,
                            color: Colors.white,
                            padding: const EdgeInsets.all(20),
                            margin: const EdgeInsets.all(8),
                            child: Column(children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        "https://s3-alpha-sig.figma.com/img/051d/0d92/a0c3a8cd1e154bdf527eea73c05047cc?Expires=1678665600&Signature=CooozqBncBO0ZeEL8lRtide2nnFrLYTgOLqiBn~wt3BQnkC45FJCyRcWn~X8H-7rh5W8qjC8~Dp8mc4KN85PkCrvqRTv8DhWTRlaGdUEHFct34H0YvKhcIhmWOObwz9LyPlA6FdVRin3fbgvEJNmFgpJb5YalxgQh~ESJ0DOxFrnR7vNsIBLJbro-irQ0JjZZwfVlhxXcShKlXdnwFOEg3w6UoVN9tAUe72CT5OSkjGeAVBrnzB87pu0TFh~1YkgYYLowCXM5MAFnjkF~TtLxrisW0BGY12PeiNlttvjSmDG6iG2UGWb-lyjkJK1laR0kISOxWjMghUhXlvKH7UwCQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // This row will be replaced by the respective widget for rating
                                      Row(
                                        children: const [
                                          kStarIcon,
                                          kStarIcon,
                                          kStarIcon,
                                          kStarIcon,
                                        ],
                                      ),
                                      Text(
                                        "Manish",
                                        style: TextStyle(
                                            color: Colors.grey.shade600),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "It's me again. Only 4 stars this time Rohit.",
                                style: Theme.of(context).textTheme.bodyMedium,
                                softWrap: true,
                              )
                            ]),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                        ],
                      )),
                ),
                const Divider(
                  thickness: 1,
                  height: 20,
                ),
                Padding(
                  padding: kPadding,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "YOUR HOST",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: kPadding,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Container(
                            // margin: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: kBlueColor, width: 4)),
                            child: const CircleAvatar(
                              radius: 25,
                              backgroundImage: NetworkImage(
                                  "https://s3-alpha-sig.figma.com/img/5c61/6b58/c46ddb11f20a6ab2e85b57f3276202af?Expires=1678665600&Signature=MlTcdpidPOGXSOa5hMBu55IwjvAbUZZFn3UY~7OqMsX9gqb8KvwAUde~swseAGi1oNFZqyCKOmFUwWOrRGc9ux-Hkpt4ppWI0zIJ026YdEs2clbfGuz3aN013dacgkVsVv5BCrpw2rq6ua88C1-ttZRQzMoxRPDFbN6g9UZuqV5tiD8jrYpbD0I7194G17U5h~vBgZ7Mc3VrAdstZUAXZ5qEmlflnyXUl1UdbaY448U4251hVFZy4iAOJ~VDKODrI74JQz-XOinfPx9lQYd1Vgbf4j1mVpM1MNVO9H4c~XLRazHSXVWOMF9Lr~yub3~lYnMkaIhroR8BCMtzrJwqCg__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(1),
                            decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                      blurRadius: 7,
                                      color: Colors.black38,
                                      offset: Offset(1, 2))
                                ],
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(10)),
                            width: 60,
                            child: Row(children: const [
                              kStarIcon,
                              Text(
                                "4.7",
                                style: TextStyle(fontSize: 15),
                              )
                            ]),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Rohit Sharma",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                        color: Colors.black, fontSize: 16),
                              ),
                              Text(
                                "  (47 Rides)",
                                style: Theme.of(context).textTheme.displaySmall,
                              ),
                            ],
                          ),
                          Text(
                            "Typically responds within 3 minutes.",
                            style: Theme.of(context).textTheme.displaySmall,
                          ),
                        ],
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.keyboard_arrow_right,
                        color: kBlueColor,
                        size: 30,
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.only(top: 20),
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          offset: Offset(4, -2),
                          blurRadius: 10)
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(15),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Ride Requested",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(fontSize: 18),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(5)),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 2),
                            child: Row(children: [
                              Text(
                                " 5:00  ",
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              const Icon(Icons.timelapse)
                            ]),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Host has received the ride request. We will notify you as soon as it is accepted.",
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                      const Divider(
                        thickness: 1,
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "Est Total:   ",
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                  Text(
                                    "₹451",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "View in detail",
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: Color(0xff00BC8E),
                                    fontSize: 17),
                              )
                            ],
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30, vertical: 20),
                                  textStyle: const TextStyle(fontSize: 18),
                                  backgroundColor: const Color(0xffED752E)),
                              onPressed: () {},
                              child: const Text(
                                "Cancel Request",
                              ))
                        ],
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
