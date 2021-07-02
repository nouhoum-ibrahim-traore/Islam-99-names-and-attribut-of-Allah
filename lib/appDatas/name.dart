import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Name with ChangeNotifier {
  final String name;
  final String description;
  final String benefit;
  final String arabicScript;
  int rememberRating = 0;

  Name([this.name, this.description, this.benefit, this.arabicScript]);

  updateRating(int _rating) {
    rememberRating = _rating;
    notifyListeners();
  }

  static List getNameList() {
    List list = [
      Name(
        'Allah',
        'Is the greatest name of all names.',
        'The one who recites Allah for 1000 times at least, will find all the suspicions vanish away. Also, if someone wants rehabilitation from a disease, then he/she should recite this name ‘Allah’ as many times as possible. After that, pray for yourself to get rid of disease.',
        'الله',
        //'shahada.jpg',
      ),
      Name(
        'Ar-Rahman',
        'Le Très-Miséricordieux',
        'YA RAHMAN : 100 fois après Al Fajr : ALLAH lui donnera une bonne mémoire et le débarrassera de toute peine.',
        'الرَّحْمَنُ',
      ),
      Name(
        'Ar-Rahim',
        'Le TOUT Miséricordieux',
        'YA RAHIM : 100 fois après Al Fajr, pour bénéficier de la sympathie de tout le monde.',
        'الرَّحِيمُ',
      ),
      Name(
        'Al-Malik',
        'Le Souverain, Le Roi',
        'YA MALIK : celui qui le répète tout le temps, aura le RESPECT, et la bonne considération de tout le monde.',
        'الْمَلِكُ',
      ),
      Name(
        'Al-Qouddous',
        'L\'Infiniment Saint',
        'YA QUDDUS : ALLAH libérera les cœurs de ceux qui répète ce nom 100 fois, par jour de toute angoisse.',
        'الْقُدُّوسُ',
      ),
      Name(
        'As-Salam',
        'La paix, la Sécurité, le Salut',
        'YA SALAM : Celui qui répète ce NOM 100 fois sur un malade, l’aidera à guérir.',
        'السَّلاَمُ',
      ),
      Name(
        'Al-Mou\'min',
        'Le Fidèle, le Sécurisant, le confiant',
        'YA MU\'MIN : celui qui le répète, ALLAH le débarrassera de tout mal.',
        //***************icicicicicicicici
        'الْمُؤْمِنُ',
      ),
      Name(
        'Al-Mouhaymin',
        'Le Surveillant, le Témoin, le Préservateur, le Dominateur',
        'YA MUHAYMIN : Celui qui a le corps et le cœur propres, ALLAH illuminera son cœur et son chemin. ',
        'الْمُهَيْمِنُ',
      ),
      Name(
        'Al-\'Aziz',
        'Le Tout Puissant, l\'Irrésistible, Celui qui l\'emporte',
        'YA AZIZ : celui qui le répète 40 fois par jour, après la prière de l’aube, pendant 40 jours, n’aura jamais besoin des autres.',
        'الْعَزِيزُ',
      ),
      Name(
        ///********************** dj?? J

        'Al-Djabbar',
        'Celui qui domine et contraint, le Contraignant, le Réducteur',
        'YA JABBAR : celui qui répète toujours ce NOM, ALLAH le protègera des VICES, et le mettra à l’abri de la violence et de la dureté des autres.',
        'الْجَبَّارُ',
      ),
      Name(
        'Al-Moutakabbir',
        'Le Superbe, Celui qui se magnifie',
        'YA MUTAKABBIR : celui qui répète ce NOM avant de s’accoupler, ALLAH lui donnera un enfant béni et vertueux.',
        'الْمُتَكَبِّرُ',
      ),
      Name(
        'Al-Khaliq',
        'Le Créateur, le Déterminant, Celui qui donne la mesure de toute chose',
        'YA KHALIQ : celui qui répète ce NOM pendant la nuit, ALLAH créera un ANGE, qui ne fera que du bien, et sa récompense sera donnée à cette personne.',
        'الْخَالِقُ',
      ),
      Name(
        'Al-Bari\'',
        'Le Créateur, le Producteur, le Novateur',
        'YA BARI : celui qui répète ce NOM, ALLAH l’écartera des péchés.',
        'الْبَارِئُ',
      ),
      Name(
        'Al-Mousawwir',
        'Le Formateur, Celui qui façonne ses créatures de différentes formes',
        'YA MUSSAWWIR : celle qui désire avoir un enfant, doit répéter 21 fois sur un verre d’eau ya khabir, ya bari, ya mussawwir, puis le boire à JEÛN.',
        'الْمُصَوِّرُ',
      ),
      Name(
        'Al-Ghaffar',
        'Le Tout-Pardonnant, Il pardonne les péchés de Ses serviteurs encore et encore',
        'YA GHAFFAR : celui qui répète ce NOM, ALLAH lui pardonnera ses péchés.',
        'الْغَفَّارُ',
      ),
      Name(
        'Al-Qahhar',
        'Le Tout et Très Contraignant, le Dominateur Suprême',
        'YA QAHHAR : celui qui répète ce NOM, ALLAH lui donnera la paix intérieure, le libèrera de ses passions, et lui pardonnera ses péchés.',
        'الْقَهَّارُ',
      ),
      Name(
        'Al-Wahhab',
        'Le Donateur gracieux, généreux',
        'YA WAHHAB : celui qui répète ce NOM 7 fois après sa prière ALLAH, exaucera ses souhaits.',
        'الْوَهَّابُ',
      ),
      Name(
        'Ar-Razzaq',
        'Celui qui pourvoit et accorde toujours la subsistance',
        'YA RAZZAQ : celui qui répète ce NOM, ALLAH facilitera les moyens de sa subsistance.',
        'الرَّزَّاقُ',
      ),
      Name(
        'Al-Fattah',
        'Le Conquérant, Celui qui ne cesse d\'ouvrir et d\'accorder la victoire',
        'YA FATTAH : celui qui répète ce NOM, ALLAH lui ouvrira le coeur et lui accordera la victoire.',
        'الْفَتَّاحُ',
      ),
      Name(
        'Al-\'Alim',
        'Le Très-Savant, l\'Omniscient',
        'YA \'ALIM : celui qui répète ce NOM, ALLAH illuminera son cœur par une lumière divine.',
        'اَلْعَلِيْمُ',
      ),
      Name(
        'Al-Qabid',
        'Celui qui retient et qui rétracte',
        'YA QABID : celui qui répète 50 fois ce nom, avant de manger, pendant 40 jours, ALLAH le mettra à l’abri de la FAIM.',
        'الْقَابِضُ',
      ),
      Name(
        'Al-Basit',
        'Celui qui étend Sa générosité et Sa miséricorde',
        'YA BASIT : celui qui répète ce NOM 10 fois pendant la prière du Fajr, les mains levées et les paumes ouvertes, puis s’essuie les mains sur son visage, n’aura besoin de personne.',
        'الْبَاسِطُ',
      ),
      Name(
        ///**********************
        'Al-Khafid',
        'Celui qui abaisse et qui châtie.  Il humilie les orgueilleux, les insolents et les oppresseurs. Il est également Celui qui décide qui sera affaibli, diminué ou humilié.',
        'YA KHAFID : celui qui répète ce NOM plusieurs fois par jour, ALLAH augmentera ses chances dans ce monde et dans l’au-delà.',
        'الْخَافِضُ',
      ),
      Name(
        'Ar-Rafi\'',
        'Celui qui élève',
        'YA RAFI : celui qui répète ce NOM 100 fois, jour et nuit, ALLAH lui accordera le bonheur, le mérite et la prospérité.',
        'الرَّافِعُ',
      ),
      Name(
        'Al-Mou\'izz',
        'Celui qui donne puissance et considération',
        'YA MU\'IZ : celui qui répète ce NOM 140 fois après la prière dû icha le lundi et le vendredi, ALLAH le rendra digne aux yeux des autres.',
        'الْمُعِزُّ',
      ),
      Name(
        ///**********************

        'Al-Mouzhill',
        'Celui qui avilit',
        'YA MUDHILU : celui qui répète ce NOM 75 fois, ALLAH le protègera du mal de ses adversaires, et IL le préservera.',
        'المُذِلُّ',
      ),
      Name(
        'As-Sami',
        'L\'Audient, Celui qui entend absolument toute chose, qui est très à l\'ecoute',
        'YA SAMI : celui qui répète ce NOM 100 fois sans parler à personnes les jours du jeudi après la prière du midi, ALLAH lui accordera tout ce qu’il désire.',
        'السَّمِيعُ',
      ),
      Name(
        'Al-Bassir',
        'Le Voyant, Celui qui voit absolument toute chose',
        'YA BASSIR : celui qui répète ce NOM 100 fois entre la prière de l’aube, et la première raka\'a de la prière du vendredi, ALLAH lui accordera l’estime et le respect des autres.',
        'الْبَصِيرُ',
      ),
      Name(
        ///**********************

        'Al-Hakam',
        'Le Juge, l\'Arbitre, Celui qui  décide, tranche ou prononce',
        'YA HAKAMU : celui qui répète ce NOM pendant la nuit, ALLAH l’illuminera et lui dévoilera plusieurs secrets.',
        'الْحَكَمُ',
      ),
      Name(
        'Al-\'Adl',
        'Le Juste, l\'Equitable, Celui qui rétablit l\'Equilibre',
        'YA ADL : celui qui répète ce NOM 1000 fois pendant la nuit, les gens lui obéiront sur le chemin du BIEN.',
        'الْعَدْلُ',
      ),
      Name(
        'Al-Latif',
        'Le Subtil-Bienveillant, le Bon',
        'YA LATIF : celui qui répète ce NOM 100 fois après avoir fait 2 Rakats surrégatoires, s’il est pauvre et seul, ALLAH exhaucera sa prière et répondra à son DÉSIR.',
        'اللَّطِيفُ',
      ),
      Name(
        'Al-Khabir',
        'Le Très-Instruit, le Bien-Informé',
        'YA KHABIR : celui qui répète ce NOM, se débarrassera d’une mauvaise habitude.',
        'الْخَبِيرُ',
      ),
      Name(
        ///**********************

        'Al-Halim',
        'Le Longanime, le Très Clément',
        'YA HALIMU : celui qui répète ce NOM 1000 fois au milieu de son champ, aucun mal n’atteindra sa récolte.',
        'الْحَلِيمُ',
      ),
      Name(
        ///**********************

        'Al-\'Azim',
        'L\'Immense, le Magnifique, l\'Eminent, le Considérable',
        'YA AZIMU : celui qui répète ce NOM, ALLAH lui accordera le MÉRITE et la DIGNITÉ.',
        'الْعَظِيمُ',
      ),
      Name(
        'Al-Ghafour',
        'Le Tout-Pardonnant',
        'YA GHAFUR : celui qui répète ce NOM, ALLAH le guérira de sa maladie (maux de tête, fièvre..)',
        'الْغَفُورُ',
      ),
      Name(
        'Ash-Shakour',
        'Le Très-Reconnaissant, le Très-Remerciant, Celui qui accroît infiniment',
        'YA SHAKUR: celui qui répète ce NOM 41 fois sur un verre d’eau avant de le boire, ALLAH soulagera son cœur et enlèvera sa peine.',
        'الشَّكُورُ',
      ),
      Name(
        'Al-\'Aliyy',
        'Le Sublime, l\'Elevé, le Très-Haut',
        'AL ALIYU : celui qui répète ce NOM, ALLAH le remplira de FOI et de certitude (si sa croyance est faible), et lui préparera les chemins de succès et de bien guidance. Si le voyageur le répète, ALLAH le fera retourner chez lui.',
        'الْعَلِيُّ',
      ),
      Name(
        ///**********************

        'Al-Kabir',
        'L\'Infiniment Grand, plus élevé en Qualités que Ses créatures',
        'YA KABIRU : celui qui répète ce NOM, ALLAH lui accordera de l’estime parmi les gens.',
        'الْكَبِيرُ',
      ),
      Name(
        ///**********************

        'Al-Hafizh',
        'Le Préservateur, le Conservateur, Celui qui garde',
        'YA HAFIZU : celui qui répète ce NOM 16 fois par jour, sera protégé par ALLAH de toute calamité.',
        'الْحَفِيظُ',
      ),
      Name(
        'Al-Mouqit',
        'Le Gardien, le Puissant, le Témoin, Celui qui produit la subsistance',
        'YA MUQIT : celui qui répète ce NOM plusieurs fois sur un verre d’eau, avant de le faire boire à son enfant, il verra ses mauvaises manières changer en bonnes façons.',
        'المُقيِت',
      ),
      Name(
        'Al-Hasib',
        'Celui qui tient compte de tout, Celui qui suffit à ses créatures',
        'YA HASIB: celui qui répète ce NOM 70 fois à partir de jeudi et pendant 7 jours et nuits, s’il a peur d’être volé, ou victime de la méchanceté des autres, il doit dire après : « hasbiya ALLAH Hassib », ALLAH le protègera de toute PEUR.',
        'الْحسِيبُ',
      ),
      Name(
        ///********************** voir les audios prononciation
        'Al-Djalil',
        'Le Majestueux, qui s\'attribue la grandeur du Pouvoir et la Gloire de Sa dignité',
        'YA JALIL : celui qui répète ce NOM chaque jour, il deviendra béni et vénéré parmi les gens.',
        'الْجَلِيلُ',
      ),
      Name(
        'Al-Karim',
        'Le Tout-Généreux, le Noble-Généreux, pur de toute abjection',
        'YA KARIM : celui qui répète ce NOM plusieurs fois par jour, aura l’estime dans ce monde et dans l’au-delà.',
        'الْكَرِيمُ',
      ),
      Name(
        'Ar-Raqib',
        'Le Vigilant, Celui qui observe',
        'YA RAQIB : celui qui répète ce NOM 7 fois, sur lui-même, sa famille et ses propriétés, tout sera sous la protection d’ALLAH.',
        'الرَّقِيبُ',
      ),
      Name(
        ///**********************

        'Al-Moudjib',
        'Celui qui exauce, Celui qui répond au nécessiteux et au désireux qui Le prie',
        'YA MUJIB : celui qui répète ce NOM, son appel sera exhaucé.',
        'الْمُجِيبُ',
      ),
      Name(
        'Al-Wasi\'',
        'L\'Ample, le Vaste, l\'Immense',
        'YA WASI : celui qui répète ce NOM, s’il a des difficultés pour gagner sa vie, ALLAH le comblera de ses bienfaits.',
        'الْوَاسِعُ',
      ),
      Name(
        'Al-Hakim',
        'L\'Infiniment Sage',
        'YA HAKIM : celui qui répète ce nom, ALLAH écartera les difficultés de son travail.',
        'الْحَكِيمُ',
      ),
      Name(
        'Al-Wadoud',
        'Le Bien-Aimant, le Bien-Aimé',
        'YA WADUD : celui qui répète ce nom 1000 fois sur de la nourriture, et la donne à manger à quelqu’un, avec qui il s’est querellé, il n’y aura plus de dispute entre eux.',
        'الْوَدُودُ',
      ),
      Name(
        ///**********************

        'Al-Madjíd',
        'Le Très Glorieux, doté d\'un Pouvoir parfait, de Haute Dignité, de Compassion, de Générosité et de Douceur',
        'YA MAJID : celui qui répète ce nom, ALLAH lui accordera la GLOIRE et la DIGNITÉ.',
        'الْمَجِيدُ',
      ),
      Name(
        'Al-Baith',
        'Celui qui ressuscite Ses serviteurs après la mort, Celui qui incite',
        'YA BAITH : celui qui répète ce NOM, aura la crainte d’ALLAH.',
        'الْبَاعِثُ',
      ),
      Name(
        'Ash-Shahid',
        'Le Témoin, qui n\'ignore rien de ce qui arrive',
        'YA SHAHID : celui qui répète ce nom sur un enfant désobéissant, il deviendra obéissant in-cha-Allah.',
        'الشَّهِيدُ',
      ),
      Name(
        'Al-Haqq',
        'Le Vrai, dont l\'Existence est la seule véritable',
        'YA HAQQ : celui qui répète ce NOM, retrouvera quelque chose qu’il a perdu.',
        'الْحَقُّ',
      ),
      Name(
        'Al-Wakil',
        'Le Gérant, l\'Intendant, Celui à qui on se confie et dont le soutien ne fléchit jamais',
        'YA WAKIL : celui qui répète ce NOM, aura la protection d’ALLAH contre tous les dangers',
        'الْوَكِيلُ',
      ),
      Name(
        'Al-Qawiyy',
        'Le Très-Fort, le Très-Puissant, Celui qui possède le Pouvoir complet',
        'Ya qawiyy : celui qui répète ce NOM, ALLAH le protègera, et le sauvera contre ses ennemis.',
        'الْقَوِيُّ',
      ),
      Name(
        'Al-Matin',
        'Le Très-Ferme, l\'Inébranlable qui jamais ne fléchit ou ne fatigue',
        'YA MATIN : celui qui répète ce NOM, ses problèmes seront résolus.',
        'الْمَتِينُ',
      ),
      Name(
        'Al-Wáliyy',
        'Le Très-Proche, l\'Ami, le Maître, le Tuteur',
        'YA WALIYY : celui qui répète ce NOM, ALLAH fera de lui un bon adorateur.',
        'الْوَلِيُّ',
      ),
      Name(
        'Al-Hamid',
        'Le Très-Louange, Celui qui est digne de louanges',
        'YA HAMID : celui qui répète ce NOM, ALLAH fera de lui une personne reconnaissante qui loue ALLAH.',
        'الْحَمِيدُ',
      ),
      Name(
        'Al-Mouh\'sy',
        'Celui dont le savoir cerne toute chose, Celui qui garde en compte',
        'YA MUHSI : celui qui répète ce nom 100 fois par jour, ALLAH lui pardonnera tous ses péchés.',
        'الْمُحْصِي',
      ),
      Name(
        'Al-Moubdi',
        'Celui qui produit sans modèle, Celui qui donne l\'Origine',
        'YA MUBDI : celui qui répète ce NOM avant de sortir de sa maison, ALLAH fera que sa journée soit heureuse et bénie.',
        'الْمُبْدِئُ',
      ),
      Name(
        'Al-Mou\'id',
        'Celui qui redonne existence après la mort, Celui qui réintègre, qui répète',
        'YA MU\'ID : celui qui répète ce nom 70 fois, à l’attention d’une personne qui est loin de lui, ALLAH la fera revenir saine et sauve.',
        'الْمُعِيدُ',
      ),
      Name(
        'Al-Mouh\'yi',
        'Celui qui fait vivre, qui donne la vie',
        'YA MUHYI : celui qui répète ce nom 7 fois chaque jour, ALLAH le sauvera de ses adversaires.',
        'الْمُحْيِي',
      ),
      Name(
        'Al-Moumit',
        'Celui qui fait mourir le vivant',
        'YA MUMIT : celui qui répète ce NOM plusieurs fois, vaincra ses ennemis.',
        'اَلْمُمِيتُ',
      ),
      Name(
        'Al-Hayy',
        'Le Vivant, dont la vie est différente de notre vie',
        'YA HAYY : celui qui répète ce NOM, aura une longue vie par la Grâce d’ALLAH.',
        'الْحَيُّ',
      ),
      Name(
        'Al-Qayyoum',
        'L\'Immuable, le Subsistant par Soi',
        'YA QAYYUM : celui qui répète ce nom, ALLAH lui évitera l’oubli et l’inadvertance.',
        'الْقَيُّومُ',
      ),
      Name(
        ///**********************

        'Al-Wadjid',
        'L\'Opulent, Celui qui trouve tout ce qu\'Il veut',
        'YA WAJID : celui qui répète ce NOM, ALLAH lui donnera un cœur qui se contente.',
        'الْوَاجِدُ',
      ),
      Name(
        'Al-Mádjid',
        'Le Noble, le Majestueux, Celui qui a plein de Gloire',
        'YA MAJID : celui qui répète ce nom, ALLAH lui illuminera le coeur.',
        'الْمَاجِدُ',
      ),
      Name(
        'Al-Wahid',
        'L\'Unique, sans associé, le Seul, l\'Un',
        'YA WAHID : celui qui répète ce NOM dans un endroit désert, ALLAH le sauvera de toute peur et l’écartera de toute hallucination.',
        'الْواحِدُ',
      ),
      Name(
        'As-Samad',
        'Le Maître absolu, le Soutien universel, Celui en qui on place sa confiance',
        'YA SAMAD : celui qui répète ce NOM, n’aura pas besoin des autres.',
        'الصَّمَدُ',
      ),
      Name(
        'Al-Qadir',
        'Le Puissant, le Déterminant, le Détenteur du pouvoir',
        'YA QADIR : celui qui répète ce NOM, ALLAH lui satisfera ses besoins.',
        'الْقَادِرُ',
      ),
      Name(
        'Al-Mouqtadir',
        'Celui qui a pouvoir sur tout, le Détenteur Absolu du pouvoir',
        'YA MUQTADIR : celui qui répète ce NOM, ALLAH lui montrera la VÉRITÉ.',
        'الْمُقْتَدِرُ',
      ),
      Name(
        'Al-Mouqaddim',
        'Celui qui met en avant, Celui qui précède ou devance',
        'YA MUQADDIM : celui qui répète ce NOM dans les champs de bataille, ou dans un endroit redoutable, ALLAH lui écartera le MAL.',
        'الْمُقَدِّمُ',
      ),
      Name(
        'Al-Mou\'akhkhir',
        'Celui qui met en arrière, Celui qui vient en dernier ou qui retarde',
        'YA MU’AKHKHIR : celui qui répète ce NOM 100 fois par jour, son cœur sera rempli de l’amour d’ALLAH.',
        'الْمُؤَخِّرُ',
      ),
      Name(
        'Al-Awwal',
        'Le Premier, dont l\'existence n\'a pas de commencement',
        'YA AWWAL :celui qui désire un enfant ou voyager avec quelqu’un, doit répéter ce NOM 1000 fois, pendant 40 vendredis.',
        'الأوَّلُ',
      ),
      Name(
        'Al-Akhir',
        'Le Dernier, dont l\'existence n\'a pas de fin',
        'YA AKHIR :celui qui répète ce NOM mènera une bonne vie, et aura une bonne mort.',
        'الآخِرُ',
      ),
      Name(
        'Az-Zahir',
        'L\'Extérieur, l\'Apparent',
        'YA ZAHIR : celui qui répète ce NOM 15 fois après la prière du vendredi, ALLAH illuminera son cœur d’une lumière divine.',
        'الظَّاهِرُ',
      ),
      Name(
        'Al-Batin',
        'L\'Intérieur, le Caché',
        'YA BATIN : celui qui répète ce NOM 3 fois par jour, ALLAH lui enseignera la VÉRITÉ et lui révélera le secret de l’existence de toute chose.',
        'الْبَاطِنُ',
      ),
      Name(
        'Al-Walí',
        'Le Maître très proche, Celui qui dirige',
        'YA WALI : celui qui répète ce NOM sur sa maison, celle-ci sera épargnée de tout danger.',
        'الْوَالِي',
      ),
      Name(
        'Al-Mouta\'ali',
        'Le Sublime, l\'Exalté, l\'Elevé, pur de tout attribut de la création',
        'YA MUTA\'ALI : celui qui répète ce NOM plusieurs fois aura la bienveillance de DIEU.',
        'الْمُتَعَالِي',
      ),
      Name(
        'Al-Barr',
        'Le Bon, le Bienveillant, le Bienfaisant, envers ses créatures',
        'YA BARR : celui qui répète ce NOM à son enfant, celui-ci sera protégé par ALLAH de tout danger.',
        'الْبَرُّ',
      ),
      Name(
        'At-Tawwab',
        'Celui qui ne cesse de revenir, d\'accueillir le repentir sincère de ses adorateurs et qui leur accorde Son Pardon',
        'YA TAWWAB : celui qui répète ce NOM, ALLAH acceptera son repentir.',
        'التَّوَابُ',
      ),
      Name(
        'Al-Mountaqim',
        'Le Vengeur, qui a le dessus sur Ses ennemis et les punit pour leurs péchés',
        'YA MUNTAQIM : celui qui répète ce NOM, ALLAH lui donnera la victoire sur ses ennemis.',
        'الْمُنْتَقِمُ',
      ),
      Name(
        'Al-Afouww',
        'Celui qui efface, l\'Indulgent dont le pardon est large',
        'YA AFUWW : celui qui répète ce NOM, ALLAH lui pardonnera ses péchés.',
        'العَفُوُّ',
      ),
      Name(
        'Ar-Raouf',
        'Le Très-Doux, le Très-Bienveillant, à la miséricorde extrême',
        'YA RA’OUF : celui qui répète ce NOM, ALLAH le bénira et le protégera.',
        'الرَّؤُوفُ',
      ),
      Name(
        'Malikoul-Moulk',
        'Le Possesseur du Royaume, qui contrôle son règne et donne un règne à qui Il veut',
        'YA MALIK AL MULK : celui qui répète ce NOM, ALLAH lui donnera de l’estime parmi les gens.',
        'الِكُ الْمُلْكِ',
      ),
      Name(
        'Zhoul Djalal Wal-Ikram',
        'Le Détenteur de la Majesté et de la Générosité, qui mérite d\'être Exalté et non renié',
        'THUL JALAL WAL IKRAM : celui qui répète ce NOM, ALLAH lui donnera la richesse et la fortune.',
        'الْجَلاَلِ الإكْرَامِ',
      ),
      Name(
        'Al-Mouqsit',
        'L\'Equitable, Celui qui rend justice, sans léser quiconque',
        'YA MUQSIT : celui qui répète ce NOM, sera épargné du mal du démon.',
        'الْمُقْسِطُ',
      ),
      Name(
        ///**********************

        'Al-Djami',
        'Celui qui réunit, Celui qui synthétise',
        'YA JAMI\' : celui qui répète ce NOM, après avoir perdu quelque chose la retrouvera, In-cha-ALLAH.',
        'الْجَامِعُ',
      ),
      Name(
        'Al-Ghaniyy',
        'Le Suffisant par soi, Celui qui n\'a besoin de personne',
        'YA GHANIYY : celui qui répète ce NOM, ALLAH satisfera ses besoins, et il ne désirera jamais ce qu’ont les autres.',
        'الْغَنِيُّ',
      ),
      Name(
        'Al-Moughni',
        'Celui qui confère la suffisance et satisfait les besoins de Ses créatures',
        'YA MUGHNI : celui qui répète ce NOM 10 fois les vendredis, ALLAH satisfera ses besoins.',
        'الْمُغْنِي',
      ),
      Name(
        'Al-Mani\'',
        'Le Défenseur, Celui qui empêche, Celui qui protège et donne victoire à Ses pieux croyants',
        'YA MANI : celui qui répète toujours ce NOM, ALLAH lui accordera une heureuse vie familiale.',
        'الْمَانِعُ',
      ),
      Name(
        'Ad-Dhar',
        'Celui qui contrarie, Celui qui peut nuire (à ceux qui L\'offensent)',
        'YA DARR : celui qui répète ce NOM, ALLAH améliorera sa situation et élèvera son RANG.',
        'الضَّارَّ',
      ),
      Name(
        'An-Nafi',
        'Celui qui accorde le profit, l\'Utile, Celui qui facilite à qui Il veut',
        'YA NAFI : celui qui répète ce NOM autant qu’il peut, ALLAH écartera de sa vie tout malheur.',
        'النَّافِعُ',
      ),
      Name(
        'An-Nour',
        'La Lumière',
        'YA NURR : celui qui répète continuellement ce NOM, ALLAH lui donnera une lumière intérieure qui illuminera son être.',
        'النُّورُ',
      ),
      Name(
        'Al-Hadi',
        'Le Guide',
        'YA HÀDI : celui qui répète ce NOM, ALLAH remplira son cœur par le SAVOIR temporel, la CONNAISSANCE et le SAVOIR spirituel.',
        'الْهَادِي',
      ),
      Name(
        'Al-Badi',
        'Le Novateur, Celui qui a créé toute chose et les a formées sans exemple précédent',
        'YA BADI\' : celui qui répète ce NOM 70 fois : de la manière suivante : « Ya Badî, as-samawati wa al-ard , anta ladi khalaqta kouli chay’in fi samawati wa al ard douna mital sabaq (c’est toi qui a créé toutes les choses qui existent dans les cieux et sur la terre du NÉANT, ALLAH le sauvera de ses ENNUIS).',
        'الْبَدِيعُ',
      ),
      Name(
        'Al-Baqi',
        'Le Permanent, dont la non- existence est impossible pour Lui',
        'YA baqi : celui qui répète ce NOM 100 fois avant le lever du soleil, sera sauf de tout danger durant toute sa vie.',
        'الْبَاقِي',
      ),
      Name(
        'Al-Waris',
        'L\'Héritier',
        'YA WARITH : celui qui répète ce NOM, ALLAH lui donnera une longue vie.',
        'الْوَارِثُ',
      ),
      Name(
        'Ar-Rachid',
        'Celui qui agit avec droiture, Celui qui dirige avec sagesse',
        'YA RASHID : celui qui répète ce NOM 1000 fois entre la prière du Maghrib et celle de l’Ichaa, tous ses problèmes seront résolus.',
        'الرَّشِيدُ',
      ),
      Name(
        'As-Sabour',
        'Le Patient, le Très-Constant, qui recule la punition des pécheurs',
        'YA SABUR : celui qui répète ce NOM 3000 fois alors qu’il se trouve dans des difficultés, ALLAH soulagera sa peine.',
        'الصَّبُورُ',
      ),
      ListTile(
        leading: Text("Websites used"),
        title: Text("Websites used"),
        subtitle: Text("""
1. http://www.hajij.com/fr/tawhid/item/10539-le-secret-des-99-noms-d-allah-asma-oul-housna
2. https://namesofallah.co.uk/ 
3. https://imamhussain.org/french/etudesetrecherches/17776
4. https://www.monorganiseur-ramadan.com/single-post/2018/06/03/al-kh%C3%A2fid-celui-qui-abaisse
 
 """),
      )
    ];
    return list;
  }
}
