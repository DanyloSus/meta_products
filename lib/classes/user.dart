class User {
  User({
    required String usersUsername,
    required String usersImage,
    required List<String> usersSubscribers,
    required List<String> usersSubscriptions,
  }) {
    username = usersUsername;
    image = usersImage;
    subscribers = usersSubscribers;
    subscriptions = usersSubscriptions;
  }

  late String username;
  late String image;
  late List<String> subscribers;
  late List<String> subscriptions;

  void addSubscription(String newSubscription) =>
      subscriptions.add(newSubscription);
  void deleteSubscription(String subsciption) =>
      subscriptions.removeWhere((element) => element == subsciption);
}
