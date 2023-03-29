class VerticalList {
  late int status;
  late String message;
  late Data data;

  VerticalList(
      {required this.status, required this.message, required this.data});

  VerticalList.fromJson(Map<String, dynamic> json) {
    status = json['status'] ?? -1;
    message = json['message'] ?? "";
    data = (json['data'] != null ? new Data.fromJson(json['data']) : null)!;
  }
}

class Data {
  late int total;
  late List<Events> events;
  late String baseUrl;
  late String imgLink;

  Data(
      {required this.total,
      required this.events,
      required this.baseUrl,
      required this.imgLink});

  Data.fromJson(Map<String, dynamic> json) {
    total = json['total'] ?? -1;
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
  late List<Features> features;
  late String name;
  late String subTitle;
  late String detailBannerImage;
  late String detailBottomImage;
  late String detailTopImage;
  late String thumbEvent;
  late String eventLongDesc;
  late String eventShortDesc;
  late String eventDuration;
  late String startDate;
  bool endDate = false;
  late String eventContactNo;

  Events(
      {required this.features,
      required this.name,
      required this.subTitle,
      required this.detailBannerImage,
      required this.detailBottomImage,
      required this.detailTopImage,
      required this.thumbEvent,
      required this.eventLongDesc,
      required this.eventShortDesc,
      required this.eventDuration,
      required this.startDate,
      required this.endDate,
      required this.eventContactNo});

  Events.fromJson(Map<String, dynamic> json) {
    if (json['features'] != null) {
      features = <Features>[];
      json['features'].forEach((v) {
        features.add(new Features.fromJson(v));
      });
    }
    name = json['name'] ?? '';
    subTitle = json['sub_title'] ?? '';
    detailBannerImage = json['detail_banner_image'] ?? '';
    detailBottomImage = json['detail_bottom_image'] ?? '';
    detailTopImage = json['detail_top_image'] ?? '';
    thumbEvent = json['thumb_event'] ?? '';
    eventLongDesc = json['event_long_desc'] ?? '';
    eventShortDesc = json['event_short_desc'] ?? '';
    eventDuration = json['event_duration'] ?? '';
    startDate = json['start_date'] ?? '';
    endDate = json['end_date'] ?? false;
    eventContactNo = json['event_contact_no'] ?? '';
  }
}

class Features {
  late String name;
  late String eventFeatureDesc;

  Features({required this.name, required this.eventFeatureDesc});

  Features.fromJson(Map<String, dynamic> json) {
    name = json['name'] ?? "";
    eventFeatureDesc = json['event_feature_desc'] ?? "";
  }
}
