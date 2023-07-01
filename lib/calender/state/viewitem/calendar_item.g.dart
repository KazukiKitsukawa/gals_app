// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CalendarItem _$$_CalendarItemFromJson(Map<String, dynamic> json) =>
    _$_CalendarItem(
      title: json['title'] as String,
      link: json['link'] as String,
      updated: DateTime.parse(json['updated'] as String),
      eventStart: DateTime.parse(json['eventStart'] as String),
      eventEnd: DateTime.parse(json['eventEnd'] as String),
      description: json['description'] as String,
      calendarEventDate:
          (json['calendarEventDate'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(DateTime.parse(k), e as List<dynamic>),
      ),
    );

Map<String, dynamic> _$$_CalendarItemToJson(_$_CalendarItem instance) =>
    <String, dynamic>{
      'title': instance.title,
      'link': instance.link,
      'updated': instance.updated.toIso8601String(),
      'eventStart': instance.eventStart.toIso8601String(),
      'eventEnd': instance.eventEnd.toIso8601String(),
      'description': instance.description,
      'calendarEventDate': instance.calendarEventDate
          .map((k, e) => MapEntry(k.toIso8601String(), e)),
    };
