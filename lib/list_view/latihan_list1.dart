import 'package:flutter/material.dart';

class LatihanList1 extends StatelessWidget {
  LatihanList1({super.key});


  final List<Map<String , dynamic>> dinosaurus = [
   {
        'nama' : "T-rex",
        'deskripsi' : "Dinosaurus karnivora yang memiliki tubuh besar, gigi tajam, dan rahang kuat. T-Rex dikenal sebagai salah satu predator terbesar.",
        'gambar' : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsx1h2L6Tfwgx4VnPe5awIFNg5OmQOOQFmz4QmKvdChA&s=10"
      },
      {
        'nama' : "Brontosaurus",
        'deskripsi' : "Dinosaurus herbivora dengan leher panjang, tubuh besar, dan ekor panjang. Brontosaurus memakan tumbuhan dan hidup di daratan.",
        'gambar' : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0Fw_OZejEN6mIeMSFe8JL496LQLIpDai7NzJqjh10dw&s=10"
      },
      {
        'nama' : "Triceratops",
        'deskripsi' : "Dinosaurus herbivora yang memiliki tiga tanduk di kepala dan pelindung tulang di bagian leher.",
        'gambar' : "https://us.schleich-s.com/cdn/shop/files/15050_function_HY1_2026.jpg?v=1769606540"
      },
      {
        'nama' : "Velociraptor",
        'deskripsi' : "Dinosaurus karnivora berukuran kecil yang lincah, memiliki cakar tajam, dan bergerak dengan dua kaki.",
        'gambar' : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTc6pbWCy55EEtU9gme23ZM3PRfZXn0labpieJ6LPOjzw&s=10"
      },
      {
        'nama' : "Stegosaurus",
        'deskripsi' : "Dinosaurus herbivora yang memiliki lempengan tulang di punggung dan duri tajam pada ekornya.",
        'gambar' : "https://cdn.mos.cms.futurecdn.net/owYTb9X5fKpeBhgiaxD73b-1000-80.jpg"
      },
      {
        'nama' : "Brachiosaurus",
        'deskripsi' : "Dinosaurus herbivora bertubuh besar dengan leher panjang dan kaki depan lebih tinggi daripada kaki belakang. Ia memakan daun dari pohon tinggi.",
        'gambar' : "https://thumb.wikimedia.org/wikipedia/commons/thumb/c/cf/Brachiosaurus_NT_new.jpg/250px-Brachiosaurus_NT_new.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail"
      }
    ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          height: 320,
          margin: EdgeInsets.only(right: 10, left: 10, top: 10, bottom: 5),
          child: Center(
            child: ListView.builder(
              itemCount: dinosaurus.length,
              itemBuilder: (context, index) {
                final data = dinosaurus[index];
                return Container(
                  height: 200,
                  margin: EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                    image: DecorationImage(image: NetworkImage(data['gambar']),
                    fit: BoxFit.cover
                    )
                  ),

                  child: Stack(
                    children: [
                      Positioned(
                        top: 10,
                        left: 10,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black.withValues(alpha: 0.7)
                          ),
                        child: Text(data['nama'],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),),
                      )),

                      Positioned(
                        left: 10,
                        right: 10,
                        bottom: 10,

                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black.withValues(alpha: 0.7)
                          ),
                        child: Text(data['deskripsi'],
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Colors.white,
                          fontSize: 10
                        ),
                        ),
                      ))
                    ],
                  )
                );
              }
            )
          ),
        ),
        

        Container(
          color: Colors.white,
          height: 320,
          margin: EdgeInsets.only(right: 10, left: 10, top: 5, bottom: 10),
          child: Center(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: dinosaurus.length,
              itemBuilder: (context, index) {
                final data = dinosaurus[index];
                return Container(
                clipBehavior: Clip.hardEdge,
                  width: 200,
                  margin: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 230, 230, 230),
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(10)
                  ),

                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),

                    child: Stack(
                    children: [
                      Positioned(
                        child: Container(
                        width: 200,
                        height: 150,
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.5),
                          image: DecorationImage(image: NetworkImage(data['gambar']),
                          fit: BoxFit.cover
                          )
                        ),
                      )),

                      Positioned(
                        top: 150,
                        left: 5,
                        child: Text(data['nama'],
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                      )),

                      Positioned(
                        top: 175,
                        left: 5,
                        right: 5,
                        child: Text(data['deskripsi'],
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 13 
                        ),)),

                        Positioned(
                          top: 10,
                          right: 10,
                          child: Icon(Icons.catching_pokemon, size: 30))
                    ],
                  ),
                  )
                );
              }
            ),
          ),
        )
      ],
    );
      }
  }