void main() {
  fetchData().then((p) => {print(p.name), print(p.userId)});
}

Future<Post> fetchData() {
  return Future.delayed(const Duration(milliseconds: 1500), () {
    return Post("post method", 101);
  });
}

class Post {
  String name;
  int userId;

  Post(this.name, this.userId);
}
