import 'package:gals_app/generated/json/base/json_convert_content.dart';
import 'package:gals_app/api/model/google_calendar_response.dart';

GoogleCalendarResponseEntity $GoogleCalenderEntityFromJson(
    Map<String, dynamic> json) {
  final GoogleCalendarResponseEntity GoogleCalenderEntity =
      GoogleCalendarResponseEntity();
  final String? kind = jsonConvert.convert<String>(json['kind']);
  if (kind != null) {
    GoogleCalenderEntity.kind = kind;
  }
  final String? etag = jsonConvert.convert<String>(json['etag']);
  if (etag != null) {
    GoogleCalenderEntity.etag = etag;
  }
  final String? summary = jsonConvert.convert<String>(json['summary']);
  if (summary != null) {
    GoogleCalenderEntity.summary = summary;
  }
  final DateTime? updated = jsonConvert.convert<DateTime>(json['updated']);
  if (updated != null) {
    GoogleCalenderEntity.updated = updated;
  }
  final String? timeZone = jsonConvert.convert<String>(json['timeZone']);
  if (timeZone != null) {
    GoogleCalenderEntity.timeZone = timeZone;
  }
  final String? accessRole = jsonConvert.convert<String>(json['accessRole']);
  if (accessRole != null) {
    GoogleCalenderEntity.accessRole = accessRole;
  }
  final List<dynamic>? defaultReminders =
      jsonConvert.convertListNotNull<dynamic>(json['defaultReminders']);
  if (defaultReminders != null) {
    GoogleCalenderEntity.defaultReminders = defaultReminders;
  }
  final String? nextPageToken =
      jsonConvert.convert<String>(json['nextPageToken']);
  if (nextPageToken != null) {
    GoogleCalenderEntity.nextPageToken = nextPageToken;
  }
  final List<GoogleCalendarItems>? items =
      jsonConvert.convertListNotNull<GoogleCalendarItems>(json['items']);
  if (items != null) {
    GoogleCalenderEntity.items = items;
  }
  return GoogleCalenderEntity;
}

Map<String, dynamic> $GoogleCalenderEntityToJson(
    GoogleCalendarResponseEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['kind'] = entity.kind;
  data['etag'] = entity.etag;
  data['summary'] = entity.summary;
  data['updated'] = entity.updated;
  data['timeZone'] = entity.timeZone;
  data['accessRole'] = entity.accessRole;
  data['defaultReminders'] = entity.defaultReminders;
  data['nextPageToken'] = entity.nextPageToken;
  data['items'] = entity.items?.map((v) => v.toJson()).toList();
  return data;
}

GoogleCalendarItems $AaaItemsFromJson(Map<String, dynamic> json) {
  final GoogleCalendarItems GoogleCalendarItem = GoogleCalendarItems();
  final String? kind = jsonConvert.convert<String>(json['kind']);
  if (kind != null) {
    GoogleCalendarItem.kind = kind;
  }
  final String? etag = jsonConvert.convert<String>(json['etag']);
  if (etag != null) {
    GoogleCalendarItem.etag = etag;
  }
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    GoogleCalendarItem.id = id;
  }
  final String? status = jsonConvert.convert<String>(json['status']);
  if (status != null) {
    GoogleCalendarItem.status = status;
  }
  final String? htmlLink = jsonConvert.convert<String>(json['htmlLink']);
  if (htmlLink != null) {
    GoogleCalendarItem.htmlLink = htmlLink;
  }
  final String? created = jsonConvert.convert<String>(json['created']);
  if (created != null) {
    GoogleCalendarItem.created = created;
  }
  final DateTime? updated = jsonConvert.convert<DateTime>(json['updated']);
  if (updated != null) {
    GoogleCalendarItem.updated = updated;
  }
  final String? summary = jsonConvert.convert<String>(json['summary']);
  if (summary != null) {
    GoogleCalendarItem.summary = summary;
  }
  final String? description = jsonConvert.convert<String>(json['description']);
  if (description != null) {
    GoogleCalendarItem.description = description;
  }
  final GoogleCalendarItemsCreator? creator =
      jsonConvert.convert<GoogleCalendarItemsCreator>(json['creator']);
  if (creator != null) {
    GoogleCalendarItem.creator = creator;
  }
  final GoogleCalendarItemsOrganizer? organizer =
      jsonConvert.convert<GoogleCalendarItemsOrganizer>(json['organizer']);
  if (organizer != null) {
    GoogleCalendarItem.organizer = organizer;
  }
  final GoogleCalendarItemsStart? start =
      jsonConvert.convert<GoogleCalendarItemsStart>(json['start']);
  if (start != null) {
    GoogleCalendarItem.start = start;
  }
  final GoogleCalendarItemsEnd? end =
      jsonConvert.convert<GoogleCalendarItemsEnd>(json['end']);
  if (end != null) {
    GoogleCalendarItem.end = end;
  }
  final String? transparency =
      jsonConvert.convert<String>(json['transparency']);
  if (transparency != null) {
    GoogleCalendarItem.transparency = transparency;
  }
  final String? iCalUID = jsonConvert.convert<String>(json['iCalUID']);
  if (iCalUID != null) {
    GoogleCalendarItem.iCalUID = iCalUID;
  }
  final int? sequence = jsonConvert.convert<int>(json['sequence']);
  if (sequence != null) {
    GoogleCalendarItem.sequence = sequence;
  }
  final GoogleCalendarItemsItemsReminders? reminders =
      jsonConvert.convert<GoogleCalendarItemsItemsReminders>(json['reminders']);
  if (reminders != null) {
    GoogleCalendarItem.reminders = reminders;
  }
  final String? eventType = jsonConvert.convert<String>(json['eventType']);
  if (eventType != null) {
    GoogleCalendarItem.eventType = eventType;
  }
  return GoogleCalendarItem;
}

