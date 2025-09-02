import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/user_model.dart';
import 'perfil_home.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<UserModel> users = [
    UserModel(
        name: "Sebastian Ceballos",
        age: 22,
        category: "mayor de edad",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNTvNU3d9GjxaAF9lTgx1Y6XdIouAiNV8EGQ&s",
        email: "sebastianCeballos@gmail.com",
        phone: "3001234567",
        address: "Bucaramanga, Colombia",
        bio: "Estudiante apasionado por desarrollar software."),
    UserModel(
        name: "Johan",
        age: 29,
        category: "mayor de edad",
        image: "https://avatars.githubusercontent.com/u/203928340?v=4",
        email: "Johan@gmail.com",
        phone: "3109876543",
        address: "Bogotá, Colombia",
        bio: "Profesor apasionado por enseñar."),
    UserModel(
        name: "Sandra Carvajal",
        age: 17,
        category: "menor de edad",
        image: "https://avatars.githubusercontent.com/u/199531100?v=4",
        email: "sandracarvajal@gmail.com",
        phone: "3151112233",
        address: "Medellín, Colombia",
        bio: "Desarrolladora de software y entusiasta del yoga."),
    UserModel(
        name: "Erika",
        age: 21,
        category: "mayor de edad",
        image: "https://avatars.githubusercontent.com/u/203442690?v=4",
        email: "Erika@gmail.com",
        phone: "3174455667",
        address: "Barranquilla, Colombia",
        bio: "Estudiante Apasionada por la musica y el baile"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(user.image),
              ),
              title: Text(user.name),
              subtitle: Text(user.category),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PerfilHome(user: user)),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
