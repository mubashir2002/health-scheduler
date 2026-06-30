class Doctor {
  final String id;
  final String name;
  final String specialty;
  final String imageUrl;
  final double rating;
  final int reviewCount;
  final String hospital;
  final double consultationFee;
  final String about;
  final int yearsExperience;
  final bool isAvailable;
  final List<String> availableSlots;

  const Doctor({
    required this.id,
    required this.name,
    required this.specialty,
    required this.imageUrl,
    required this.rating,
    required this.reviewCount,
    required this.hospital,
    required this.consultationFee,
    required this.about,
    required this.yearsExperience,
    required this.isAvailable,
    required this.availableSlots,
  });
}

class Appointment {
  final String id;
  final Doctor doctor;
  final String date;
  final String time;
  final AppointmentStatus status;

  const Appointment({
    required this.id,
    required this.doctor,
    required this.date,
    required this.time,
    required this.status,
  });
}

enum AppointmentStatus { upcoming, completed, cancelled }

class Category {
  final String name;
  final String icon;

  const Category({required this.name, required this.icon});
}
