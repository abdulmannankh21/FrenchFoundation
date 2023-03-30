import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fafapp/export.dart';
import 'package:animated_custom_dropdown/custom_dropdown.dart';


class ExploreRegionalEvents extends GetView<ExploreRegionalEventsController>  {
  ExploreRegionalEventsController controller = Get.put(ExploreRegionalEventsController());

  @override
  Widget build(BuildContext context) {
    final TextEditingController stateCtrl = TextEditingController();
    stateCtrl.text = controller.selectedState.value;
    final TextEditingController cityCtrl = TextEditingController();
    cityCtrl.text = controller.selectedCity.value;
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
                      verticalSpacer(5),
                      Text("Explorer les événements",
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
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
              Row(children: [
                Expanded(
                  child: CustomDropdown(
                    fillColor: AppColors.textfieldcolor.withOpacity(0.4),
                  hintStyle: TextStyle(color: Colors.black),
                  hintText: 'Select State',
                  borderRadius: BorderRadius.circular(25),
                  items: controller.state,
                  controller: stateCtrl,
                  onChanged: (state) {
                    controller.updateSelectedState(state.toString());
                  },
              ),
                ),
                horizontalSpacer(5),
                Expanded(
                  child: CustomDropdown(
                    fillColor: AppColors.textfieldcolor.withOpacity(0.4),
                    hintStyle: TextStyle(color: Colors.black),
                    hintText: 'Select city',
                    borderRadius: BorderRadius.circular(25),
                    items: controller.city,
                    controller: cityCtrl,
                    onChanged: (city) {
                      controller.updateSelectedCity(city.toString());
                    },
                  ),
                ),

              ],),
              SizedBox(
                height: Get.height * 0.02,
              ),
              Text("Dans votre Région",
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
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
                                children: [
                                  Center(
                                    child: Container(
                                      color: Colors.transparent,
                                      width: Get.width,
                                      height: Get.height / 3.8,
                                      child: Stack(
                                        children: [
                                          Container(
                                            width: Get.width,
                                            height: Get.height / 3.8,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(image: NetworkImage(controller
                                                  .horizontalList
                                                  .data
                                                  .imgLink +
                                                  controller
                                                      .horizontalList
                                                      .data
                                                      .events[index]
                                                      .detailTopImage),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: Get.width,
                                            height: Get.height / 3.8,
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
                                  verticalSpacer(5),
                                  Container(
                                    width: Get.width,
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
                                                  FontWeight.w600,
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
                                  verticalSpacer(10),
                                  Row(

                                    children: [
                                      CircleAvatar(
                                        radius: 25,
                                        backgroundColor: AppColors.primaryColor,
                                        child: CircleAvatar(
                                          radius: 20,
                                          backgroundImage: AssetImage('assets/images/man.jpeg'),
                                        ),
                                      ),
                                      horizontalSpacer(5),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Julia Jasper",
                                              style: GoogleFonts.montserrat(
                                                textStyle: const TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w600,
                                                  color: AppColors.primaryColor,
                                                ),
                                              )),
                                          Text("10-12-2022",
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
                                  verticalSpacer(5),
                                  horizontalDivider()
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
