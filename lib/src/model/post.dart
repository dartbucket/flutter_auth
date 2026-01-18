class Post {
  final String name;
  final String post;

  Post({required this.name, required this.post});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(name: json['name'], post: json['post']);
  }
}
