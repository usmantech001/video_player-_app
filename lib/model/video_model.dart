class VideoModel{
  String? name;
  String? videoUrl;
  String? time;

  VideoModel({
    this.name,
    this.time,
    this.videoUrl
  });

  VideoModel.fromJson(Map<String, dynamic> json){
    {
      name = json['name'];
      videoUrl = json['videoUrl'];
      time = json['time'];
    }
  }
}