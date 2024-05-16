// ignore_for_file: public_member_api_docs, sort_constructors_first
class Mylost {
  String? name;
  String? address;
  List<String>? img;
  int? phoneNumber;
  String? email;
  int? age;
  String? id;

  Mylost(
      {this.name,
      this.address,
      this.img,
      this.phoneNumber,
      this.email,
      this.age,
      this.id});

  Mylost.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    address = json['address'];
    img = json['img'].cast<String>();
    phoneNumber = json['phoneNumber'];
    email = json['email'];
    age = json['age'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['address'] = this.address;
    data['img'] = this.img;
    data['phoneNumber'] = this.phoneNumber;
    data['email'] = this.email;
    data['age'] = this.age;
    data['id'] = this.id;
    return data;
  }
}
