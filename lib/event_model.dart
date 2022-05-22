import 'package:isar/isar.dart';

part 'event_model.g.dart';

@Collection()
class EventModel {
  int id = Isar.autoIncrement;

  late String title;

  late DateTime startdate;
  late DateTime enddate;
}
