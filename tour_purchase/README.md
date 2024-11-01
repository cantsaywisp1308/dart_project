A sample command-line application with an entrypoint in `bin/`, library code
in `lib/`, and example unit test in `test/`.

Purpose/idea of the program: 
- The program is design to 
    - Bring useful information to the tourists
    - Help the travel agency manage their trips/tours sold to the tourists
    - To the programmer, this app is the application of the knowledge about Dart programming language

After changing the directoty to folder "trinh_duy_khang/tour_purchase", command to run the program: "dart .\bin\profile.dart"


![image](https://github.com/user-attachments/assets/84a668ae-169b-460e-ae79-f30cf30518ba)

There are 5 classes: Tourist, Tour, Agency, Place and Profile

Class Profile
    - Class profile contains the information of other inherited class (Tourist and Agency), including name, address, phone and email
    - This class has updateProfile() function, which helps tourists and agency changes their profile.
    
```
class Profile {
  String name;
  String address;
  String phone;
  String email;

  Profile({
    required this.name,
    required this.address,
    required this.phone,
    required this.email,
  });

  Profile updateProfile(
      String newName, String newAddress, String newEmail, String newPhone) {
    name = newName;
    address = newAddress;
    email = newEmail;
    phone = newPhone;
    return this;
  }
}
```

Class Tourist
    - Class Tourist inherits (or extends) from class Profile. It has 3 extra attributes: touristID, score and tours.
    - This class also has function reduce(), which is used to calculate how much the tourist got reduced price based on the score they accumulated.
	
```
import 'profile.dart';
import 'tour.dart';

List<Tourist> tourists = [];

class Tourist extends Profile with TouristMixin {
  Tourist({
    required super.name,
    required super.address,
    required super.phone,
    required super.email,
    required this.touristID,
    required this.score,
    required this.tours,
  });

  String touristID;
  double score;
  final List<Tour> tours;

  double reduce() {
    // Simplified with a more readable discount calculation
    return (score >= 2000)
        ? 0.1
        : (score >= 1000)
            ? 0.05
            : 0.0;
  }
}
```

- There is an extension TouristExtension, which contains function printInfo() that helps toursist check their information

```
extension TouristExtension on Tourist {
  void printInfo() {
    print(touristID);
    print(name);
    print(address);
    print(phone);
    print(email);
    print("Reduced rate: ${reduce()}");
  }
}
```

- There is a mixin TouristMixin that store a function/action, here is the buyTour action 
 
```
mixin TouristMixin {
  void buyTour(Tour tour) {
    if (this is Tourist) {
      (this as Tourist).score += tour.placeName.score;
      (this as Tourist).tours.add(tour);
    }
  }
}
```

Class Agency
    - Class Tourist inherits (or extends) from class Profile. It has 3 extra attributes: agencyID, totalMoney and allToursSold.
    - The attribute totalMoney is the total money the agency receives from the tourist when buying a tour.
    - The allToursSold lists all the tours that the sold.
```
import 'tourist.dart';
import 'tour.dart';
import 'profile.dart';

class Agency extends Profile with AgencyMixin {
  Agency({
    required super.name,
    required super.address,
    required super.phone,
    required super.email,
    required this.agencyID,
    required this.totalMoney,
    required this.allToursSold,
  });

  String agencyID;
  double totalMoney;
  List<Tour> allToursSold;
}
```

- We have a mixin for class Agency - AgencyMixin that stores actions of an agency. Here it just store one action sellTour 

```
mixin AgencyMixin {
  void sellTour(Tour tour) {
    if (this is Agency) {
      Tourist touristSearch =
          tourists.firstWhere((tourist) => tourist.touristID == tour.guestID);
      print(
          "${(this as Agency).name} sold tour ${tour.tourID} to ${touristSearch.name}");
      (this as Agency).totalMoney += (1 - touristSearch.reduce()) * tour.value;
      (this as Agency).allToursSold.add(tour);
      print("Agency money is now: ${(this as Agency).totalMoney}");
    }
  }
}
```

Class Place
    - Class Place has 4 attributes: name, address, description and score. This class is created to bring information to the users, for example, mainly the description and score accumulated when visiting.

```
 class Place {
  final String name;
  final String address;
  final String description;
  final double score;

  Place({
    required this.name,
    required this.address,
    required this.description,
    required this.score,
  });
}
```

 Class Tour
 	- Class Tour has information and attributes about a tour requested from a tourist
```
import 'place.dart';

class Tour {
  final String tourID;
  final Place placeName;
  final String guestID;
  final double value;
  final DateTime departure;
  final DateTime end;

  Tour(
    this.placeName,
    this.guestID,
    this.value,
    this.departure,
    this.end, {
    required this.tourID,
  });
}
```



Additionally, there is an extension that help the tourist output their own information. 
If the tourists find there is a wrong piece of information, they can use updateProfile() function to update their profile.

The program runs by activating the main.dart

Explain how the main works:
- Assume that we have 2 lists of places and tourists (The list of tourist is already in the Tourist class). This might be seen as the database tables.

```
List<Place> places = [];
```

- We have 2 first places here, New York and Seattle
- These 2 places are added to the List of Places
```
void main() {
  Place newYork = Place(
      name: 'New York',
      address: 'United States',
      description: 'Best city in the East',
      score: 120);

  places.add(newYork);

  Place seattle = Place(
      name: 'Seattle',
      address: 'Washington State',
      description: 'Best city in the West',
      score: 100);
  places.add(seattle);
```

- We also have 2 tourists here: James Hall and Mimi Angelito with their own information.
- These 2 tourists are added to the List of Tourists.

```
  Tourist jamesHall = Tourist(
    touristID: "tourist_123",
    name: 'James Hall',
    address: 'Las Vegas, NV',
    phone: "5551110000",
    email: 'jh@nytimes.com',
    score: 0,
    tours: [],
  );

  Tourist mimiAngelito = Tourist(
    touristID: "tourist_124",
    name: 'Mimi Angelito',
    address: 'Los Angeles, CA',
    phone: "5551110001",
    email: 'mimi@latimes.com',
    score: 0,
    tours: [],
  );
  tourists.add(mimiAngelito);
  tourists.add(jamesHall);
```

- We have an agency who will sell the tours/trips to the tourists.
-There are two tours performed by these 2 tourists. Mimi wants a trip to New York while James wants a tour to Seattle. 

```
  Agency agencyA = Agency(
    agencyID: "agen_123",
    name: "AgencyA",
    address: "San Jose, CA",
    phone: '3126190546',
    email: "email@email.com",
    totalMoney: 100,
    allToursSold: [],
  );

  Tour tourToNewYork = Tour(
    newYork,
    mimiAngelito.touristID,
    500.0,
    DateTime.now(),
    DateTime.now().add(Duration(days: 5)),
    tourID: "NYC_123",
  );

  Tour tourToSeatle = Tour(
    seattle,
    jamesHall.touristID,
    400.0,
    DateTime.parse('2024-10-12'),
    DateTime.parse('2024-10-12').add(Duration(days: 5)),
    tourID: "SEA_012",
  );

  jamesHall.buyTour(tourToSeatle);
  print("James Hall's score:  ${jamesHall.score}");
  print(
      "James Hall's tours: ${jamesHall.tours.map((tour) => tour.tourID).toList()}");

  mimiAngelito.buyTour(tourToNewYork);
  print("Mimi's new score: ${mimiAngelito.score}");
  print(
      "Mimi's tours: ${mimiAngelito.tours.map((tour) => tour.tourID).toList()}");
```

  - When the 2 tourists click Buy a tour. The function buyTour() in each tourist will be done. The tours are sold by agencyA. The accumulated score and history of buying tours in the program will be updated.  
- When selling the tours, agencyA totalMoney will also changes each time it sells the tour. 

```
  agencyA.sellTour(tourToNewYork);

  agencyA.sellTour(tourToSeatle);

  print(
      "All tours sold: ${agencyA.allToursSold.map((tour) => tour.tourID).toList()}");
```

- Mimi later updated her personal information, from her name “Mimi Angelito” to “Mimi Kess” and she moves from Los Angeles to the Netherlands. Her information is updated and shown by the function printInfo()

```
  mimiAngelito.updateProfile(
      "Mimi Kess", "Netherlands", "mimi@latimes.com", "5561231900");
  //print(mimi_Angelito.address);
  mimiAngelito.printInfo();
}
```






