import 'show_mixin.dart';

class Student with ShowMixin {
  String _fullName = '';
  DateTime _dateOfAdmission = new DateTime.now();
  double _GPA = 0;

  String get fullName => this._fullName;
  DateTime get dateOfAdmission => this._dateOfAdmission;
  double get GPA => this._GPA;

  Student({required String fullName, required DateTime dateOfAdmission, required double GPA}) {
    this._fullName = fullName;
    this._dateOfAdmission = dateOfAdmission;
    this._GPA = GPA;
  }

  @override
  String toString() {
    return 'Student (FullName: $_fullName, DateOfAddmission: $_dateOfAdmission, GPA: $GPA)';
  }
}

class GroupOfStudents with ShowMixin {
  List<Student> _group = [];
  double _lowerGPALimit = 2;
  double _higherGPALimit = 4;

  double get lowerGPALimit => this._lowerGPALimit;
  double get higherGPALimit => this._higherGPALimit;

  bool _checkGPA(Student student) {
    return student.GPA >= this._lowerGPALimit && student.GPA <= this._higherGPALimit;
  }

  void add(Student student) {
    this._checkGPA(student) ? 
      this._group.add(student) : 
      print("Student's GPA must be in [$_lowerGPALimit, $_higherGPALimit]");
  }

  Student? findByFullName(String fullName) {
    return this._group.firstWhere((student) => student.fullName.contains(fullName));
  }

  List<Student> findManyByGPA({double? start, double? end}) {
    return this._group.where((student) => (start == null || student.GPA >= start) && (end == null || student.GPA <= end)).toList();
  }

  @override
  String toString() {
    return 'Group [\n    ${this._group.join(',\n    ')}\n]';
  }
}