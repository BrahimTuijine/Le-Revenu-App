import 'dart:convert';

VideoShortsPlayerEntity videoShortsPlayerEntityFromJson(String str) => VideoShortsPlayerEntity.fromJson(json.decode(str));

String videoShortsPlayerEntityToJson(VideoShortsPlayerEntity data) => json.encode(data.toJson());

class VideoShortsPlayerEntity {
    VideoShortsPlayerEntity();

    factory VideoShortsPlayerEntity.fromJson(Map<String, dynamic> json) => VideoShortsPlayerEntity(
    );

    Map<String, dynamic> toJson() => {
    };
}