Map<String, dynamic> $AaaItemsToJson(GoogleCalendarItems entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['kind'] = entity.kind;
  data['etag'] = entity.etag;
  data['id'] = entity.id;
  data['status'] = entity.status;
  data['htmlLink'] = entity.htmlLink;
  data['created'] = entity.created;
  data['updated'] = entity.updated;
  data['summary'] = entity.summary;
  data['description'] = entity.description;
  data['creator'] = entity.creator?.toJson();
  data['organizer'] = entity.organizer?.toJson();
  data['start'] = entity.start?.toJson();
  data['end'] = entity.end?.toJson();
  data['transparency'] = entity.transparency;
  data['iCalUID'] = entity.iCalUID;
  data['sequence'] = entity.sequence;
  data['reminders'] = entity.reminders?.toJson();
  data['eventType'] = entity.eventType;
  return data;
}

GoogleCalendarItemsCreator $AaaItemsCreatorFromJson(Map<String, dynamic> json) {
  final GoogleCalendarItemsCreator aaaItemsCreator =
      GoogleCalendarItemsCreator();
  final String? email = jsonConvert.convert<String>(json['email']);
  if (email != null) {
    aaaItemsCreator.email = email;
  }
  return aaaItemsCreator;
}

Map<String, dynamic> $AaaItemsCreatorToJson(GoogleCalendarItemsCreator entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['email'] = entity.email;
  return data;
}

GoogleCalendarItemsOrganizer $AaaItemsOrganizerFromJson(
    Map<String, dynamic> json) {
  final GoogleCalendarItemsOrganizer aaaItemsOrganizer =
      GoogleCalendarItemsOrganizer();
  final String? email = jsonConvert.convert<String>(json['email']);
  if (email != null) {
    aaaItemsOrganizer.email = email;
  }
  final String? displayName = jsonConvert.convert<String>(json['displayName']);
  if (displayName != null) {
    aaaItemsOrganizer.displayName = displayName;
  }
  final bool? self = jsonConvert.convert<bool>(json['self']);
  if (self != null) {
    aaaItemsOrganizer.self = self;
  }
  return aaaItemsOrganizer;
}

Map<String, dynamic> $AaaItemsOrganizerToJson(
    GoogleCalendarItemsOrganizer entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['email'] = entity.email;
  data['displayName'] = entity.displayName;
  data['self'] = entity.self;
  return data;
}

GoogleCalendarItemsStart $AaaItemsStartFromJson(Map<String, dynamic> json) {
  final GoogleCalendarItemsStart GoogleCalendarItemTimeStart =
      GoogleCalendarItemsStart();
  final DateTime? date = jsonConvert.convert<DateTime>(json['date']);
  if (date != null) {
    GoogleCalendarItemTimeStart.date = date;
  }
  return GoogleCalendarItemTimeStart;
}

Map<String, dynamic> $AaaItemsStartToJson(GoogleCalendarItemsStart entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['date'] = entity.date;
  return data;
}

GoogleCalendarItemsEnd $AaaItemsEndFromJson(Map<String, dynamic> json) {
  final GoogleCalendarItemsEnd GoogleCalendarItemTimeEnd =
      GoogleCalendarItemsEnd();
  final DateTime? date = jsonConvert.convert<DateTime>(json['date']);
  if (date != null) {
    GoogleCalendarItemTimeEnd.date = date;
  }
  return GoogleCalendarItemTimeEnd;
}

Map<String, dynamic> $AaaItemsEndToJson(GoogleCalendarItemsEnd entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['date'] = entity.date;
  return data;
}

GoogleCalendarItemsItemsReminders $AaaItemsRemindersFromJson(
    Map<String, dynamic> json) {
  final GoogleCalendarItemsItemsReminders aaaItemsReminders =
      GoogleCalendarItemsItemsReminders();
  final bool? useDefault = jsonConvert.convert<bool>(json['useDefault']);
  if (useDefault != null) {
    aaaItemsReminders.useDefault = useDefault;
  }
  return aaaItemsReminders;
}

Map<String, dynamic> $AaaItemsRemindersToJson(
    GoogleCalendarItemsItemsReminders entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['useDefault'] = entity.useDefault;
  return data;
}
