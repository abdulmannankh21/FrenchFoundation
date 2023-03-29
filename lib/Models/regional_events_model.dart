class HorizontalList {
  late int status;
  late String message;
  late Data data;

  HorizontalList(
      {required this.status, required this.message, required this.data});

  HorizontalList.fromJson(Map<String, dynamic> json) {
    status = json['status'] ?? -1;
    message = json['message'] ?? "";
    data = (json['data'] != null ? new Data.fromJson(json['data']) : null)!;
  }
}

class Data {
  late int total;
  late String regionId;
  late List<Events> events;
  late String baseUrl;
  late String imgLink;

  Data(
      {required this.total,
      required this.regionId,
      required this.events,
      required this.baseUrl,
      required this.imgLink});

  Data.fromJson(Map<String, dynamic> json) {
    total = json['total'] ?? -1;
    regionId = json['region_id'] ?? "";
    if (json['events'] != null) {
      events = <Events>[];
      json['events'].forEach((v) {
        events.add(new Events.fromJson(v));
      });
    }
    baseUrl = json['base_url'] ?? "";
    imgLink = json['img_link'] ?? "";
  }
}

class Events {
  late String id;
  late String name;
  late String regionId;
  late String eventShortDesc;
  late String eventLongDesc;
  late String eventContactNo;
  late String startDate;
  late String detailTopImage;
  late String detailBottomImage;
  late String status;
  Events({
    required this.id,
    required this.name,
    required this.regionId,
    required this.eventShortDesc,
    required this.eventLongDesc,
    required this.eventContactNo,
    required this.startDate,
    required this.detailTopImage,
    required this.detailBottomImage,
    required this.status,
  });

  Events.fromJson(Map<String, dynamic> json) {
    id = json['id'] ?? "";
    name = json['name'] ?? "";
    regionId = json['region_id'] ?? "";
    eventShortDesc = json['event_short_desc'] ?? "";
    eventLongDesc = json['event_long_desc'] ?? "";
    eventContactNo = json['event_contact_no'] ?? "";
    startDate = json['start_date'] ?? "";
    detailTopImage = json['detail_top_image'] ?? "";
    detailBottomImage = json['detail_bottom_image'] ?? "";
    status = json['status'];
  }
}
