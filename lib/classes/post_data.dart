class PostData {
  PostData({
    required bool isPostAnswer,
    required String postsDescription,
    required String usersName,
    required int postsLikes,
    required String postsTime,
    required List<PostData> postsComments,
  }) {
    isAnswer = isPostAnswer;
    likes = postsLikes;
    comments = postsComments;
    description = postsDescription;
    username = usersName;
    time = postsTime;
  }

  late final bool _isAnswer;
  late final String _description;
  late final String _time;
  late final String username;
  late final List<PostData> _comments;

  late int likes;

  String get description => _description;
  set description(newDescription) => _description = newDescription;

  String get time => _time;
  set time(newTime) => _time = newTime;

  bool get isAnswer => _isAnswer;
  set isAnswer(newIsAnswer) => _isAnswer = newIsAnswer;

  // String get username => _username;
  // set username(newUsername) => _username = newUsername;

  List<PostData> get comments => _comments;
  set comments(newComments) => _comments = newComments;

  void addLike() => likes += 1;
  void deleteLike() => likes -= 1;
}
