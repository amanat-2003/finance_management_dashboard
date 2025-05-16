void main(List<String> args) {
  var myMap = {
    'Name': 'Amanat Singh',
    'Age': 20,
    'City': 'Sangrur',
    'Address': [
      {
        'State': 'Punjab',
        'Area': 'Shivam Colony, Sangrur',
      },
      {
        'State': 'Chandigarh',
        'Area': 'Panjab University, Chandigarh',
      }
    ],
  };

  var obj = Person.fromJson(myMap);

  print(obj.name);
  print(obj.city);
  print(obj.age);
  print(obj.address);
  for (var addr in obj.address!) {
    print('State = ${addr.state}');
    print('Area = ${addr.area}\n');
  }
}

class Person {
  String? name;
  int? age;
  String? city;
  List<Address>? address;

  Person({
    this.name,
    this.age,
    this.city,
    this.address,
  });

  Person.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    city = json['City'];
    age = json['Age'];
    if (json['Address'] != null) {
      address = (json['Address'] as List<Map<String, dynamic>>)
          .map((addressJson) => Address.fromJson(addressJson))
          .toList();
    }
  }
}

class Address {
  String? state;
  String? area;

  Address({
    this.state,
    this.area,
  });

  Address.fromJson(Map<String, dynamic> json) {
    state = json['State'];
    area = json['Area'];
  }
}
