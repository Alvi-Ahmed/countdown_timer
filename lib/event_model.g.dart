// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetEventModelCollection on Isar {
  IsarCollection<EventModel> get eventModels => getCollection();
}

const EventModelSchema = CollectionSchema(
  name: 'EventModel',
  schema:
      '{"name":"EventModel","idName":"id","properties":[{"name":"enddate","type":"Long"},{"name":"startdate","type":"Long"},{"name":"title","type":"String"}],"indexes":[],"links":[]}',
  idName: 'id',
  propertyIds: {'enddate': 0, 'startdate': 1, 'title': 2},
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {},
  backlinkLinkNames: {},
  getId: _eventModelGetId,
  setId: _eventModelSetId,
  getLinks: _eventModelGetLinks,
  attachLinks: _eventModelAttachLinks,
  serializeNative: _eventModelSerializeNative,
  deserializeNative: _eventModelDeserializeNative,
  deserializePropNative: _eventModelDeserializePropNative,
  serializeWeb: _eventModelSerializeWeb,
  deserializeWeb: _eventModelDeserializeWeb,
  deserializePropWeb: _eventModelDeserializePropWeb,
  version: 3,
);

int? _eventModelGetId(EventModel object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _eventModelSetId(EventModel object, int id) {
  object.id = id;
}

List<IsarLinkBase> _eventModelGetLinks(EventModel object) {
  return [];
}

void _eventModelSerializeNative(
    IsarCollection<EventModel> collection,
    IsarRawObject rawObj,
    EventModel object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.enddate;
  final _enddate = value0;
  final value1 = object.startdate;
  final _startdate = value1;
  final value2 = object.title;
  final _title = IsarBinaryWriter.utf8Encoder.convert(value2);
  dynamicSize += (_title.length) as int;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeDateTime(offsets[0], _enddate);
  writer.writeDateTime(offsets[1], _startdate);
  writer.writeBytes(offsets[2], _title);
}

EventModel _eventModelDeserializeNative(IsarCollection<EventModel> collection,
    int id, IsarBinaryReader reader, List<int> offsets) {
  final object = EventModel();
  object.enddate = reader.readDateTime(offsets[0]);
  object.id = id;
  object.startdate = reader.readDateTime(offsets[1]);
  object.title = reader.readString(offsets[2]);
  return object;
}

P _eventModelDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readDateTime(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _eventModelSerializeWeb(
    IsarCollection<EventModel> collection, EventModel object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(
      jsObj, 'enddate', object.enddate.toUtc().millisecondsSinceEpoch);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(
      jsObj, 'startdate', object.startdate.toUtc().millisecondsSinceEpoch);
  IsarNative.jsObjectSet(jsObj, 'title', object.title);
  return jsObj;
}

EventModel _eventModelDeserializeWeb(
    IsarCollection<EventModel> collection, dynamic jsObj) {
  final object = EventModel();
  object.enddate = IsarNative.jsObjectGet(jsObj, 'enddate') != null
      ? DateTime.fromMillisecondsSinceEpoch(
              IsarNative.jsObjectGet(jsObj, 'enddate'),
              isUtc: true)
          .toLocal()
      : DateTime.fromMillisecondsSinceEpoch(0);
  object.id = IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity;
  object.startdate = IsarNative.jsObjectGet(jsObj, 'startdate') != null
      ? DateTime.fromMillisecondsSinceEpoch(
              IsarNative.jsObjectGet(jsObj, 'startdate'),
              isUtc: true)
          .toLocal()
      : DateTime.fromMillisecondsSinceEpoch(0);
  object.title = IsarNative.jsObjectGet(jsObj, 'title') ?? '';
  return object;
}

P _eventModelDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'enddate':
      return (IsarNative.jsObjectGet(jsObj, 'enddate') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'enddate'),
                  isUtc: true)
              .toLocal()
          : DateTime.fromMillisecondsSinceEpoch(0)) as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity)
          as P;
    case 'startdate':
      return (IsarNative.jsObjectGet(jsObj, 'startdate') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'startdate'),
                  isUtc: true)
              .toLocal()
          : DateTime.fromMillisecondsSinceEpoch(0)) as P;
    case 'title':
      return (IsarNative.jsObjectGet(jsObj, 'title') ?? '') as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _eventModelAttachLinks(IsarCollection col, int id, EventModel object) {}

extension EventModelQueryWhereSort
    on QueryBuilder<EventModel, EventModel, QWhere> {
  QueryBuilder<EventModel, EventModel, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension EventModelQueryWhere
    on QueryBuilder<EventModel, EventModel, QWhereClause> {
  QueryBuilder<EventModel, EventModel, QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<EventModel, EventModel, QAfterWhereClause> idNotEqualTo(int id) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(
        IdWhereClause.lessThan(upper: id, includeUpper: false),
      ).addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: id, includeLower: false),
      );
    } else {
      return addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: id, includeLower: false),
      ).addWhereClauseInternal(
        IdWhereClause.lessThan(upper: id, includeUpper: false),
      );
    }
  }

  QueryBuilder<EventModel, EventModel, QAfterWhereClause> idGreaterThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<EventModel, EventModel, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<EventModel, EventModel, QAfterWhereClause> idBetween(
    int lowerId,
    int upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: lowerId,
      includeLower: includeLower,
      upper: upperId,
      includeUpper: includeUpper,
    ));
  }
}

