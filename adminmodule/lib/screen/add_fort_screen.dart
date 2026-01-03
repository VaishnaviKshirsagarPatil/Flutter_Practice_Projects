import 'dart:io';
import 'package:adminmodule/controller/add_fort_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class AddFortScreen extends StatefulWidget {
  const AddFortScreen({super.key});

  @override
  State<AddFortScreen> createState() => _AddFortScreenState();
}

class _AddFortScreenState extends State<AddFortScreen>
    with SingleTickerProviderStateMixin {
  final AddFortController controller = AddFortController();

  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    )..forward();

    _fadeAnimation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    controller.dispose();
    super.dispose();
  }

  Widget _buildTextField({
    required TextEditingController controllerText,
    required String label,
    required IconData icon,
    TextInputType type = TextInputType.text,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        controller: controllerText,
        keyboardType: type,
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: Icon(icon, color: Colors.orange),
          filled: true,
          fillColor: Colors.white.withOpacity(0.8),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.orange, width: 2),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }

  Future<void> _pickImages() async {
    await controller.pickImages();
    setState(() {});
  }

  Future<void> _uploadFort() async {
    final success = await controller.uploadFort();
    if (success) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('✅ Fort added successfully!')),
      );
      setState(() {});
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please fill all fields and add images')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFFFE0B2), Color(0xFFFFCC80)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: FadeTransition(
            opacity: _fadeAnimation,
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Container(
                width: 500,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.85),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(0, 4),
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Center(
                      child: Text(
                        '🏰 Add Fort Details',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepOrange,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    _buildTextField(
                        controllerText: controller.nameController,
                        label: 'Fort Name',
                        icon: Icons.landscape),
                    _buildTextField(
                        controllerText: controller.difficultyController,
                        label: 'Difficulty Level',
                        icon: Icons.terrain),
                    _buildTextField(
                        controllerText: controller.ratingController,
                        label: 'Rating (e.g., 4.5)',
                        icon: Icons.star_rate,
                        type: TextInputType.number),
                    _buildTextField(
                        controllerText: controller.cityController,
                        label: 'City',
                        icon: Icons.location_city),
                    _buildTextField(
                        controllerText: controller.entryInfoController,
                        label: 'Entry Info (optional)',
                        icon: Icons.info_outline),
                    const SizedBox(height: 20),

                    // Selected Images Preview
                    if (controller.selectedImages.isNotEmpty)
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: controller.selectedImages.map((img) {
                          return Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.file(
                                  img,
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned(
                                top: 5,
                                right: 5,
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      controller.selectedImages.remove(img);
                                    });
                                  },
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.black54,
                                    ),
                                    padding: const EdgeInsets.all(4),
                                    child: const Icon(Icons.close,
                                        color: Colors.white, size: 18),
                                  ),
                                ),
                              ),
                            ],
                          );
                        }).toList(),
                      ),
                    const SizedBox(height: 12),

                    // Pick Images Button
                    Center(
                      child: ElevatedButton.icon(
                        icon: const Icon(Icons.photo_library),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 12),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                        ),
                        label: const Text('Pick Images',
                            style: TextStyle(fontSize: 16)),
                        onPressed: _pickImages,
                      ),
                    ),
                    const SizedBox(height: 25),

                    // Add Fort Button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: controller.isLoading ? null : _uploadFort,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepOrange,
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                        ),
                        child: controller.isLoading
                            ? const CircularProgressIndicator(
                                color: Colors.white,
                              )
                            : const Text(
                                'Add Fort',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
