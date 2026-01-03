import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AddFortController {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController difficultyController = TextEditingController();
  final TextEditingController ratingController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController entryInfoController = TextEditingController();

  final List<File> selectedImages = [];

  bool isLoading = false;

  void dispose() {
    nameController.dispose();
    difficultyController.dispose();
    ratingController.dispose();
    cityController.dispose();
    entryInfoController.dispose();
  }

  Future<void> pickImages() async {
    final picked = await ImagePicker().pickMultiImage();
    if (picked.isNotEmpty) {
      selectedImages.addAll(picked.map((e) => File(e.path)));
    }
  }

  Future<bool> uploadFort() async {
    if (nameController.text.isEmpty ||
        difficultyController.text.isEmpty ||
        ratingController.text.isEmpty ||
        cityController.text.isEmpty ||
        selectedImages.isEmpty) {
      return false; // validation failed
    }

    isLoading = true;

    // Upload images
    List<String> imageUrls = [];
    for (File img in selectedImages) {
      final ref = FirebaseStorage.instance.ref().child(
          'forts/${DateTime.now().millisecondsSinceEpoch}_${img.path.split('/').last}');
      await ref.putFile(img);
      final url = await ref.getDownloadURL();
      imageUrls.add(url);
    }

    // Add to Firestore
    await FirebaseFirestore.instance.collection('forts').add({
      'name': nameController.text.trim(),
      'difficulty': difficultyController.text.trim(),
      'rating': double.tryParse(ratingController.text.trim()) ?? 0.0,
      'city': cityController.text.trim(),
      'entryInfo': entryInfoController.text.trim(),
      'images': imageUrls,
      'createdAt': FieldValue.serverTimestamp(),
    });

    // Clear fields
    selectedImages.clear();
    nameController.clear();
    difficultyController.clear();
    ratingController.clear();
    cityController.clear();
    entryInfoController.clear();

    isLoading = false;
    return true;
  }
}
