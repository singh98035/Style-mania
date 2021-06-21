
class Product {
  final int id, stock;
  final double price;
  final String name, category, size, bannerImage, description,  genderType;
  final List<String> images;
  Product(
      {this.price,
        this.id,
        this.category,
        this.name,
        this.stock,
        this.size,
        this.bannerImage,
        this.images,
        this.description,
        this.genderType});
}

List<Product> products = [
  Product(
    id: 1,
    name: "Slub jersey T-shirt",
    category: "Mens T-Shirts",
    price: 799,
    stock: 8,
    size: "S, M, L, XL",
    description:
    "T-shirt in slub cotton jersey with sewn-in turn-ups at the sleeves. Rounded and slightly longer at the back.Composition Cotton 60\%,Polyester 40\% Art. No.0591466033",
    bannerImage: "assets/images/1a.jpg",
    images: [
      "assets/images/1b.jpg",
      "assets/images/1c.jpg",
      "assets/images/1d.jpg"
    ],
      genderType: "Men"
  ),
  Product(
    id: 2,
    name: "T-shirt Long Fit",
    category: "Mens T-Shirts",
    price: 699,
    stock: 8,
    size: "S, M, L, XL",
    description:
    "Long, round-necked T-shirt in soft jersey with a curved hem. Composition Cotton 100\% Art. No.0598755002",
    bannerImage: "assets/images/2a.jpg",
    images: [ "assets/images/2b.jpg"],
      genderType: "Men"
  ),
  Product(
    id: 3,
    name: "Linen-blend wrapover dress",
    category: "Women's Dress",
    price: 2699,
    stock: 17,
    size: "S, M, L, XL",
    description:
    "Short, V-neck dress in a linen and cotton weave with a wrapover front and "
        "short puff sleeves with narrow elastication. Seam at the waist with "
        "pleats for added width and ties at one side. Unlined. Composition - Linen 55\%, Cotton 45\% Art. - No.0954579004",
    bannerImage: "assets/images/3a.jpg",
    images: ["assets/images/3b.jpg", "assets/images/3c.jpg"],
      genderType: "Women"
  ),
  Product(
    id: 4,
    name: "Skinny Jeans",
    category: "Mens Bottomwear",
    price: 1499,
    stock: 8,
    size: "S, M, L, XL",
    description:
    "5-pocket jeans in washed stretch denim with a regular waist, zip fly and "
        "button, and skinny legs. Fit Skinny fit Composition Pocket lining: "
        "Polyester 100\% Cotton 80\%, Polyester 19\%, Elastane 1\% Art. No.0720504001",
    bannerImage: "assets/images/4a.jpg",
    images: [
      "assets/images/4b.jpg",
    ],
      genderType: "Men"
  ),
  Product(
    id: 5,
    name: "Light blue Skinny Jeans",
    category: "Mens Bottomwear",
    price: 1499,
    stock: 8,
    size: "S, M, L, XL",
    description:
    "5-pocket jeans in washed stretch denim with a regular waist, zip fly and button, and skinny legs. Fit-Skinny fit"
        " Composition - Shell: Cotton 88\%, Polyester 11\%, Elastane 1\% Pocket lining: Cotton 100\% Art. No.0720504013",
    bannerImage: "assets/images/5a.jpg",
    images: ["assets/images/5b.jpg"],
      genderType: "Men"
  ),
  Product(
    id: 6,
    name: "Slim Jeans",
    category: "Mens Bottomwear",
    price: 1499,
    stock: 4,
    size: "S, M, L, XL",
    description:
    "5-pocket jeans in washed denim with a regular waist, zip fly and slim legs. "
        "Fit - Slim fit Composition - Cotton 75\%, Polyester 24\%, Elastane 1\% "
        "Pocket lining: Cotton 100\% Art. No.0636207005",
    bannerImage: "assets/images/6a.jpg",
    images: ["assets/images/6b.jpg"],
      genderType: "Men"
  ),
  Product(
    id: 7,
    name: "Skinny Cropped Jeans",
    category: "Mens Bottomwear",
    price: 1999,
    stock: 18,
    size: "S, M, L, XL",
    description:
    "5-pocket jeans in washed, stretch denim with worn details. Regular waist, "
        "zip fly and button, and slightly shorter, skinny legs. Fit-Skinny fit "
        "Composition Shell: Cotton 87\%, Polyester 12\%, Elastane 1\%Pocket "
        "lining: Cotton 100\% Art. No.0868115005",
    bannerImage: "assets/images/7a.jpg",
    images: [
      "assets/images/7b.jpg",
      "assets/images/7c.jpg",
      "assets/images/7d.jpg"
    ],
      genderType: "Men"
  ),
  Product(
    id: 8,
    name: "Hybrid Regular Tapered Joggers",
    category: "Mens Bottomwear",
    price: 2699,
    stock: 34,
    size: "S, M, L, XL",
    description:
    "5-pocket joggers in stretch denim. Regular, drawstring waist with covered "
        "elastication, and a zip fly with a button. Gently tapered legs with good "
        "room for movement over the thighs and knees, and covered elastication at the "
        "hems. Made using Lycra® Hybrid Technology for exceptional softness and "
        "comfort without compromising the authentic denim look. Some of the cotton "
        "content of the joggers is recycled. FitRegular fit CompositionCotton 77\%, Polyester 21\%, Elastane 2\% Art. No.0952016003",
    bannerImage: "assets/images/8a.jpg",
    images: [
      "assets/images/8b.jpg",
      "assets/images/8c.jpg",
      "assets/images/8d.jpg",
      "assets/images/8e.jpg"
    ],
      genderType: "Men"
  ),
  Product(
    id: 9,
    name: "Patterned resort shirt",
    category: "Mens Topwear",
    price: 799,
    stock: 4,
    size: "S, M, L, XL",
    description:
    "Short-sleeved shirt in a patterned viscose weave with a resort collar, "
        "French front and straight-cut hem. Relaxed Fit – a straight fit with "
        "good room for movement creating a comfortable, relaxed silhouette. "
        "Fit-Relaxed fit Composition-Viscose 100\% Art. No.0656677035",
    bannerImage: "assets/images/9a.jpg",
    images: [
      "assets/images/9b.jpg",
      "assets/images/9c.jpg",
      "assets/images/9d.jpg"
    ],
      genderType: "Men"
  ),
  Product(
    id: 10,
    name: "Cheacked Twill shirt jacket",
    category: "Mens Topwear",
    price: 2299,
    stock: 7,
    size: "S, M, L, XL",
    description:
    "Shirt jacket in twill with a collar, buttons down the front and a yoke at "
        "the back. Flap chest pockets with a button, and long sleeves with "
        "buttoned cuffs. Composition - Polyester 71\%, Acrylic 29\% Art. No.0875217009",
    bannerImage: "assets/images/10a.jpg",
    images: [
      "assets/images/10b.jpg",
      "assets/images/10c.jpg",
      "assets/images/10d.jpg"
    ],
      genderType: "Men"
  ),
  Product(
    id: 11,
    name: "Cotton flannel shirt",
    category: "Mens Topwear",
    price: 1499,
    stock: 4,
    size: "S, M, L, XL",
    description:
    "Shirt in soft, checked cotton flannel with a turn-down collar, classic front, "
        "two open chest pockets and a yoke at the back. Long sleeves with adjustable "
        "buttoning at the cuffs and a sleeve placket with a link button, and a "
        "rounded hem. FitRegular fit CompositionCotton 100\% Art. No.0908891001",
    bannerImage: "assets/images/11a.jpg",
    images: ["assets/images/11b.jpg"],
      genderType: "Men"
  ),
  Product(
    id: 12,
    name: "Relaxed Fit Short-sleeve shirt",
    category: "Mens Topwear",
    price: 1299,
    stock: 14,
    size: "S, M, L, XL",
    description:
    "Short-sleeved shirt in cotton poplin with a turn-down collar, French front "
        "and a yoke at the back. Open chest pocket, a straight-cut hem and slits "
        "in the sides. Relaxed Fit – a straight fit with good room for movement "
        "creating a comfortable, relaxed silhouette. Fit - Relaxed fit Composition - Cotton 100\%  Art. No.0964021001",
    bannerImage: "assets/images/12a.jpg",
    images: [
      "assets/images/12b.jpg",
      "assets/images/12c.jpg",
      "assets/images/12d.jpg",
      "assets/images/12e.jpg"
    ],
      genderType: "Men"
  ),
  Product(
    id: 13,
    name: "Easy-iron shirt Slim Fit",
    category: "Mens Topwear",
    price: 1299,
    stock: 34,
    size: "S, M, L, XL",
    description:
    " Shirt in woven fabric with an easy-iron finish. Turn-down collar, classic "
        "front and darts and a yoke at the back. Long sleeves, narrow cuffs with "
        "adjustable buttoning, and a rounded hem. Slim Fit – a fit with narrow "
        "shoulders and a tapered waist for a fitted silhouette. SizeThe model is "
        "189cm/6'2 and wears a size L/L FitSlim fit CompositionPolyester 65\%, "
        "Cotton 35\% Art. No.0781758006",
    bannerImage: "assets/images/13a.jpg",
    images: [
      "assets/images/13b.jpg",
      "assets/images/13c.jpg",
      "assets/images/13d.jpg"
    ],
      genderType: "Men"
  ),
  Product(
    id: 14,
    name: "Airy dress",
    category: "Women's Dress",
    price: 1499,
    stock: 17,
    size: "S, M, L, XL",
    description:
    "Short dress in an airy weave made from a viscose blend. Wide, gathered neckline, "
        "3/4-length sleeves with narrow elastication at the cuffs, and a gathered seam at "
        "the hem for added width. Unlined. Composition-Viscose 82\%, Polyamide 18\% Art. No.0998905001",
    bannerImage: "assets/images/14a.jpg",
    images: ["assets/images/14b.jpg"],
      genderType: "Women"
  ),
  Product(
    id: 15,
    name: "Airy dress",
    category: "Women's Dress",
    price: 1499,
    stock: 17,
    size: "S, M, L, XL",
    description:
    "Short dress in an airy weave made from a viscose blend. Wide, gathered "
        "neckline, 3/4-length sleeves with narrow elastication at the cuffs, "
        "and a gathered seam at the hem for added width. Unlined. Composition-Viscose 82\%, Polyamide 18\% Art. No.0998905001",
    bannerImage: "assets/images/15a.jpg",
    images: ["assets/images/15b.jpg", "assets/images/15c.jpg"],
      genderType: "Women"
  ),
  Product(
    id: 16,
    name: "Cotton dress",
    category: "Women's Dress",
    price: 1499,
    stock: 17,
    size: "S, M, L, XL",
    description:
    "Short dress in a cotton weave. V-neck with a decorative knot and cut-out sections "
        "front and back. Concealed zip in one side, short puff sleeves with narrow "
        "elastication, a seam at the waist with narrow elastication at the back, "
        "and a gently flared skirt. Unlined. Composition - Cotton 100\% Art. No.0972824001",
    bannerImage: "assets/images/16a.jpg",
    images: ["assets/images/16b.jpg", "assets/images/16c.jpg"],
      genderType: "Women"
  ),
  Product(
    id: 17,
    name: "Smocked bandeau dress",
    category: "Women's Dress",
    price: 1499,
    stock: 17,
    size: "S, M, L, XL",
    description:
    "Calf-length dress in crisp cotton poplin with wide smocking over the bust, narrow, "
        "detachable, adjustable shoulder straps and a softly draping, A-line skirt. "
        "Unlined. Made from organic cotton, this dress is part of our hand-painted meadow "
        "flowers collection. The pattern was developed by our print designers Kavita, Abigail, "
        "Holly and Florentin, who picked their favourite wild flowers and recreated them in "
        "watercolour. Composition-Cotton 100\% Art.- No.0965889003",
    bannerImage: "assets/images/17a.jpg",
    images: ["assets/images/17b.jpg", "assets/images/17c.jpg"],
      genderType: "Women"
  ),
  Product(
    id: 18,
    name: "Piqué polo shirt Muscle Fit",
    category: "Mens T-Shirts",
    price: 999,
    stock: 13,
    size: "S, M, L, XL",
    description: "Polo shirt in cotton piqué with a ribbed collar, two buttons "
        "at the top, saddle shoulders and short sleeves with ribbed trims. Muscle "
        "Fit – a fit designed to showcase the body’s physique with narrow shoulders "
        "and tapered sleeves to create a flattering silhouette. Fit - Muscle fit "
        "Composition - Cotton 97\\%, Elastane 3\\% Art. No. - 0725358010",
    bannerImage: "assets/images/18a.jpg",
    images: ["assets/images/18b.jpg", "assets/images/18c.jpg"],
      genderType: "Men"
  ),
  Product(
    id: 19,
    name: "Relaxed Fit T-shirt",
    category: "Mens T-Shirts",
    price: 1299,
    stock: 8,
    size: "S, M, L, XL",
    description: "T-shirt in soft, printed cotton jersey. Relaxed fit with "
        "dropped shoulders and a round neckline with a narrow trim. Fit - Relaxed "
        "fit Composition - Cotton 100\% Art. No. - 0972640001",
    bannerImage: "assets/images/19a.jpg",
    images: ["assets/images/19b.jpg"],
      genderType: "Men"
  ),
  Product(
    id: 20,
    name: "Cotton polo shirt",
    category: "Mens T-Shirt",
    price: 799,
    stock: 8,
    size: "S, M, L, XL",
    description:
    "Polo shirt in cotton piqué with a ribbed collar, button placket, "
        "short sleeves with ribbed trims, and slits in the sides. Composition - "
        "Cotton 100% Art. No. - 0816759039",
    bannerImage: "assets/images/20a.jpg",
    images: ["assets/images/20b.jpg", "assets/images/20c.jpg"],
      genderType: "Men"
  ),
  Product(
    id: 21,
    name: "Cropped Top",
    category: "Womens Topwear",
    price: 699,
    stock: 8,
    size: "S, M, L, XL",
    description:
    "Cropped top in cotton jersey with a round neckline and short sleeves. Overlocked edges around the sleeves and hem.",
    bannerImage: "assets/images/21a.jpg",
    images: ["assets/images/21b.jpg", "assets/images/21c.jpg"],
      genderType: "Women"
  ),
  Product(
    id: 22,
    name: "Jersey sleeveless top",
    category: "Womens Topwear",
    price: 599,
    stock: 8,
    size: "S, M, L, XL",
    description:
    "Relaxed-fit sleeveless top in soft cotton jersey with a round, rib-trimmed neckline.",
    bannerImage: "assets/images/22a.jpg",
    images: ["assets/images/22b.jpg", "assets/images/22c.jpg"],
      genderType: "Women"
  ),
  Product(
    id: 23,
    name: "Oversized printed T-shirt",
    category: "Womens Topwear",
    price: 1299,
    stock: 8,
    size: "S, M, L, XL",
    description:
    "Oversized T-shirt in soft cotton jersey with a print motif on the front, a round, ribbed neckline and gently dropped shoulders.",
    bannerImage: "assets/images/23a.jpg",
    images: ["assets/images/23b.jpg", "assets/images/23c.jpg"],
      genderType: "Women"
  ),
  Product(
    id: 24,
    name: "V-neck top",
    category: "Womens Topwear",
    price: 799,
    stock: 8,
    size: "S, M, L, XL",
    description:
    "Sleeveless top in soft jersey with a V-neck and decorative gathers at the shoulders.",
    bannerImage: "assets/images/24a.jpg",
    images: ["assets/images/24b.jpg", "assets/images/24c.jpg"],
      genderType: "Women"
  ),
  Product(
    id: 25,
    name: "Rib-knit top",
    category: "Womens Topwear",
    price: 1299,
    stock: 4,
    size: "S, M, L, XL",
    description:
    "Straight-style top in an airy rib knit with a round neckline, dropped shoulders, short sleeves and high slits in the sides.",
    bannerImage: "assets/images/25a.jpg",
    images: ["assets/images/25b.jpg", "assets/images/25c.jpg"],
      genderType: "Women"
  ),
  Product(
    id: 26,
    name: "Paper bag trousers",
    category: "Womens Bottomwear",
    price: 2299,
    stock: 4,
    size: "S, M, L, XL",
    description:
    "Cropped trousers in lightweight, organic cotton sweatshirt fabric. "
        "Relaxed fit with a high, elasticated paper bag waist with belt loops, a frill "
        "trim and rope-look tie belt. Pockets in the side seams and wide legs with a small slit at the side of hems.",
    bannerImage: "assets/images/26a.jpg",
    images: ["assets/images/26b.jpg", "assets/images/26c.jpg"],
      genderType: "Women"
  ),
  Product(
    id: 27,
    name: "Linen joggers",
    category: "Womens Bottomwear",
    price: 2299,
    stock: 8,
    size: "S, M, L, XL",
    description:
    "Ankle-length joggers in airy linen with a regular, elasticated drawstring waist and diagonal side pockets.",
    bannerImage: "assets/images/27a.jpg",
    images: ["assets/images/27b.jpg", "assets/images/27c.jpg"],
      genderType: "Women"
  ),
  Product(
    id: 28,
    name: "High Waist Twill trousers",
    category: "Womens Bottomwear",
    price: 1549,
    stock: 8,
    size: "S, M, L, XL",
    description:
    "5-pocket, ankle-length trousers in cotton twill. High waist with covered elastication and a small frill trim, a zip fly and button, and wide, gently tapered legs.",
    bannerImage: "assets/images/28a.jpg",
    images: ["assets/images/28b.jpg", "assets/images/28c.jpg"],
      genderType: "Women"
  ),
  Product(
    id: 29,
    name: "Wide twill trousers",
    category: "Womens Bottomwear",
    price: 1499,
    stock: 4,
    size: "S, M, L, XL",
    description:
    "5-pocket trousers in washed cotton twill with a high waist, zip fly and button and wide, straight legs.",
    bannerImage: "assets/images/29a.jpg",
    images: ["assets/images/29b.jpg", "assets/images/29c.jpg"],
      genderType: "Women"
  ),
  Product(
    id: 30,
    name: "Joggers High Waist",
    category: "Womens Bottomwear",
    price: 1499,
    stock: 4,
    size: "S, M, L, XL",
    description:
    "Joggers in sweatshirt fabric with a high elasticated drawstring waist, side pockets and elasticated hems. Soft brushed inside.",
    bannerImage: "assets/images/30a.jpg",
    images: ["assets/images/30b.jpg", "assets/images/30c.jpg"],
      genderType: "Women"
  )
];