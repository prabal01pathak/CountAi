class ImageOutput{
  int? count;
  String? image;

  ImageOutput({
    this.count,
    this.image});

  factory ImageOutput.fromJson(Map<String,dynamic> json)
  {
    return ImageOutput(
        count: json['count'],
        image:json['image']
    );

  }
}