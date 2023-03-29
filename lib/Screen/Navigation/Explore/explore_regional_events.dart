import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fafapp/export.dart';


class ExploreRegionalEvents extends GetView<ExploreRegionalEventsController>  {
  ExploreRegionalEventsController controller = Get.put(ExploreRegionalEventsController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.bgColor,
        body: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Explorer les événements",
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                              color: AppColors.primaryColor,
                            ),
                          )),
                      Text("Explorer les événements autour de vous",
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                              fontSize: 14,
                              color: AppColors.textfieldcolor,
                            ),
                          )),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              Text("Dans votre Région",
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: AppColors.primaryColor,
                    ),
                  )),
              Expanded(
                child: Obx(
                      () => controller.isLoading.value
                      ? const Center(child: CircularProgressIndicator())
                      : ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount:
                    controller.horizontalList.data.events.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Get.toNamed('/eventdetails',
                              arguments:
                              controller.horizontalList.data);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Container(
                                  color: Colors.transparent,
                                  width: Get.width / 1.2,
                                  height: Get.height / 3,
                                  child: Stack(
                                    children: [
                                      Card(
                                        elevation: 5,
                                        color: AppColors.bgColor,
                                        child: ClipRRect(
                                            child: Image(
                                              image: NetworkImage(controller
                                                  .horizontalList
                                                  .data
                                                  .imgLink +
                                                  controller
                                                      .horizontalList
                                                      .data
                                                      .events[index]
                                                      .detailTopImage),
                                              width: Get.width,
                                              height: Get.height,
                                              fit: BoxFit.cover,
                                            )),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              Colors.transparent,
                                              AppColors.primaryColor
                                                  .withOpacity(0.5),
                                            ],
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                          ),
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                          MainAxisAlignment
                                              .spaceBetween,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets
                                                  .fromLTRB(
                                                  10, 20, 10, 0),
                                              child: Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment
                                                    .end,
                                                children: [
                                                  Padding(
                                                    padding:
                                                    const EdgeInsets
                                                        .only(
                                                        right: 10),
                                                    child:
                                                    ElevatedButton(
                                                      onPressed: () {
                                                        //Navigator.push(context, MaterialPageRoute(
                                                        //builder: (context) =>  Event_Details()));
                                                      },
                                                      style:
                                                      ElevatedButton
                                                          .styleFrom(
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                            BorderRadius.circular(
                                                                25.0)),
                                                        minimumSize:
                                                        const Size(
                                                            60, 30),
                                                        maximumSize:
                                                        const Size(
                                                            100,
                                                            30),
                                                        primary: AppColors
                                                            .primaryColor,
                                                        textStyle: const TextStyle(
                                                            color: AppColors
                                                                .primaryColor,
                                                            fontWeight:
                                                            FontWeight
                                                                .w600),
                                                      ),
                                                      child: Text(controller
                                                          .horizontalList
                                                          .data
                                                          .events[index]
                                                          .name),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets
                                                  .fromLTRB(
                                                  10, 0, 10, 20),
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                    child: Row(
                                                      children: [
                                                        const Icon(
                                                          Icons
                                                              .location_on_outlined,
                                                          color: AppColors
                                                              .bgColor,
                                                        ),
                                                        Text(
                                                          controller
                                                              .horizontalList
                                                              .data
                                                              .events[
                                                          index]
                                                              .name,
                                                          style: const TextStyle(
                                                              fontSize:
                                                              10,
                                                              color: AppColors
                                                                  .bgColor,
                                                              fontWeight:
                                                              FontWeight
                                                                  .bold),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              verticalSpacer(10),
                              Container(
                                width: Get.width / 1.2,
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment
                                          .spaceBetween,
                                      children: [
                                        Text(
                                          controller.horizontalList.data
                                              .events[index].name,
                                          style: GoogleFonts.montserrat(
                                            textStyle: const TextStyle(
                                              fontSize: 18,
                                              fontWeight:
                                              FontWeight.w800,
                                              color: AppColors
                                                  .primaryColor,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          controller.horizontalList.data
                                              .events[index].startDate,
                                          style: GoogleFonts.montserrat(
                                            textStyle: const TextStyle(
                                              fontSize: 16,
                                              color: AppColors
                                                  .textfieldcolor,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    verticalSpacer(10),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            controller
                                                .horizontalList
                                                .data
                                                .events[index]
                                                .eventShortDesc,
                                            maxLines: 3,
                                            style:
                                            GoogleFonts.montserrat(
                                              textStyle: TextStyle(
                                                fontSize: 14,
                                                fontWeight:
                                                FontWeight.w600,
                                                color: AppColors
                                                    .textfieldcolor,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
