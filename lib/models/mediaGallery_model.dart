class MediaGallery {
  int id;
  String file;

  MediaGallery({
    required this.id,
    required this.file,
  });

  factory MediaGallery.fromJson(Map<String, dynamic> json) {
    return MediaGallery(id: json['id'], file: json['file']);
  }
}
