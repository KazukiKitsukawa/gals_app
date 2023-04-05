import 'package:gals_app/generated/json/base/json_field.dart';
import 'package:gals_app/api/model/google_calendar_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class GoogleCalendarResponseEntity {
  String? kind;
  String? etag;
  String? summary;
  DateTime? updated;
  String? timeZone;
  String? accessRole;
  List<dynamic>? defaultReminders;
  String? nextPageToken;
  List<GoogleCalendarItems>? items;

  GoogleCalendarResponseEntity();

  factory GoogleCalendarResponseEntity.fromJson(Map<String, dynamic> json) =>
      $GoogleCalenderEntityFromJson(json);

  Map<String, dynamic> toJson() => $GoogleCalenderEntityToJson(this);

  GoogleCalendarResponseEntity copyWith(
      {String? kind,
      String? etag,
      String? summary,
      DateTime? updated,
      String? timeZone,
      String? accessRole,
      List<dynamic>? defaultReminders,
      String? nextPageToken,
      List<GoogleCalendarItems>? items}) {
    return GoogleCalendarResponseEntity()
      ..kind = kind ?? this.kind
      ..etag = etag ?? this.etag
      ..summary = summary ?? this.summary
      ..updated = updated ?? this.updated
      ..timeZone = timeZone ?? this.timeZone
      ..accessRole = accessRole ?? this.accessRole
      ..defaultReminders = defaultReminders ?? this.defaultReminders
      ..nextPageToken = nextPageToken ?? this.nextPageToken
      ..items = items ?? this.items;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class GoogleCalendarItems {
  String? kind;
  String? etag;
  String? id;
  String? status;
  String? htmlLink;
  String? created;
  DateTime? updated;
  String? summary;
  String? description;
  GoogleCalendarItemsCreator? creator;
  GoogleCalendarItemsOrganizer? organizer;
  GoogleCalendarItemsStart? start;
  GoogleCalendarItemsEnd? end;
  String? transparency;
  String? iCalUID;
  int? sequence;
  GoogleCalendarItemsItemsReminders? reminders;
  String? eventType;

  GoogleCalendarItems();

  factory GoogleCalendarItems.fromJson(Map<String, dynamic> json) =>
      $AaaItemsFromJson(json);

  Map<String, dynamic> toJson() => $AaaItemsToJson(this);

  GoogleCalendarItems copyWith(
      {String? kind,
      String? etag,
      String? id,
      String? status,
      String? htmlLink,
      String? created,
      DateTime? updated,
      String? summary,
      String? description,
      GoogleCalendarItemsCreator? creator,
      GoogleCalendarItemsOrganizer? organizer,
      GoogleCalendarItemsStart? start,
      GoogleCalendarItemsEnd? end,
      String? transparency,
      String? iCalUID,
      int? sequence,
      GoogleCalendarItemsItemsReminders? reminders,
      String? eventType}) {
    return GoogleCalendarItems()
      ..kind = kind ?? this.kind
      ..etag = etag ?? this.etag
      ..id = id ?? this.id
      ..status = status ?? this.status
      ..htmlLink = htmlLink ?? this.htmlLink
      ..created = created ?? this.created
      ..updated = updated ?? this.updated
      ..summary = summary ?? this.summary
      ..description = description ?? this.description
      ..creator = creator ?? this.creator
      ..organizer = organizer ?? this.organizer
      ..start = start ?? this.start
      ..end = end ?? this.end
      ..transparency = transparency ?? this.transparency
      ..iCalUID = iCalUID ?? this.iCalUID
      ..sequence = sequence ?? this.sequence
      ..reminders = reminders ?? this.reminders
      ..eventType = eventType ?? this.eventType;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class GoogleCalendarItemsCreator {
  String? email;

  GoogleCalendarItemsCreator();

  factory GoogleCalendarItemsCreator.fromJson(Map<String, dynamic> json) =>
      $AaaItemsCreatorFromJson(json);

  Map<String, dynamic> toJson() => $AaaItemsCreatorToJson(this);

  GoogleCalendarItemsCreator copyWith({String? email}) {
    return GoogleCalendarItemsCreator()..email = email ?? this.email;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class GoogleCalendarItemsOrganizer {
  String? email;
  String? displayName;
  bool? self;

  GoogleCalendarItemsOrganizer();

  factory GoogleCalendarItemsOrganizer.fromJson(Map<String, dynamic> json) =>
      $AaaItemsOrganizerFromJson(json);

  Map<String, dynamic> toJson() => $AaaItemsOrganizerToJson(this);

  GoogleCalendarItemsOrganizer copyWith(
      {String? email, String? displayName, bool? self}) {
    return GoogleCalendarItemsOrganizer()
      ..email = email ?? this.email
      ..displayName = displayName ?? this.displayName
      ..self = self ?? this.self;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class GoogleCalendarItemsStart {
  DateTime? date;

  GoogleCalendarItemsStart();

  factory GoogleCalendarItemsStart.fromJson(Map<String, dynamic> json) =>
      $AaaItemsStartFromJson(json);

  Map<String, dynamic> toJson() => $AaaItemsStartToJson(this);

  GoogleCalendarItemsStart copyWith({DateTime? date}) {
    return GoogleCalendarItemsStart()..date = date ?? this.date;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class GoogleCalendarItemsEnd {
  DateTime? date;

  GoogleCalendarItemsEnd();

  factory GoogleCalendarItemsEnd.fromJson(Map<String, dynamic> json) =>
      $AaaItemsEndFromJson(json);

  Map<String, dynamic> toJson() => $AaaItemsEndToJson(this);

  GoogleCalendarItemsEnd copyWith({DateTime? date}) {
    return GoogleCalendarItemsEnd()..date = date ?? this.date;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class GoogleCalendarItemsItemsReminders {
  bool? useDefault;

  GoogleCalendarItemsItemsReminders();

  factory GoogleCalendarItemsItemsReminders.fromJson(
          Map<String, dynamic> json) =>
      $AaaItemsRemindersFromJson(json);

  Map<String, dynamic> toJson() => $AaaItemsRemindersToJson(this);

  GoogleCalendarItemsItemsReminders copyWith({bool? useDefault}) {
    return GoogleCalendarItemsItemsReminders()
      ..useDefault = useDefault ?? this.useDefault;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}
