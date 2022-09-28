import 'package:cloudyapp/constants/colors.dart';
import 'package:cloudyapp/widgets/back_btn.dart';
import 'package:cloudyapp/widgets/detail_page_btn.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> with TickerProviderStateMixin {
  late TabController tabController = TabController(length: 4, vsync: this);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        child: Column(
          children: [
            Stack(
              children: [
                //detail_page image
                Padding(
                  padding: const EdgeInsets.only(
                    left: 12,
                    right: 12,
                    top: 10,
                    bottom: 20,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                    child: Image.asset(
                      "assets/images/image_1.png",
                      height: MediaQuery.of(context).size.height * 0.4,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                //arrow_back
                BackBtn(),
                //title_description
                Positioned(
                  bottom: MediaQuery.of(context).size.height * 0.08,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Red Moon will once again rise tomorrow",
                            textAlign: TextAlign.start,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: textSecondary,
                              height: 1.2,
                              fontSize: 28,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 2,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12),
                            child: Text(
                              "25 Jun, 2021 | Cosmos",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: textSecondary,
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                //share and add fav
                Positioned(
                  bottom: 0,
                  right: 40,
                  child: Row(
                    children: [
                      DetailPageBtn(
                        iconName: Icons.share,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      DetailPageBtn(
                        iconName: Icons.favorite,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //tabBar
                    Expanded(
                      flex: 1,
                      child: RotatedBox(
                        quarterTurns: -3,
                        child: Container(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: TabBar(
                              controller: tabController,
                              labelColor: secondaryColor,
                              unselectedLabelColor: primaryColor,
                              isScrollable: true,
                              labelStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                              labelPadding: EdgeInsets.only(left: 7, right: 7),
                              tabs: [
                                RotatedBox(
                                  quarterTurns: 2,
                                  child: Tab(
                                    text: "INTRODUCTION",
                                  ),
                                ),
                                RotatedBox(
                                  quarterTurns: 2,
                                  child: Tab(
                                    text: "OUR WORKS",
                                  ),
                                ),
                                RotatedBox(
                                  quarterTurns: 2,
                                  child: Tab(
                                    text: "OUR WORKS",
                                  ),
                                ),
                                RotatedBox(
                                  quarterTurns: 2,
                                  child: Tab(
                                    text: "OUR WORKS",
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    //tabbarview
                    Expanded(
                      flex: 9,
                      child: Container(
                        margin: EdgeInsets.only(top: 4),

                        //need remaining screen without giving fixed height
                        // height: 700,
                        child: TabBarView(
                          controller: tabController,
                          children: [
                            SingleChildScrollView(
                              child: Text(
                                "Hello, and how to make container height dynamic with it's content and remove indicator and start tab bar with index. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur. Hello",
                                style: TextStyle(
                                  color: primaryColor,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                            Text(
                              "How",
                              style: TextStyle(color: primaryColor),
                            ),
                            Text(
                              "are",
                              style: TextStyle(color: primaryColor),
                            ),
                            Text(
                              "you?",
                              style: TextStyle(color: primaryColor),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
