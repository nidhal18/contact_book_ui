import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> contacts = [
      {
        "name": "Rahul",
        "number": "987654321",
        "image":
            "https://as2.ftcdn.net/v2/jpg/03/15/17/97/1000_F_315179741_VARtOj9HkcbD8MdfM8G2yPXjiMwrx9YI.jpg"
      },
      {
        "name": "Rahul",
        "number": "987654321",
        "image":
            "https://as2.ftcdn.net/v2/jpg/03/15/17/97/1000_F_315179741_VARtOj9HkcbD8MdfM8G2yPXjiMwrx9YI.jpg"
      },
      {
        "name": "Rahul",
        "number": "987654321",
        "image":
            "https://as2.ftcdn.net/v2/jpg/03/15/17/97/1000_F_315179741_VARtOj9HkcbD8MdfM8G2yPXjiMwrx9YI.jpg"
      },
      {
        "name": "Rahul",
        "number": "987654321",
        "image":
            "https://as2.ftcdn.net/v2/jpg/03/15/17/97/1000_F_315179741_VARtOj9HkcbD8MdfM8G2yPXjiMwrx9YI.jpg"
      },
      {
        "name": "Rahul",
        "number": "987654321",
        "image":
            "https://as2.ftcdn.net/v2/jpg/03/15/17/97/1000_F_315179741_VARtOj9HkcbD8MdfM8G2yPXjiMwrx9YI.jpg"
      },
      {
        "name": "Rahul",
        "number": "987654321",
        "image":
            "https://as2.ftcdn.net/v2/jpg/03/15/17/97/1000_F_315179741_VARtOj9HkcbD8MdfM8G2yPXjiMwrx9YI.jpg"
      },
      {
        "name": "Rahul",
        "number": "987654321",
        "image":
            "https://as2.ftcdn.net/v2/jpg/03/15/17/97/1000_F_315179741_VARtOj9HkcbD8MdfM8G2yPXjiMwrx9YI.jpg"
      }
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Book'),
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          final data = contacts[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(data['image']),
            ),
            title: Text(data['name'].toString()),
            subtitle: Text(data['number'].toString()),
            trailing: IconButton(
              icon: const Icon(Icons.call, color: Colors.blue),
              onPressed: () {
                // Handle call action
              },
            ),
            onTap: () {
              // Handle contact tap
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Tapped on ${contacts[index]['name']}'),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
