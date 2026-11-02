
import 'package:flutter/material.dart';

class LatihanPertama extends StatelessWidget {
  const LatihanPertama({super.key});

  Widget menuItem(IconData icon, String title) {
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.black,
            size: 33,
          ),
          SizedBox(height: 2),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 330,
        height: 600,
        margin: EdgeInsets.only(top: 12, bottom: 12),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 248, 248, 248),
          borderRadius: BorderRadius.circular(40),
          border: Border.all(width: 0.5),
        ),

        child: ClipRRect(
          borderRadius: BorderRadius.circular(40),

          child: Stack(
            clipBehavior: Clip.hardEdge,
            children: [
              Container(
                width: double.infinity,
                height: 190,
                padding: EdgeInsets.only(
                  top: 20,
                  left: 15,
                  right: 15,
                ),
                color: const Color.fromARGB(255, 91, 144, 237),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'lib/assets/image/logo-dana.png',
                          width: 30,
                          height: 30,
                        ),

                        SizedBox(width: 4),

                        Text(
                          "Rp",
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                          ),
                        ),

                        Text(
                          "10.000.000",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                          ),
                        ),

                        SizedBox(width: 4),

                        Icon(
                          Icons.remove_red_eye,
                          color: Colors.white,
                          size: 13,
                        ),
                      ],
                    ),

                    SizedBox(height: 20),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.add_business,
                              color: Colors.white,
                              size: 40,
                            ),
                            Text(
                              "isi saldo",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),

                        Column(
                          children: [
                            Icon(
                              Icons.arrow_circle_down_outlined,
                              color: Colors.white,
                              size: 40,
                            ),
                            Text(
                              "minta",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),

                        Column(
                          children: [
                            Icon(
                              Icons.send_sharp,
                              color: Colors.white,
                              size: 40,
                            ),
                            Text(
                              "kirim",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),

                        Column(
                          children: [
                            Icon(
                              Icons.mark_email_unread,
                              color: Colors.white,
                              size: 40,
                            ),
                            Text(
                              "pesan",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Positioned(
                top: 170,
                left: 10,
                right: 10,

                child: Container(
                  width: double.infinity,
                  height: 150,
                  padding: EdgeInsets.all(5),

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(
                      width: 0.1,
                      color: const Color.fromARGB(
                        255,
                        194,
                        193,
                        193,
                      ),
                    ),
                  ),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          menuItem(
                            Icons.card_giftcard_outlined,
                            "Promo",
                          ),

                          menuItem(
                            Icons.sports_esports_outlined,
                            "DANA Poly",
                          ),

                          menuItem(
                            Icons.workspace_premium_outlined,
                            "VIP Pass",
                          ),

                          menuItem(
                            Icons.credit_card,
                            "DANA Cicil",
                          ),
                        ],
                      ),

                      Row(
                        children: [
                          menuItem(
                            Icons.apple,
                            "Apple Zone",
                          ),

                          menuItem(
                            Icons.phone_android_outlined,
                            "Pulsa & Data",
                          ),

                          menuItem(
                            Icons.star,
                            "Rewards",
                          ),

                          menuItem(
                            Icons.grid_view,
                            "Lihat Semua",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              Positioned(
                top: 330,
                left: 10,
                right: 10,

                child: Container(
                  width: double.infinity,
                  height: 116,
                  padding: EdgeInsets.only(left: 7, right: 7, top: 5, bottom: 5),

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(
                      width: 0.1,
                      color: const Color.fromARGB(
                        255,
                        194,
                        193,
                        193,
                      ),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset('lib/assets/image/logo-dana_biru.png',
                          width: 35,
                          height: 35,),

                          Expanded(child: Text("Berhasil Top-Up DANA Rp5.000.000")),

                          Icon(Icons.send, size: 20,),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset('lib/assets/image/logo-dana_biru.png',
                          width: 35,
                          height: 35,),

                          Expanded(child: Text("Kamu Dapat Kupon Dari DANA")),

                          Icon(Icons.discount_outlined, size: 20,),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset('lib/assets/image/logo-dana_biru.png',
                          width: 35,
                          height: 35,),

                          Expanded(child: Text("Berhasil Mengirim DANA Rp750.000")),

                          Icon(Icons.announcement_outlined, size: 20,),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
