class CommentModel {

  final int id;
  final String name;
  final String body;
  final String email;

  CommentModel({
    required this.id,
    required this.name,
    required this.body,
    required this.email,
  });

  factory CommentModel.fromJson(Map<String, dynamic> json) {

    return CommentModel(
      id: json['id'],
      name: json['name'],
      body: json['body'],
      email: json['email'],
    );
  }
}