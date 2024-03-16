class User {
  User(this.username, this.image, this.subscribers, this.subscriptions);

  final String username;
  final String image;
  final List<String> subscribers;
  final List<String> subscriptions;

  void addSubscription(String newSubscription) =>
      subscriptions.add(newSubscription);
  void deleteSubscription(String subsciption) =>
      subscriptions.removeWhere((element) => element == subsciption);
}
