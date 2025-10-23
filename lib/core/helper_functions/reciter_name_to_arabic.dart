String reciterNameToArabic({required String reciterName}) {
  switch (reciterName) {
    case 'Mishary Rashid Al Afasy':
      return 'مشارى بن راشد العفاسى';
    case 'Abu Bakr Al Shatri':
      return 'أبو بكر الشاطرى';
    case 'Nasser Al Qatami':
      return 'ناصر القطامى';
    case 'Yasser Al Dosari':
      return 'ياسر الدوسرى';
    case 'Hani Ar Rifai':
      return 'هانى الرفاعى';
    default:
      return reciterName;
  }
}
