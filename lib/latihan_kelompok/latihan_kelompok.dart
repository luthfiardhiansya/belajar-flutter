import 'package:flutter/material.dart';

class LatihanKelompok extends StatelessWidget {
  LatihanKelompok({super.key});

  final List<Map<String, dynamic>> indonesia = [
    {'wisata': 'Candi Borobudur', 'harga': '50.000', 'jam': '06:30 - 16:30', 'lokasi': 'Magelang, Jawa Tengah', 'gambar': "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDLeD2ZIT_vWrorckB0uzNw0gaFER5WMeY0JH-XzLirQ&s=10"},
    {'wisata': 'Candi Prambanan', 'harga': '50.000', 'jam': '06:30 - 17:00', 'lokasi': 'Yogyakarta', 'gambar': "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT19EpXo1oSjlk5kB4-OnUZpaWZGEAMESGRvCR3bZAlW6fRfOdck5_S2LVU&s=10"},
    {'wisata': 'Kawah Putih', 'harga': '31.000', 'jam': '07:30 - 16:30', 'lokasi': 'Ciwidey, Bandung', 'gambar': "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRC9ST_ptuUjK8KtY6x2e-m2JsFcgSkdZ5fWz8XUvU-HAJgOtnAylOpihS&s=10"},
    {'wisata': 'Taman Mini', 'harga': '25.000', 'jam': '06:00 - 20:00', 'lokasi': 'Jakarta Timur', 'gambar': "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSyp60K1sSI0tm1PPIoR9F1JjdKAk_8y-1vAF5B4NEXQ&s=10"},
    {'wisata': 'Gunung Bromo', 'harga': '50.000', 'jam': '00:00 - 17:00', 'lokasi': 'Jawa Timur', 'gambar': "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYuNOrfClon_m88fziWPE-qybfiJvqb1-DYOt0rrGRZg&s=10"},
    {'wisata': 'Tanah Lot', 'harga': '60.000', 'jam': '06:00 - 19:00', 'lokasi': 'Bali', 'gambar': "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5mCErB8Irc5HrS460dseRdAHbrKv8pXSzEfX-FUxOQA&s=10"},
    {'wisata': 'Garuda Wisnu Kencana', 'harga': '125.000', 'jam': '09:00 - 21:00', 'lokasi': 'Bali', 'gambar': "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvJABSdooegyFYllfTYdlfC7hMvzm23IdZpNpRyjxPKw&s=10"},
    {'wisata': 'Kota Tua', 'harga': '5.000' , 'jam': '09:00 - 15:00', 'lokasi': 'Jakarta Barat', 'gambar': "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcfGXJHaRGS9eBkUl8gJxsfABCrEUR8B4LGBdmlWf11A&s=10"},
    {'wisata': 'Sea World Ancol', 'harga': '90.000', 'jam': '09:30 - 16:00', 'lokasi': 'Jakarta Utara', 'gambar': "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3RxLjUaVdr2DAst0W5KzwGNdYG1IMdSy9yZEw7lTAvA&s=10"},
    {'wisata': 'Tangkupan  Parahu', 'harga': '25.000', 'jam': '08:00 - 17:00', 'lokasi': 'Lembang, Bandung Barat', 'gambar': "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqYaDnfVfvhi580DsYovvS3bVwpcAZ4jAE-e1K74Qy7g&s=10"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
        body: Center(
          child: GridView.builder(
            padding: EdgeInsets.all(10),
            itemCount: indonesia.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 0.8
              ),
            itemBuilder: (context, index) {
              final data = indonesia[index];
          
              return Center(
                child: Container(
                  width: 300,
                  height: 300,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 234, 233, 233),
                  boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    blurRadius: 1,
                    spreadRadius: 1,
                    offset: Offset(3,2),
                  ),
                  ],
          
                  borderRadius: BorderRadius.circular(10),
                  ),
                  child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                    child: Stack(
                      children: [
                        Positioned(child: Text("ahii")),
        
                        Positioned(child: Container(
                          width: 300,
                          height: 200,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage(data['gambar']),
                            fit: BoxFit.cover
                            )
                          ),
                        )),
                              
                        Positioned(
                          left: 10,
                          top: 210,
                          child: Text(data['wisata'],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                        ),)),
                              
                        Positioned(
                          bottom: 30,
                          left: 10,
                          child: Text("Harga Tiket: Rp.${data['harga']}",
                          style: TextStyle(
                            fontSize: 15
                          ),)
                          ),
                        
                        Positioned(
                          top: 15,
                          right: 10,
                          child: Container(
                            padding: EdgeInsets.only(right: 4, left: 4),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black.withValues(alpha: 0.5)
                            ),
                            child: Text("Buka Pukul ${data['jam']}",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontStyle: FontStyle.italic
                            ),),
                          )),
                              
                        Positioned(
                          bottom: 103,
                          left: 7,
                          child: Container(
                          color: Colors.black.withValues(alpha: 0.5),
                          child: Text("📍${data['lokasi']}",
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.white
                          ),),
                        )),
          
                        Positioned(
                          right: 13,
                          bottom: 60,
                          child: Icon(Icons.tour_outlined))
                      ],
                    ),
                  ),
                ),
              );
            }
          ),
        ),
    );
  }
}