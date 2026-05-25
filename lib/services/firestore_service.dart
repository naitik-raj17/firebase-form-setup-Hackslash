import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  // Get reference to the 'users' collection
  final CollectionReference _usersCollection =
      FirebaseFirestore.instance.collection('users');

  /// Saves user data to Firestore
  /// [name] - User's name
  /// [email] - User's email
  Future<void> addUser(String name, String email) async {
    try {
      await _usersCollection.add({
        'name': name,
        'email': email,
        'createdAt': FieldValue.serverTimestamp(),
      });
    } catch (e) {
      // Re-throw the error to be handled in the UI
      throw Exception('Failed to save user: $e');
    }
  }
}
