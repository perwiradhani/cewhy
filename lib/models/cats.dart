
class Cats {
  final int? id;
  final String name;
  final String age;
  final String photo;

  const Cats({this.id, required this.name, required this.age, required this.photo});
  Map<String, dynamic> toList() {
    return {'id': id, 'name': name, 'age': age,'photo': photo };
  }

  @override
  String toString() {
   return "{'id': id, 'name': name, 'age': age,'photo': photo }";
  }
}
