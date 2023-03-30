import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fafapp/export.dart';



class BlogScreen extends GetView<BlogController>  {
  BlogController controller = Get.put(BlogController());

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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        verticalSpacer(5),
                        Text("Blogs",
                            style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: AppColors.primaryColor,
                              ),
                            )),
                        Text("S'informer",
                            style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                fontSize: 14,
                                color: AppColors.textfieldcolor,
                              ),
                            )),
                      ],
                    ),
                  ),
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: AppColors.primaryColor,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('assets/images/man.jpeg'),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              Expanded(
                child: Obx(
                      () => controller.isLoading.value
                      ? const Center(child: CircularProgressIndicator())
                      : ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount:
                    controller.blog.data.blogs.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          // Get.toNamed('/eventdetails',
                          //     arguments:
                          //     controller.horizontalList.data);
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
                                  child: Container(
                                    width: Get.width ,
                                    height: Get.height / 3.8,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(image: NetworkImage(
                                          controller.blog.data.imgLink + controller.blog.data.blogs[index].detailBannerImage),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              verticalSpacer(5),
                              Container(
                                width: Get.width,
                                child: Column(

                                  children: [
                                    Text(
                                      controller.blog.data
                                          .blogs[index].name,
                                      maxLines: 3,
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
                                    verticalSpacer(10),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            controller.blog.data
                                                .blogs[index].blogShortDesc,
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
                              verticalSpacer(5),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(

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
