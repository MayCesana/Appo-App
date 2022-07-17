import '../models/type.dart';
import './Business.dart';

List<Type> DUMMY_TYPES = [
  Type(id: 0, 
  title: 'all', 
  imageUrl: '', 
  serviceType: null),

  Type(id: 1,
  title: 'salon',
  imageUrl: 'https://www.medinet.co.il/wp-content/uploads/2021/01/%D7%9E%D7%A0%D7%99%D7%A7%D7%95%D7%A8-%D7%A4%D7%93%D7%99%D7%A7%D7%95%D7%A8.jpg',
  serviceType: ServiceType.Salon,
  ),

  Type(id: 2,
  title: 'barber',
  imageUrl: 'https://www.appointfix.com/blog/wp-content/uploads/2021/12/barber-shop-decor-ideas.jpg',
  serviceType: ServiceType.Barber
  ),

  Type(id: 3,
  title: 'doctor',
  imageUrl: 'https://www.clalitsmile.co.il/tm-content/uploads/2021/04/shutterstock_358265852.jpg',
  serviceType: ServiceType.Doctor
  ),
];

const DUMMY_FAV = const [
  Business(
    id: 1, 
    name: 'The Barber Shop', 
    owner: 'Avi Biton', 
    city: 'Yavne', 
    address: 'Ben zion 10', 
    phoneNumber: '08-9438693', 
    imageUrl:'https://static.vecteezy.com/system/resources/previews/006/046/341/original/barbershop-logo-vintage-classic-style-salon-fashion-haircut-pomade-badge-icon-simple-minimalist-modern-barber-pole-razor-shave-scissor-razor-blade-retro-symbol-luxury-elegant-design-free-vector.jpg', 
    serviceType: ServiceType.Barber)
];

const DUMMY_BUSINESSES = const [
  Business(
    id: 1, 
    name: 'The Barber Shop', 
    owner: 'Avi Biton', 
    city: 'Yavne', 
    address: 'Ben zion 10', 
    phoneNumber: '08-9438693', 
    imageUrl: 'https://static.vecteezy.com/system/resources/previews/006/046/341/original/barbershop-logo-vintage-classic-style-salon-fashion-haircut-pomade-badge-icon-simple-minimalist-modern-barber-pole-razor-shave-scissor-razor-blade-retro-symbol-luxury-elegant-design-free-vector.jpg', 
    serviceType: ServiceType.Barber),

    Business(
    id: 2, 
    name: 'Neta Place', 
    owner: 'Neta Aloni', 
    city: 'Tel Aviv', 
    address: 'Jerusalem 32', 
    phoneNumber: '03-9438693', 
    imageUrl: 'https://thumbs.dreamstime.com/z/beauty-salon-logo-template-vector-illustration-78920880.jpg', 
    serviceType: ServiceType.Salon),

    Business(
    id: 3, 
    name: 'מרפאת שיניים כסיף', 
    owner: 'Alon Kasif', 
    city: 'תל אביב', 
    address: 'נורדאו 28', 
    phoneNumber: '03-9438693', 
    imageUrl: 'https://www.hechtsmile.com/wp-content/uploads/fotos-carrusel.002.jpeg', 
    serviceType: ServiceType.Doctor),

    Business(
    id: 4, 
    name: 'Tal Harchol', 
    owner: 'Tal Harchol', 
    city: 'רמת גן', 
    address: 'לוחמי סיני 15', 
    phoneNumber: '03-9438693', 
    imageUrl: 'https://lh3.googleusercontent.com/p/AF1QipPbjzyzCja8_5t2I_ABuxRbA-8h5a50xG891vEp=w1080-h608-p-no-v0', 
    serviceType: ServiceType.Salon)

];