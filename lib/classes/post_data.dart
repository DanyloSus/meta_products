class PostData {
  PostData({
    required String postsImage,
    required String postsDescription,
    required String usersName,
    required int postsLikes,
    required int postsComments,
  }) {
    image = postsImage;
    likes = postsLikes;
    comments = postsComments;
    description = postsDescription;
    username = usersName;
  }

  late final String _image;
  late final String _description;
  late final String username;
  late final int _comments;

  late int likes;

  String get image => _image;
  set image(newImage) => _image = newImage;

  String get description => _description;
  set description(newDescription) => _description = newDescription;

  // String get username => _username;
  // set username(newUsername) => _username = newUsername;

  int get comments => _comments;
  set comments(newComments) => _comments = newComments;

  void addLike() => likes += 1;
  void deleteLike() => likes -= 1;
}
