class Post {

int userId;
int id;
String title;
String body;

Post ({
required this.userId,
required this.id,
required this.title,
required this.body,

});

factory Post.fromMap(Map<String, dynamic> map){
  return Post(
    userId: map['userId'] as int,
    id: map['id'] as int,
    title: map['title'] as String,
    body: map['body'] as String
  );
}

Map<String, dynamic> toMap(){
  return {
    'userId': userId,
    'id': id,
    'title': title,
    'body': body
  };
}

}