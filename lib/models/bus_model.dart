class BusSchedule {
  final int id;
  final String title;
  final List<String> times;
  final List<String> trip;

  BusSchedule(this.id, this.title, this.trip, this.times);

}

List<BusSchedule> schedules = [
  BusSchedule(0, "1", [
    "Больничный городок - ОАО \"Нафтан\"",
    "ОАО \"Нафтан\" - Больничный городок",
  ], [])
];