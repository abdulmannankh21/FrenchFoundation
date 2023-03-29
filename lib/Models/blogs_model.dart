class Blog {
  late int status;
  late String message;
  late Data data;

  Blog({required this.status, required this.message, required this.data});

  Blog.fromJson(Map<String, dynamic> json) {
    status = json['status'] ?? -1;
    message = json['message'] ?? "";
    data = (json['data'] != null ? Data.fromJson(json['data']) : null)!;
  }
}

class Data {
  late int total;
  late List<BlogsDetails> blogs;
  late String baseUrl;
  late String imgLink;

  Data(
      {required this.total,
      required this.blogs,
      required this.baseUrl,
      required this.imgLink});

  Data.fromJson(Map<String, dynamic> json) {
    total = json['total'] ?? -1;
    if (json['blogs'] != null) {
      blogs = <BlogsDetails>[];
      json['blogs'].forEach((v) {
        blogs.add(BlogsDetails.fromJson(v));
      });
    }
    baseUrl = json['base_url'] ?? "";
    imgLink = json['img_link'] ?? "";
  }
}

class BlogsDetails {
  late String name;
  late String subTitle;
  late String detailBannerImage;
  late String detailPageImage;
  late String authorImage;
  late String thumbBlog;
  late String blogLongDesc;
  late String blogShortDesc;
  late String date;
  late String auhtorDesc;

  BlogsDetails(
      {required this.name,
        required this.subTitle,
        required this.detailBannerImage,
        required this.detailPageImage,
        required this.authorImage,
        required this.thumbBlog,
        required this.blogLongDesc,
        required this.blogShortDesc,
        required this.date,
        required this.auhtorDesc});

  BlogsDetails.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    subTitle = json['sub_title'];
    detailBannerImage = json['detail_banner_image'];
    detailPageImage = json['detail_page_image'];
    authorImage = json['author_image'];
    thumbBlog = json['thumb_blog'];
    blogLongDesc = json['blog_long_desc'];
    blogShortDesc = json['blog_short_desc'];
    date = json['date'];
    auhtorDesc = json['auhtor_desc'];
  }  }
