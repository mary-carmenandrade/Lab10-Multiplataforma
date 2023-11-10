import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 23, 12, 73),
                Color.fromARGB(255, 100, 38, 170),
                Color.fromARGB(255, 78, 21, 116),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  'Mi galeria de fotos',
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                ),
              ),

              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Text(
                  'En esta página podemos encontrar todo tipo de imágenes, en distintos tamaños y colores',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black),
                ),
              ),

              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildImageWithTitle(
                    'assets/images/imagen.jpg',
                    'Imagen 1',
                    width: 180,
                    height: 160,
                  ),
                  const SizedBox(width: 20),
                  _buildImageWithTitle(
                    'assets/images/imagen2.jpg',
                    'Imagen 2',
                    width: 140,
                    height: 120,
                  ),
                  const SizedBox(width: 20),
                  _buildImageWithTitle(
                    'assets/images/imagen3.jpg',
                    'Imagen 3',
                    width: 100,
                    height: 80,
                  ),
                ],
              ),

              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Text(
                  'Imágenes en forma de carrusel, donde podemos ver distintas imágenes con solo deslizar',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black),
                ),
              ),

              const SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _buildImageWithTitle(
                      'assets/images/imagen4.jpg',
                      'Imagen 1',
                      width: 200,
                      height: 120,
                    ),
                    const SizedBox(width: 8),
                    _buildImageWithTitle(
                      'assets/images/imagen5.jpg',
                      'Imagen 2',
                      width: 180,
                      height: 120,
                    ),
                    const SizedBox(width: 8),
                    _buildImageWithTitle(
                      'assets/images/imagen6.jpg',
                      'Imagen 3',
                      width: 180,
                      height: 120,
                    ),
                    const SizedBox(width: 8),
                    _buildImageWithTitle(
                      'assets/images/imagen7.jpg',
                      'Imagen 4',
                      width: 180,
                      height: 120,
                    ),
                    const SizedBox(width: 8),
                    _buildImageWithTitle(
                      'assets/images/imagen8.jpg',
                      'Imagen 5',
                      width: 180,
                      height: 120,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImageWithTitle(
    String imagePath,
    String title, {
    required double width,
    required double height,
  }) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            imagePath,
            width: width,
            height: height,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
