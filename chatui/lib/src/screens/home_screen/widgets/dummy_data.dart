class User {
  String name;
  List<String> messages;
  String profileImage;
  User(
      {required this.name, required this.messages, required this.profileImage});
}

List<User> dData = [
  User(messages: ["a", "b"], name: "hello", profileImage: "sdfs"),
  User(messages: ["a", "b"], name: "dfsd", profileImage: "sdfs"),
  User(messages: ["a", "b"], name: "hell4324o", profileImage: "sdfs"),
  User(messages: ["a", "b"], name: "helrewlo", profileImage: "sdfs"),
  User(messages: ["a", "b"], name: "hello", profileImage: "sdfs"),
  User(messages: ["a", "b"], name: "dfsd", profileImage: "sdfs"),
  User(messages: ["a", "b"], name: "helrlo", profileImage: "sdfs"),
];
