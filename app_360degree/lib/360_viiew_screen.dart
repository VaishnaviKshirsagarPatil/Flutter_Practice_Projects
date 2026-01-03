import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:panorama_viewer/panorama_viewer.dart';
import 'package:google_fonts/google_fonts.dart';

class Fort360GalleryScreen extends StatefulWidget {
  const Fort360GalleryScreen({Key? key}) : super(key: key);

  @override
  State<Fort360GalleryScreen> createState() => _Fort360GalleryScreenState();
}

class _Fort360GalleryScreenState extends State<Fort360GalleryScreen> {
  final ImagePicker _picker = ImagePicker();
  List<File> _images = [];
  double _opacity = 0.0;

  Future<void> _pickImage(ImageSource source) async {
    final XFile? image =
        await _picker.pickImage(source: source, imageQuality: 100);
    if (image != null) {
      setState(() {
        _images.add(File(image.path));
        _opacity = 0.0;
      });
      Future.delayed(const Duration(milliseconds: 50), () {
        setState(() {
          _opacity = 1.0;
        });
      });
    }
  }

  void _showImageSourceDialog() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(25))),
      builder: (context) => Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pop(context);
                _pickImage(ImageSource.camera);
              },
              icon: const Icon(
                Icons.camera_alt,
                color: Colors.black,
              ),
              label: const Text(
                'Camera',
                style: TextStyle(color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pop(context);
                _pickImage(ImageSource.gallery);
              },
              icon: const Icon(
                Icons.photo_library,
                color: Colors.black,
              ),
              label: const Text(
                'Gallery',
                style: TextStyle(color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _open360View(File image) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            title: Text(
              '360° View',
              style: GoogleFonts.poppins(
                  fontSize: 22, fontWeight: FontWeight.w500),
            ),
            backgroundColor: Colors.deepOrange,
          ),
          body: Center(
            child: PanoramaViewer(
              child: Image.file(
                image,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ),
    );
  } 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      appBar: AppBar(
        title: Text(
          '360° View Gallery',
          style:
              GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        backgroundColor: Colors.deepOrange,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Back arrow
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showImageSourceDialog,
        backgroundColor: Colors.deepOrange,
        child: const Icon(
          Icons.add_a_photo,
          color: Colors.black,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Front container
          AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
            height: 180,
            decoration: BoxDecoration(
              color: Colors.deepOrange[100],
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.deepOrange.shade200.withOpacity(0.5),
                  blurRadius: 10,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: Center(
              child: Text(
                '📸 Capture or select photos from Camera or Gallery \nand view them in 360°',
                style: GoogleFonts.poppins(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrange),
                textAlign: TextAlign.center,
              ),
            ),
           ),
          const SizedBox(height: 20),
          // Animated list of images
          ..._images.map((image) => AnimatedOpacity(
                opacity: _opacity,
                duration: const Duration(milliseconds: 500),
                child: GestureDetector(
                  onTap: () => _open360View(image),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    elevation: 5,
                    margin: const EdgeInsets.only(bottom: 14),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Stack(
                        children: [
                          Image.file(
                            image,
                            height: 200,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                            bottom: 8,
                            right: 8,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 4),
                              decoration: BoxDecoration(
                                  color: Colors.deepOrange.withOpacity(0.8),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Text(
                                '360° View',
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )),
          ],
      ),
    );
  }
}