extension EventModelQueryFilter
    on QueryBuilder<EventModel, EventModel, QFilterCondition> {
  QueryBuilder<EventModel, EventModel, QAfterFilterCondition> enddateEqualTo(
      DateTime value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'enddate',
      value: value,
    ));
  }

  QueryBuilder<EventModel, EventModel, QAfterFilterCondition>
      enddateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'enddate',
      value: value,
    ));
  }

  QueryBuilder<EventModel, EventModel, QAfterFilterCondition> enddateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'enddate',
      value: value,
    ));
  }

  QueryBuilder<EventModel, EventModel, QAfterFilterCondition> enddateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'enddate',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<EventModel, EventModel, QAfterFilterCondition> idEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<EventModel, EventModel, QAfterFilterCondition> idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<EventModel, EventModel, QAfterFilterCondition> idLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<EventModel, EventModel, QAfterFilterCondition> idBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'id',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<EventModel, EventModel, QAfterFilterCondition> startdateEqualTo(
      DateTime value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'startdate',
      value: value,
    ));
  }

  QueryBuilder<EventModel, EventModel, QAfterFilterCondition>
      startdateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'startdate',
      value: value,
    ));
  }

  QueryBuilder<EventModel, EventModel, QAfterFilterCondition> startdateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'startdate',
      value: value,
    ));
  }

  QueryBuilder<EventModel, EventModel, QAfterFilterCondition> startdateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'startdate',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<EventModel, EventModel, QAfterFilterCondition> titleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'title',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EventModel, EventModel, QAfterFilterCondition> titleGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'title',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EventModel, EventModel, QAfterFilterCondition> titleLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'title',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EventModel, EventModel, QAfterFilterCondition> titleBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'title',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EventModel, EventModel, QAfterFilterCondition> titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'title',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EventModel, EventModel, QAfterFilterCondition> titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'title',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EventModel, EventModel, QAfterFilterCondition> titleContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'title',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EventModel, EventModel, QAfterFilterCondition> titleMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'title',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension EventModelQueryLinks
    on QueryBuilder<EventModel, EventModel, QFilterCondition> {}

extension EventModelQueryWhereSortBy
    on QueryBuilder<EventModel, EventModel, QSortBy> {
  QueryBuilder<EventModel, EventModel, QAfterSortBy> sortByEnddate() {
    return addSortByInternal('enddate', Sort.asc);
  }

  QueryBuilder<EventModel, EventModel, QAfterSortBy> sortByEnddateDesc() {
    return addSortByInternal('enddate', Sort.desc);
  }

  QueryBuilder<EventModel, EventModel, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<EventModel, EventModel, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<EventModel, EventModel, QAfterSortBy> sortByStartdate() {
    return addSortByInternal('startdate', Sort.asc);
  }

  QueryBuilder<EventModel, EventModel, QAfterSortBy> sortByStartdateDesc() {
    return addSortByInternal('startdate', Sort.desc);
  }

  QueryBuilder<EventModel, EventModel, QAfterSortBy> sortByTitle() {
    return addSortByInternal('title', Sort.asc);
  }

  QueryBuilder<EventModel, EventModel, QAfterSortBy> sortByTitleDesc() {
    return addSortByInternal('title', Sort.desc);
  }
}

extension EventModelQueryWhereSortThenBy
    on QueryBuilder<EventModel, EventModel, QSortThenBy> {
  QueryBuilder<EventModel, EventModel, QAfterSortBy> thenByEnddate() {
    return addSortByInternal('enddate', Sort.asc);
  }

  QueryBuilder<EventModel, EventModel, QAfterSortBy> thenByEnddateDesc() {
    return addSortByInternal('enddate', Sort.desc);
  }

  QueryBuilder<EventModel, EventModel, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<EventModel, EventModel, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<EventModel, EventModel, QAfterSortBy> thenByStartdate() {
    return addSortByInternal('startdate', Sort.asc);
  }

  QueryBuilder<EventModel, EventModel, QAfterSortBy> thenByStartdateDesc() {
    return addSortByInternal('startdate', Sort.desc);
  }

  QueryBuilder<EventModel, EventModel, QAfterSortBy> thenByTitle() {
    return addSortByInternal('title', Sort.asc);
  }

  QueryBuilder<EventModel, EventModel, QAfterSortBy> thenByTitleDesc() {
    return addSortByInternal('title', Sort.desc);
  }
}

extension EventModelQueryWhereDistinct
    on QueryBuilder<EventModel, EventModel, QDistinct> {
  QueryBuilder<EventModel, EventModel, QDistinct> distinctByEnddate() {
    return addDistinctByInternal('enddate');
  }

  QueryBuilder<EventModel, EventModel, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<EventModel, EventModel, QDistinct> distinctByStartdate() {
    return addDistinctByInternal('startdate');
  }

  QueryBuilder<EventModel, EventModel, QDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('title', caseSensitive: caseSensitive);
  }
}

extension EventModelQueryProperty
    on QueryBuilder<EventModel, EventModel, QQueryProperty> {
  QueryBuilder<EventModel, DateTime, QQueryOperations> enddateProperty() {
    return addPropertyNameInternal('enddate');
  }

  QueryBuilder<EventModel, int, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<EventModel, DateTime, QQueryOperations> startdateProperty() {
    return addPropertyNameInternal('startdate');
  }

  QueryBuilder<EventModel, String, QQueryOperations> titleProperty() {
    return addPropertyNameInternal('title');
  }
}
