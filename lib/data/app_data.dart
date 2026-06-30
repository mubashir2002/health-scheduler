import '../models/models.dart';

class AppData {
  static const List<Doctor> doctors = [
    Doctor(
      id: '1',
      name: 'Dr. Sarah Johnson',
      specialty: 'Cardiologist',
      imageUrl: 'https://i.pravatar.cc/300?img=47',
      rating: 4.9,
      reviewCount: 428,
      hospital: 'MediCare Heart Institute',
      consultationFee: 120,
      about:
          'Dr. Sarah Johnson is a board-certified cardiologist with over 15 years of experience in treating cardiovascular diseases. She specializes in preventive cardiology, heart failure management, and cardiac imaging.',
      yearsExperience: 15,
      isAvailable: true,
      availableSlots: [
        '09:00 AM', '10:00 AM', '11:00 AM',
        '02:00 PM', '03:00 PM', '04:00 PM',
      ],
    ),
    Doctor(
      id: '2',
      name: 'Dr. Michael Chen',
      specialty: 'Neurologist',
      imageUrl: 'https://i.pravatar.cc/300?img=68',
      rating: 4.8,
      reviewCount: 312,
      hospital: 'NeuroHealth Center',
      consultationFee: 150,
      about:
          'Dr. Michael Chen is a leading neurologist specializing in stroke management, epilepsy, and movement disorders. With 12 years of clinical experience, he is known for his compassionate patient care.',
      yearsExperience: 12,
      isAvailable: true,
      availableSlots: [
        '10:00 AM', '11:30 AM',
        '01:00 PM', '03:30 PM', '05:00 PM',
      ],
    ),
    Doctor(
      id: '3',
      name: 'Dr. Emily Rodriguez',
      specialty: 'Dermatologist',
      imageUrl: 'https://i.pravatar.cc/300?img=45',
      rating: 4.9,
      reviewCount: 516,
      hospital: 'SkinCare & Wellness Clinic',
      consultationFee: 100,
      about:
          'Dr. Emily Rodriguez is a top-rated dermatologist specializing in cosmetic and medical dermatology. She offers cutting-edge treatments for skin conditions, anti-aging therapies, and skin cancer screening.',
      yearsExperience: 10,
      isAvailable: true,
      availableSlots: [
        '09:30 AM', '10:30 AM',
        '02:00 PM', '03:00 PM', '04:30 PM',
      ],
    ),
    Doctor(
      id: '4',
      name: 'Dr. James Williams',
      specialty: 'Orthopedist',
      imageUrl: 'https://i.pravatar.cc/300?img=14',
      rating: 4.7,
      reviewCount: 289,
      hospital: 'BoneJoint Orthopedic Center',
      consultationFee: 130,
      about:
          'Dr. James Williams is an orthopedic surgeon with expertise in joint replacement, sports injuries, and minimally invasive surgery. He has successfully performed over 3,000 surgeries.',
      yearsExperience: 18,
      isAvailable: false,
      availableSlots: [
        '11:00 AM',
        '01:30 PM', '02:30 PM',
      ],
    ),
    Doctor(
      id: '5',
      name: 'Dr. Priya Sharma',
      specialty: 'Pediatrician',
      imageUrl: 'https://i.pravatar.cc/300?img=49',
      rating: 4.95,
      reviewCount: 672,
      hospital: "Children's Health & Wellness",
      consultationFee: 90,
      about:
          'Dr. Priya Sharma is an award-winning pediatrician dedicated to children\'s health from newborns to adolescents. She is known for her warm approach and expertise in developmental pediatrics.',
      yearsExperience: 14,
      isAvailable: true,
      availableSlots: [
        '08:30 AM', '09:30 AM', '10:30 AM', '11:30 AM',
        '02:00 PM', '03:30 PM',
      ],
    ),
    Doctor(
      id: '6',
      name: 'Dr. Robert Kim',
      specialty: 'Dentist',
      imageUrl: 'https://i.pravatar.cc/300?img=18',
      rating: 4.8,
      reviewCount: 394,
      hospital: 'BrightSmile Dental Clinic',
      consultationFee: 80,
      about:
          'Dr. Robert Kim is a cosmetic and restorative dentist with expertise in dental implants, veneers, and orthodontics. He uses the latest technology to ensure a pain-free, comfortable experience.',
      yearsExperience: 9,
      isAvailable: true,
      availableSlots: [
        '09:00 AM', '10:00 AM', '11:00 AM',
        '01:00 PM', '02:00 PM', '04:00 PM',
      ],
    ),
  ];

  static List<String> get categories => [
        'All',
        'Cardiology',
        'Neurology',
        'Dermatology',
        'Orthopedics',
        'Pediatrics',
        'Dentistry',
        'Ophthalmology',
        'Psychiatry',
      ];

  static final List<Appointment> appointments = [
    Appointment(
      id: 'a1',
      doctor: doctors[0],
      date: 'Mon, Jul 7, 2026',
      time: '10:00 AM',
      status: AppointmentStatus.upcoming,
    ),
    Appointment(
      id: 'a2',
      doctor: doctors[2],
      date: 'Wed, Jul 9, 2026',
      time: '02:00 PM',
      status: AppointmentStatus.upcoming,
    ),
    Appointment(
      id: 'a3',
      doctor: doctors[1],
      date: 'Fri, Jun 20, 2026',
      time: '11:30 AM',
      status: AppointmentStatus.completed,
    ),
    Appointment(
      id: 'a4',
      doctor: doctors[4],
      date: 'Tue, Jun 10, 2026',
      time: '09:30 AM',
      status: AppointmentStatus.cancelled,
    ),
  ];
}
