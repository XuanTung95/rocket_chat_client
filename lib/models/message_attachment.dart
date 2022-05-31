import 'dart:convert';

import 'package:collection/collection.dart';

import 'message_attachment_field.dart';

class MessageAttachment {
  String? audioUrl;
  String? authorIcon;
  String? authorLink;
  String? authorName;
  bool? collapsed;
  String? color;
  List<MessageAttachmentField>? fields;
  String? imageUrl;
  String? messageLink;
  String? text;
  String? thumbUrl;
  String? title;
  String? titleLink;
  bool? titleLinkDownload;
  DateTime? ts;
  String? videoUrl;
  int? videoSize;

  MessageAttachment({
    this.audioUrl,
    this.authorIcon,
    this.authorLink,
    this.authorName,
    this.collapsed,
    this.color,
    this.fields,
    this.imageUrl,
    this.messageLink,
    this.text,
    this.thumbUrl,
    this.title,
    this.titleLink,
    this.titleLinkDownload,
    this.ts,
    this.videoUrl,
  });

  MessageAttachment.fromJson(Map<String, dynamic> json) {
    if (json != null) {
      audioUrl = json['audio_url'];
      authorIcon = json['author_icon'];
      authorLink = json['author_link'];
      authorName = json['author_name'];
      collapsed = json['collapsed'];
      color = json['color'];

      if (json['fields'] != null) {
        List<dynamic> jsonList = json['fields'].runtimeType == String //
            ? jsonDecode(json['fields'])
            : json['fields'];
        fields = jsonList
            .where((json) => json != null)
            .map((json) => MessageAttachmentField.fromMap(json))
            .toList();
      } else {
        fields = null;
      }

      imageUrl = json['image_url'];
      messageLink = json['message_link'];
      text = json['text'];
      thumbUrl = json['thumb_url'];
      title = json['title'];
      titleLink = json['title_link'];
      titleLinkDownload = json['title_link_download'];
      ts = DateTime.parse(json['ts']);
      videoUrl = json['video_url'];
      videoSize = json['video_size'];
    }
  }

  Map<String, dynamic> toJson() => {
        'audio_url': audioUrl,
        'author_icon': authorIcon,
        'author_link': authorLink,
        'author_name': authorName,
        'collapsed': collapsed,
        'color': color,
        'fields': fields
                ?.where((json) => json != null)
                .map((field) => field.toMap())
                .toList() ??
            [],
        'image_url': imageUrl,
        'message_link': messageLink,
        'text': text,
        'thumb_url': thumbUrl,
        'title': title,
        'title_link': titleLink,
        'title_link_download': titleLinkDownload,
        'ts': ts != null ? ts!.toIso8601String() : null,
        'video_url': videoUrl,
        'video_size' : videoSize,
      };

  @override
  String toString() {
    return 'MessageAttachment{audioUrl: $audioUrl, authorIcon: $authorIcon, authorLink: $authorLink, authorName: $authorName, collapsed: $collapsed, color: $color, fields: $fields, imageUrl: $imageUrl, messageLink: $messageLink, text: $text, thumbUrl: $thumbUrl, title: $title, titleLink: $titleLink, titleLinkDownload: $titleLinkDownload, ts: $ts, videoUrl: $videoUrl}';
  }
}
