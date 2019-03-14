require 'faker'

BookingItem.destroy_all
Booking.destroy_all
TempClosetItem.destroy_all
TempCloset.destroy_all
Item.destroy_all
Pack.destroy_all
Cart.destroy_all
Traveler.destroy_all
Packer.destroy_all

AVATARIMAGES = [
                "https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                "https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                "https://images.pexels.com/photos/769772/pexels-photo-769772.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                "https://images.pexels.com/photos/1516680/pexels-photo-1516680.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                "https://images.pexels.com/photos/1239288/pexels-photo-1239288.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                "https://images.pexels.com/photos/842980/pexels-photo-842980.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                "https://images.pexels.com/photos/1139743/pexels-photo-1139743.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                "https://images.pexels.com/photos/1212984/pexels-photo-1212984.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                "https://images.pexels.com/photos/1024311/pexels-photo-1024311.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                "https://images.pexels.com/photos/775358/pexels-photo-775358.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                "https://images.pexels.com/photos/227294/pexels-photo-227294.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"
                ]

USERIMAGES = [
              "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
              "https://images.pexels.com/photos/555790/pexels-photo-555790.png?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
              "https://images.pexels.com/photos/1043471/pexels-photo-1043471.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
              "https://images.pexels.com/photos/697509/pexels-photo-697509.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
              "https://images.pexels.com/photos/247206/pexels-photo-247206.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
              "https://images.pexels.com/photos/245239/pexels-photo-245239.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
              "https://images.pexels.com/photos/965324/pexels-photo-965324.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
              "https://images.pexels.com/photos/1689731/pexels-photo-1689731.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
              "https://images.pexels.com/photos/1722198/pexels-photo-1722198.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
              "https://images.pexels.com/photos/762020/pexels-photo-762020.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
              "https://images.pexels.com/photos/1001180/pexels-photo-1001180.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
              ]

PACKIMAGES = [
"https://images.pexels.com/photos/57750/pexels-photo-57750.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
"https://images.pexels.com/photos/322207/pexels-photo-322207.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
"https://images.pexels.com/photos/298863/pexels-photo-298863.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
"https://images.pexels.com/photos/297933/pexels-photo-297933.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
"https://images.pexels.com/photos/1639729/pexels-photo-1639729.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
"https://images.pexels.com/photos/1598507/pexels-photo-1598507.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
"https://images.pexels.com/photos/934070/pexels-photo-934070.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
"https://images.pexels.com/photos/934063/pexels-photo-934063.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260",
"https://images.pexels.com/photos/8434/holiday-trip-packaging-8434.jpg?auto=compress&cs=tinysrgb&h=750&w=1260",
"https://images.pexels.com/photos/934069/pexels-photo-934069.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260",
"https://images.pexels.com/photos/250288/pexels-photo-250288.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260",
"https://images.pexels.com/photos/1282316/pexels-photo-1282316.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260",
"https://images.pexels.com/photos/404171/pexels-photo-404171.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260",
"https://images.pexels.com/photos/1670770/pexels-photo-1670770.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260",
"https://images.pexels.com/photos/298864/pexels-photo-298864.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260",
"https://images.pexels.com/photos/581087/pexels-photo-581087.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
"https://www.americaninno.com/wp-content/uploads/wpallimport/files/3/files/2017/01/Screen-Shot-2017-01-09-at-5.57.51-PM.png",
"https://urbantastebud.com/wp-content/uploads/2017/05/17547022_1504936966205632_2742459576914367218_o.jpg",
"https://images.askmen.com/1080x540/entertainment/guy_gear/five-four-comes-to-canada-1089351-TwoByOne.jpg",
"https://images.askmen.com/hombre_vivo/fashion/0-reasons-to-subscribe-to-five-four-138662214357.jpg",
]

TOKYOLOCATIONS = [
              "Shibuya, Tokyo",
              "Ginza, Tokyo",
              "Shinjuku, Tokyo",
              "Meguro, Tokyo",
              "Roppongi, Tokyo",
              "Minato, Tokyo",
              "Gotanda, Tokyo",
              "Shinagawa, Tokyo",
              "Shin-Okubo, Tokyo",
              "Chiba, Tokyo"
              ]
STYLES = [
'Jock',
'Prepster',
'Hipster',
'Corporate',
'Hip Hop',
'Outdoorsy',
'Rockstar',
'Vintage',
]

SIZES = [
'XS',
'S',
'M',
'L',
'XL'
]

ITEMCATEGORY = [
"Top",
"Bottom",
"Blazer",
"Miscellaneous",
"Special",
"Extras",
"Outerwear",
"Hygiene",
]

PACKNAMES = [
"Globe Trekker",
"Minimalist Millenial",
"Hotline Bling",
"Jet-Setter",
"The Dandy",
"Rebel Rockstar",
"Mr. Fundamental",
"Street Artist",
"Prepster Package",
"The Playboy",
"Corporate Powerhouse",
"The Jock",
"All-American Throwback"
]

PACKDESCRIPTIONS = [
"Function, fashion, and comfort.",
"Create the ultimate refinement.",
"Ideal for backpacking.",
"Plaid flannels and corduroys in natural tones.",
"Technical sportswear.",
"Inspired by: H&M, Topman, Kenzo.",
"The layered parkas and high-tops speak volumes.",
"There is no such thing as too much Vineyard Vines.",
"Dress for results.",
"A full-fledged classic spirit .",
"The North Face and Patagonia - END OF STORY",
"For the inner rocker child within you.",
"Just do it."
]

TOPSNAMES = [
"Easy-iron Shirt",
"Viscose Shirt",
"Stretch Shirt",
"Oxford Shirt",
"Flannel Shirt",
"Twill Shirt Regular",
"Denim Shirt",
"Muscle Fit Shirt",
"Corduroy Shirt",
"Premium Cotton Shirt"
]

TOPSDESCRIPTIONS = [
"Back: Length: 79.5 cm (Size L) Sleeve: Length: 67.25 cm",
"Back: Length: 76.0 cm (Size L) Sleeve: Length: 67.5 cm ",
"Long sleeve  FIT Slim fit  COMPOSITION Cotton 74%",
"Long sleeve  FIT Regular fit  COMPOSITION Cotton 100% ",
"Back: Length: 79.0 cm (Size M) Shoulder: Width: 48.5 cm",
"Back: Length: 79.0 cm (Size M)"
]

BOTTOMSNAMES = [
"Skinny Fit Suit Pants",
"Twill Pants",
"Cotton Joggers",
"Suit Pants",
"Cargo Pants",
"Stretch Chino",
"Stretch Chambray",
"Ludlow Heather Twill"
]

BOTTOMSDESCRIPTIONS = [
"Waist: Circumference: 93.0 cm (Size 36R).",
"Long Regular waist  FIT Skinny fit.",
"Cotton 98%, Elastane 2%.",
"(Size 36R) Ankle-length  FIT Skinny fit.",
"14 leg opening (based on size 32/33).",
"Slim through hip and thigh."
]

TOPSIMAGES = [
              "https://im.uniqlo.com/images/jp/pc/img/feature/uq/topscollection/men/190105-19SS_tops_M_link_knitcollection.jpg",
              "https://im.uniqlo.com/images/jp/pc/img/feature/uq/topscollection/men/190111-19SS_tops_M_link_sweat.jpg",
              "https://im.uniqlo.com/images/jp/pc/img/feature/uq/topscollection/men/190105-19SS_tops_M_link_cardigan.jpg",
              "https://im.uniqlo.com/images/jp/pc/img/feature/uq/topscollection/men/190215-19SS_tops_M_link_dressshirts.jpg",
              "https://im.uniqlo.com/images/jp/pc/img/feature/uq/topscollection/men/190215-19SS_tops_M_link_casualshirts.jpg",
              "https://im.uniqlo.com/images/jp/pc/img/feature/uq/topscollection/men/190105-19SS_tops_M_link_tshirt.jpg",
              "https://im.uniqlo.com/images/jp/pc/img/feature/uq/topscollection/men/190208-19SS_tops_M_link_dressshirts.jpg",
              "https://im.uniqlo.com/images/jp/pc/goods/416718/item/08_416718_middles.jpg",
              "https://im.uniqlo.com/images/jp/pc/goods/413433/item/69_413433_middles.jpg",
              "https://im.uniqlo.com/images/jp/pc/goods/413436/item/03_413436_middles.jpg"
              ]

BOTTOMSIMAGES = [
              "https://im.uniqlo.com/images/jp/pc/goods/413156/item/68_413156_middles.jpg",
              "https://im.uniqlo.com/images/jp/pc/goods/416454/item/56_416454_middles.jpg",
              "https://im.uniqlo.com/images/jp/pc/goods/416976/item/69_416976_middles.jpg",
              "https://im.uniqlo.com/images/jp/pc/goods/416458/item/33_416458_middles.jpg",
              "https://im.uniqlo.com/images/jp/pc/goods/413154/item/09_413154_middles.jpg",
              "https://im.uniqlo.com/images/jp/pc/goods/418170/item/31_418170_middles.jpg",
              "https://im.uniqlo.com/images/jp/pc/goods/416455/item/06_416455_middles.jpg",
              "https://im.uniqlo.com/images/jp/pc/goods/416457/item/08_416457_middles.jpg",
              "https://im.uniqlo.com/images/jp/pc/goods/416459/item/06_416459_middles.jpg",
              "https://im.uniqlo.com/images/jp/pc/goods/414654/item/64_414654_middles.jpg"
              ]

BELTS = [
  "https://im.uniqlo.com/images/jp/pc/goods/413069/item/09_413069_middles.jpg",
  "https://im.uniqlo.com/images/jp/pc/goods/415573/item/37_415573_middles.jpg",
  "https://im.uniqlo.com/images/jp/pc/goods/416101/item/38_416101_middles.jpg"
]

DURATIONS = ["3-4 days", "7-8 days", "14-15 days"]

PACKPRICES = [6000, 10000, 18000]

UPSELLS = [
"https://www.conveniencekits.com/picts/products/500.jpg",
"https://thedailywant.com/wp-content/uploads/2017/06/harrys-travel-shave-kit.jpg"
]

DONDRAPERTOPS = [
"https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dw53c499fe/hi-res/FON0333WHT_a.jpg",
"https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dwf9d1a2da/hi-res/FON0409SKY_c.jpg",
"https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dw8ecfac06/hi-res/FOR2048PNK_a.jpg",
"https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dwdb002a08/hi-res/FOB0306TEL_a.jpg",
"https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dw0e1dcf88/hi-res/FOB0308NAV_a.jpg",
"https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dw1db4033e/hi-res/FOB0338SWT_a.jpg",
"https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dw4c30bb3f/hi-res/FON0960LSK_a.jpg",
"https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dw9e105aff/hi-res/CSN0234RYL_a.jpg",
"https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dw828bd065/hi-res/FOL0153WHT_a.jpg",
"https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dw77573435/hi-res/FOL0206HWT_a.jpg",
"https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dwb8b31993/hi-res/JEP0317WHT_a.jpg",
"https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dw10f41cfb/hi-res/FOB0340BLU_a.jpg",
"https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dw10f41cfb/hi-res/FOB0340BLU_a.jpg",
"https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dw212f278c/hi-res/JEP0327DOR_a.jpg",
"https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dwf4af94be/hi-res/JEP0326NAV_a.jpg"
]

DONDRAPERBOTTOMS = [
"https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dw9dea2b4b/hi-res/TRT0227WNV_a.jpg",
"https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dwe84cae28/hi-res/TRC0184NAV_a.jpg",
"https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dw4a6e4312/hi-res/TRT0230STN_a.jpg",
"https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dw00bea9b4/hi-res/SUB0002BLK_a.jpg",
"https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dw295dbf90/hi-res/SUB0429GRY_a.jpg",
"https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dwf5d61afa/hi-res/SUB0381AFB_a.jpg",
"https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dwff23005e/hi-res/TRH0032NAV_a.jpg",
"https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dwf5de01a7/hi-res/TRH0033AFB_a.jpg",
"https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dwd72ee061/hi-res/TRH0033TAN_a.jpg",
"https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dw54b29cca/hi-res/TRT0123AFB_a.jpg",
"https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dwb98ee8ed/hi-res/TRT0124NAV_a.jpg",
"https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dwb262b30c/hi-res/TRT0123OLV_a.jpg"
]

TRAVELTOILETRIES = [
"https://static.independent.co.uk/s3fs-public/thumbnails/image/2012/09/02/19/10-best-9.jpg",
"https://static.independent.co.uk/s3fs-public/thumbnails/image/2012/09/02/21/10-best-10.jpg",
"https://static.independent.co.uk/s3fs-public/thumbnails/image/2012/09/02/19/10best-4.jpg",
"https://www.conveniencekits.com/blog/picts/blog/139-2.jpg",
"https://www.conveniencekits.com/picts/products/500.jpg",
"https://www.conveniencekits.com/picts/products/1014.jpg"
]

SOCKPACKS = [
"https://www.stance.com/dw/image/v2/BBBN_PRD/on/demandware.static/-/Sites-masterCatalog_Stance/default/dwd2b47fc0/prod_images/M545D16EMP_BLK_ALT_01.jpg",
"https://www.stance.com/dw/image/v2/BBBN_PRD/on/demandware.static/-/Sites-masterCatalog_Stance/default/dw25155e67/prod_images/M545D16RET_BLK_ALT_01.jpg",
"https://www.stance.com/dw/image/v2/BBBN_PRD/on/demandware.static/-/Sites-masterCatalog_Stance/default/dw9870e537/prod_images/M545D16ROG_BLK_ALT_01.jpg",
"https://www.stance.com/dw/image/v2/BBBN_PRD/on/demandware.static/-/Sites-masterCatalog_Stance/default/dw4e205a88/prod_images/M556D18ICP_MUL.jpg",
"https://www.stance.com/dw/image/v2/BBBN_PRD/on/demandware.static/-/Sites-masterCatalog_Stance/default/dwc48bcdcf/prod_images/M556D18ICP_BLK.jpg",
"https://www.stance.com/dw/image/v2/BBBN_PRD/on/demandware.static/-/Sites-masterCatalog_Stance/default/dw2685db41/prod_images/MD17PKDRO_MUL.jpg",
"https://www.stance.com/dw/image/v2/BBBN_PRD/on/demandware.static/-/Sites-masterCatalog_Stance/default/dw655553aa/prod_images/MD17PKSEI_MUL.jpg"
]

MEUNDIES = [
"https://meundies.imgix.net/spree/product_slides/mobile_images/000/008/165/original/WEBSITE-Packs_3-6-10_BoyShort_Classic_1350X1350_10P.jpg",
"https://meundies.imgix.net/spree/product_slides/mobile_images/000/008/152/original/WEBSITE-Packs_3-6-10_BoyShort_Classic_1350X1350_6P.jpg",
"https://meundies.imgix.net/spree/product_slides/mobile_images/000/008/124/original/WEBSITE-Packs_3-6-10_BoyShort_Classic_1350X1350_3P.jpg",
"https://meundies.imgix.net/spree/product_slides/mobile_images/000/008/327/original/1350X1350_BoxerBrief_Throwback_10P.jpg",
"https://meundies.imgix.net/spree/product_slides/mobile_images/000/008/251/original/1350X1350_BoxerBrief_Throwback_3P.jpg"
]

CULTURAL = [
"https://www.dhresource.com/0x0s/f2-albu-g8-M01-E9-43-rBVaVFwi-82Acy53AABno7TAYtM891.jpg/male-cool-traditional-japanese-kimono-men.jpg",
"https://www.dhresource.com/0x0s/f2-albu-g7-M01-AB-C4-rBVaSVq5FBmAfijaAAHb6O_5YAA906.jpg/autumn-traditional-japanese-kimono-pajamas.jpg",
"https://www.tsuru.fr/7373-large_default/japanese-traditional-black-cotton-yukata-kimono-general-hideyoshi-kanji-for-men.jpg",
"https://www.nipponandco.fr/7393-large_default/japanese-traditional-black-cotton-yukata-kimono-diamond-pattern-for-men.jpg",
"https://www.nipponandco.fr/9444-large_default/japanese-traditional-black-cotton-yukata-kimono-ancient-coins-for-men.jpg",
"https://www.tsuru.fr/9436-large_default/kimono-yukata-traditionnel-japonais-noir-en-coton-dragon-et-faucon-pour-homme.jpg"
]

WEEB = [
"http://www.thejasperz.com/wp-content/uploads/2017/02/Akira-Leather-Jacket-Back-1.jpg",
"https://cdn.shopify.com/s/files/1/0758/2735/products/77954a74a1bf64c1e45a18c71c2458c5_1024x1024.jpg",
"http://images.primark.com/productsimages/R35397147199366-large.jpg",
"http://derf9v1xhwwx1.cloudfront.net/image/upload/q_60/cprd/catalog/product//d/r/dragon-ball-z-orange-black-bom-sm_1.jpg",
"https://r9y3r7f3.stackpathcdn.com/wp-content/uploads/shingeki-no-kyojin-survey-corps-jacket-01.jpg",
"https://cdn.shopify.com/s/files/1/1089/5480/products/A022-735C-00-5.jpg"
]

SHAVEKITS = [
"https://www.jcrew.com/s7-img-facade/A3965_EF5888?fmt=jpeg",
"https://www.harrys.com/harrys-cdnx-prod/assets/images/index_images/attachments/7bb0b3ca7972df77e6a7dbe552510ccda8decfb3.jpg",
"https://uncrate.com/p/2016/06/harrys.jpg"
]

DONDRAPERPACKPHOTO = "https://cdn-images-1.medium.com/max/1600/1*bU77rAT955Qeo0xAL45c5Q.jpeg"

puts "Creating seeds."

puts "Creating Traveler Seeds"

Traveler.create!(
    first_name: "Jeff",
    last_name: "Monteiro",
    photo_url: "https://avatars2.githubusercontent.com/u/43455638",
    biography: "What's up! Huge travel junkie, originally from the DIRTY JERZZZ! Some of my other interests are reading #{Faker::DcComics.hero} comics and eating #{Faker::Dessert.variety}.",
    email: "jsizzle@gmail.com",
    password: "secret"
    )

Traveler.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    photo_url: AVATARIMAGES.sample,
    biography: "What's up! Huge travel junkie, originally from #{Faker::Address.country}! Some of my other interests are reading #{Faker::DcComics.hero} comics and eating #{Faker::Dessert.variety}.",
    email: "traveler@gmail.com",
    password: "tsecret"
    )

2.times do
  Traveler.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    photo_url: AVATARIMAGES.sample,
    biography: "What's up! Huge travel junkie, originally from #{Faker::Address.country}! Some of my other interests are reading #{Faker::DcComics.hero} comics and eating #{Faker::Dessert.variety}.",
    email: "#{rand(1000)}#{Faker::Internet.email}",
    password: "tsecret"
    )
end

puts "Finished Creating Traveler Seeds"

puts "Creating Packer Seeds"

Packer.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    photo_url: USERIMAGES.sample,
    biography: "Living that good life in Tokyo! My other interests are reading #{Faker::DcComics.hero} comics and eating #{Faker::Dessert.variety}.",
    location: TOKYOLOCATIONS.sample,
    email: "packer@gmail.com",
    password: "psecret"
    )

10.times do
  Packer.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    photo_url: USERIMAGES.sample,
    biography: "Living that good life in Tokyo! I enjoy reading #{Faker::DcComics.hero} comics and eating #{Faker::Dessert.variety}.",
    location: TOKYOLOCATIONS.sample,
    email: "#{rand(1000)}#{Faker::Internet.email}",
    password: "psecret"
    )
end

puts "Finished Packer Traveler Seeds"

puts "Creating Initial Packs Seeds"

Packer.all.each do |packer|
  3.times do
    Pack.create!(
      size: SIZES.sample,
      duration: DURATIONS.sample,
      name: PACKNAMES.sample,
      style: STYLES.sample,
      description: PACKDESCRIPTIONS.sample,
      remote_photo_url: PACKIMAGES.sample,
      price: PACKPRICES.sample,
      packer_id: packer.id
      )
  end
end

Pack.all.each do |pack|
  if pack.duration == "3-4 days"
      4.times do
      Item.create!(
        name: TOPSNAMES.sample,
        description: TOPSDESCRIPTIONS.sample,
        category: "Top",
        style: STYLES.sample,
        size: SIZES.sample,
        price: rand(10) * 100,
        remote_photo_url: TOPSIMAGES.sample,
        pack_id: pack.id,
        packer_id: pack.packer.id
      )
    end

    2.times do
      Item.create!(
        name: BOTTOMSNAMES.sample,
        description: BOTTOMSDESCRIPTIONS.sample,
        category: "Bottom",
        style: STYLES.sample,
        size: SIZES.sample,
        price: rand(10) * 100,
        remote_photo_url: BOTTOMSIMAGES.sample,
        pack_id: pack.id,
        packer_id: pack.packer.id
      )
    end

    1.times do  #change this to hygiene
      Item.create!(
        name: "Hygiene Kit",
        description: "Stay fresh on your travels.",
        category: "Hygiene",
        style: STYLES.sample,
        size: SIZES.sample,
        price: rand(10) * 100,
        remote_photo_url: TRAVELTOILETRIES.sample,
        pack_id: pack.id,
        packer_id: pack.packer.id
      )
    end

    1.times do
      Item.create!(
        name: "Wildcard Item",
        description: "XD",
        category: "Extras",
        style: STYLES.sample,
        size: SIZES.sample,
        price: rand(10) * 100,
        remote_photo_url: CULTURAL.sample,
        pack_id: pack.id,
        packer_id: pack.packer.id
      )
    end

    1.times do
      Item.create!(
        name: "Trendy belt",
        description: "This belt will be very useful in your travels.",
        category: "Belt",
        style: STYLES.sample,
        size: SIZES.sample,
        price: rand(10) * 100,
        remote_photo_url: BELTS.sample,
        pack_id: pack.id,
        packer_id: pack.packer.id
      )
    end
  elsif pack.duration == "7-8 days"
    7.times do
      Item.create!(
        name: TOPSNAMES.sample,
        description: TOPSDESCRIPTIONS.sample,
        category: "Top",
        style: STYLES.sample,
        size: SIZES.sample,
        price: rand(10) * 100,
        remote_photo_url: TOPSIMAGES.sample,
        pack_id: pack.id,
        packer_id: pack.packer.id
      )
    end

    5.times do
      Item.create!(
        name: BOTTOMSNAMES.sample,
        description: BOTTOMSDESCRIPTIONS.sample,
        category: "Bottom",
        style: STYLES.sample,
        size: SIZES.sample,
        price: rand(10) * 100,
        remote_photo_url: BOTTOMSIMAGES.sample,
        pack_id: pack.id,
        packer_id: pack.packer.id
      )
    end

    1.times do  #change this to hygiene
      Item.create!(
        name: "Hygiene Kit",
        description: "Stay fresh on your travels.",
        category: "Hygiene",
        style: STYLES.sample,
        size: SIZES.sample,
        price: rand(10) * 100,
        remote_photo_url: TRAVELTOILETRIES.sample,
        pack_id: pack.id,
        packer_id: pack.packer.id
      )
    end

    1.times do
      Item.create!(
        name: "Wildcard Item",
        description: "XD",
        category: "Extras",
        style: STYLES.sample,
        size: SIZES.sample,
        price: rand(10) * 100,
        remote_photo_url: CULTURAL.sample,
        pack_id: pack.id,
        packer_id: pack.packer.id
      )
    end

    1.times do
      Item.create!(
        name: "Trendy belt",
        description: "This belt will be very useful in your travels.",
        category: "Belt",
        style: STYLES.sample,
        size: SIZES.sample,
        price: rand(10) * 100,
        remote_photo_url: BELTS.sample,
        pack_id: pack.id,
        packer_id: pack.packer.id
      )
    end
  elsif pack.duration == "14-15 days"
      14.times do
      Item.create!(
        name: TOPSNAMES.sample,
        description: TOPSDESCRIPTIONS.sample,
        category: "Top",
        style: STYLES.sample,
        size: SIZES.sample,
        price: rand(10) * 100,
        remote_photo_url: TOPSIMAGES.sample,
        pack_id: pack.id,
        packer_id: pack.packer.id
      )
    end

    8.times do
      Item.create!(
        name: BOTTOMSNAMES.sample,
        description: BOTTOMSDESCRIPTIONS.sample,
        category: "Bottom",
        style: STYLES.sample,
        size: SIZES.sample,
        price: rand(10) * 100,
        remote_photo_url: BOTTOMSIMAGES.sample,
        pack_id: pack.id,
        packer_id: pack.packer.id
      )
    end

    2.times do #change this to hygiene
      Item.create!(
        name: "Hygiene Kit",
        description: "Stay fresh on your travels.",
        category: "Hygiene",
        style: STYLES.sample,
        size: SIZES.sample,
        price: rand(10) * 100,
        remote_photo_url: TRAVELTOILETRIES.sample,
        pack_id: pack.id,
        packer_id: pack.packer.id
      )
    end

    2.times do
      Item.create!(
        name: "Wildcard Item",
        description: "XD",
        category: "Extras",
        style: STYLES.sample,
        size: SIZES.sample,
        price: rand(10) * 100,
        remote_photo_url: CULTURAL.sample,
        pack_id: pack.id,
        packer_id: pack.packer.id
      )
    end

    3.times do
      Item.create!(
        name: "Trendy belt",
        description: "This belt will be very useful in your travels.",
        category: "Belt",
        style: STYLES.sample,
        size: SIZES.sample,
        price: rand(10) * 100,
        remote_photo_url: BELTS.sample,
        pack_id: pack.id,
        packer_id: pack.packer.id
      )
    end
  end
end

puts "Finished Creating Initial Packs Seeds"

puts "Creating Separate Closet Items Seeds"

Packer.all.each do |packer|
  5.times do
    Item.create!(
      name: "Convenience Pack",
      description: "A little extra boost to your pack.",
      category: "Miscellaneous :)",
      style: STYLES.sample,
      size: SIZES.sample,
      price: rand(10) * 100,
      remote_photo_url: UPSELLS.sample,
      packer_id: packer.id
    )
  end
end

puts "Finished Creating Separate Closet Items Seeds"

# puts "Creating Bookings Seeds"

puts "Finished Bookings Packs Seeds"
=======
# Traveler.all.each do |traveler|
#   2.times do
#     Booking.create!(
#       fees: rand(10),
#       delivery_address: "Impact HUB Tokyo, 2 Chome-11-３ Meguro, Tokyo 153-0063",
#       traveler_id: traveler.id,
#       packer: Packer.all.sample,
#       completed: [true, false].sample,
#       delivery_date: "15-3-2019",
#       return_deadline: "20-3-2019"
#     )
#   end
# end

# puts "Finished Bookings Packs Seeds"

puts "Creating Yuki Seeds"

# working pack for yuki travel view

yuki_traveler = Packer.create!(
    first_name: "Yuki",
    last_name: "Mori",
    photo_url: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/wzq20vmxjrjfpjlsvlnl.jpg",
    biography: "Living in Shibuya! Love Mad Men and play jazz - check out CMajor7!",
    location: "Shibuya, Tokyo",
    email: "jazzyuki@gmail.com",
    password: "secret"
    )

puts "Creating Reviews"
32.times do
  Booking.create!(
    completed: true,
    traveler: Traveler.last,
    packer: yuki_traveler
    )
end

Booking.all.each do |booking|
  PackerReview.create!(
    review: "Delivered on time, cleaned and ironed.",
    rating: 4,
    booking: booking
    )
end

puts "Reviews Completed"
yuki_pack = Pack.create!(
      size: "L",
      duration: "14-15 days",
      name: "The Don Draper",
      style: "Vintage",
      description: "Travel like Don - extra mystery item :D",
      remote_photo_url: "https://cdn-images-1.medium.com/max/1600/1*bU77rAT955Qeo0xAL45c5Q.jpeg",
      price: 18000,
      packer_id: yuki_traveler.id
      )

# tops

Item.create!(
      name: "White Oxford Shirt",
      description: "Back: Length: 79.5 cm (Size L) Sleeve: Length: 67.25 cm.",
      category: "Top",
      style: "Vintage",
      size: "L",
      price: 600,
      remote_photo_url: "https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dw53c499fe/hi-res/FON0333WHT_a.jpg",
      packer_id: yuki_traveler.id,
      pack_id: yuki_pack.id
    )

Item.create!(
      name: "Lilac Oxford",
      description: "Back: Length: 79.5 cm (Size L) Sleeve: Length: 67.25 cm.",
      category: "Top",
      style: "Vintage",
      size: "L",
      price: 600,
      remote_photo_url: "https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dwf9d1a2da/hi-res/FON0409SKY_c.jpg",
      packer_id: yuki_traveler.id,
      pack_id: yuki_pack.id
    )

Item.create!(
      name: "Pastel Casual Button Down",
      description: "Back: Length: 79.5 cm (Size L) Sleeve: Length: 67.25 cm.",
      category: "Top",
      style: "Vintage",
      size: "L",
      price: 600,
      remote_photo_url: "https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dw8ecfac06/hi-res/FOR2048PNK_a.jpg",
      packer_id: yuki_traveler.id,
      pack_id: yuki_pack.id
    )

Item.create!(
      name: "Light Sky Blue Squares",
      description: "Back: Length: 79.5 cm (Size L) Sleeve: Length: 67.25 cm.",
      category: "Top",
      style: "Vintage",
      size: "L",
      price: 600,
      remote_photo_url: "https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dwdb002a08/hi-res/FOB0306TEL_a.jpg",
      packer_id: yuki_traveler.id,
      pack_id: yuki_pack.id
    )

Item.create!(
      name: "Navy Large Squares",
      description: "Back: Length: 79.5 cm (Size L) Sleeve: Length: 67.25 cm.",
      category: "Top",
      style: "Vintage",
      size: "L",
      price: 600,
      remote_photo_url: "https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dw0e1dcf88/hi-res/FOB0308NAV_a.jpg",
      packer_id: yuki_traveler.id,
      pack_id: yuki_pack.id
    )

Item.create!(
      name: "Light Blue Stripes",
      description: "Back: Length: 79.5 cm (Size L) Sleeve: Length: 67.25 cm.",
      category: "Top",
      style: "Vintage",
      size: "L",
      price: 600,
      remote_photo_url: "https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dw1db4033e/hi-res/FOB0338SWT_a.jpg",
      packer_id: yuki_traveler.id,
      pack_id: yuki_pack.id
    )

Item.create!(
      name: "Pink and Sky Stripes",
      description: "Back: Length: 79.5 cm (Size L) Sleeve: Length: 67.25 cm.",
      category: "Top",
      style: "Vintage",
      size: "L",
      price: 600,
      remote_photo_url: "https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dw4c30bb3f/hi-res/FON0960LSK_a.jpg",
      packer_id: yuki_traveler.id,
      pack_id: yuki_pack.id
    )

Item.create!(
      name: "Navy Gingham",
      description: "Back: Length: 79.5 cm (Size L) Sleeve: Length: 67.25 cm.",
      category: "Top",
      style: "Vintage",
      size: "L",
      price: 600,
      remote_photo_url: "https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dw9e105aff/hi-res/CSN0234RYL_a.jpg",
      packer_id: yuki_traveler.id,
      pack_id: yuki_pack.id
    )

Item.create!(
      name: "Bone Formal",
      description: "Back: Length: 79.5 cm (Size L) Sleeve: Length: 67.25 cm.",
      category: "Top",
      style: "Vintage",
      size: "L",
      price: 600,
      remote_photo_url: "https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dw53c499fe/hi-res/FON0333WHT_a.jpg",
      packer_id: yuki_traveler.id,
      pack_id: yuki_pack.id
    )

Item.create!(
      name: "Evening White Formal",
      description: "Back: Length: 79.5 cm (Size L) Sleeve: Length: 67.25 cm.",
      category: "Top",
      style: "Vintage",
      size: "L",
      price: 600,
      remote_photo_url: "https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dw828bd065/hi-res/FOL0153WHT_a.jpg",
      packer_id: yuki_traveler.id,
      pack_id: yuki_pack.id
    )

Item.create!(
      name: "Pinstripe Button Down",
      description: "Back: Length: 79.5 cm (Size L) Sleeve: Length: 67.25 cm.",
      category: "Top",
      style: "Vintage",
      size: "L",
      price: 600,
      remote_photo_url: "https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dw77573435/hi-res/FOL0206HWT_a.jpg",
      packer_id: yuki_traveler.id,
      pack_id: yuki_pack.id
    )

Item.create!(
      name: "White Polo",
      description: "Back: Length: 79.5 cm (Size L) Sleeve: Length: 67.25 cm.",
      category: "Top",
      style: "Vintage",
      size: "L",
      price: 600,
      remote_photo_url: "https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dwb8b31993/hi-res/JEP0317WHT_a.jpg",
      packer_id: yuki_traveler.id,
      pack_id: yuki_pack.id
    )

Item.create!(
      name: "Lilac Oxford",
      description: "Back: Length: 79.5 cm (Size L) Sleeve: Length: 67.25 cm.",
      category: "Top",
      style: "Vintage",
      size: "L",
      price: 600,
      remote_photo_url: "https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dw10f41cfb/hi-res/FOB0340BLU_a.jpg",
      packer_id: yuki_traveler.id,
      pack_id: yuki_pack.id
    )

Item.create!(
      name: "Salmon Polo",
      description: "Back: Length: 79.5 cm (Size L) Sleeve: Length: 67.25 cm.",
      category: "Top",
      style: "Vintage",
      size: "L",
      price: 600,
      remote_photo_url: "https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dw212f278c/hi-res/JEP0327DOR_a.jpg",
      packer_id: yuki_traveler.id,
      pack_id: yuki_pack.id
    )

Item.create!(
      name: "Navy Polo Long Sleeve",
      description: "Back: Length: 79.5 cm (Size L) Sleeve: Length: 67.25 cm.",
      category: "Top",
      style: "Vintage",
      size: "L",
      price: 600,
      remote_photo_url: "https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dwf4af94be/hi-res/JEP0326NAV_a.jpg",
      packer_id: yuki_traveler.id,
      pack_id: yuki_pack.id
    )

# tops^^



# bottoms

Item.create!(
      name: "Gray Dress Pants",
      description: "Waist: Circumference: 93.0 cm (Size 36R).",
      category: "Bottom",
      style: "Vintage",
      size: "L",
      price: 600,
      remote_photo_url: "https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dw9dea2b4b/hi-res/TRT0227WNV_a.jpg",
      packer_id: yuki_traveler.id,
      pack_id: yuki_pack.id
    )

Item.create!(
      name: "Ludlow Heather Twill",
      description: "Waist: Circumference: 93.0 cm (Size 36R).",
      category: "Bottom",
      style: "Vintage",
      size: "L",
      price: 600,
      remote_photo_url: "https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dwe84cae28/hi-res/TRC0184NAV_a.jpg",
      packer_id: yuki_traveler.id,
      pack_id: yuki_pack.id
    )

Item.create!(
      name: "Casual Khakis",
      description: "Waist: Circumference: 93.0 cm (Size 36R).",
      category: "Bottom",
      style: "Vintage",
      size: "L",
      price: 600,
      remote_photo_url: "https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dw4a6e4312/hi-res/TRT0230STN_a.jpg",
      packer_id: yuki_traveler.id,
      pack_id: yuki_pack.id
    )

Item.create!(
      name: "Black Dress Pants",
      description: "Waist: Circumference: 93.0 cm (Size 36R).",
      category: "Bottom",
      style: "Vintage",
      size: "L",
      price: 600,
      remote_photo_url: "https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dw00bea9b4/hi-res/SUB0002BLK_a.jpg",
      packer_id: yuki_traveler.id,
      pack_id: yuki_pack.id
    )

Item.create!(
      name: "Charcoal Club Shorts",
      description: "Waist: Circumference: 93.0 cm (Size 36R).",
      category: "Bottom",
      style: "Vintage",
      size: "L",
      price: 600,
      remote_photo_url: "https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dwff23005e/hi-res/TRH0032NAV_a.jpg",
      packer_id: yuki_traveler.id,
      pack_id: yuki_pack.id
    )

Item.create!(
      name: "Navy Club Shorts",
      description: "Waist: Circumference: 93.0 cm (Size 36R).",
      category: "Bottom",
      style: "Vintage",
      size: "L",
      price: 600,
      remote_photo_url: "https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dwf5de01a7/hi-res/TRH0033AFB_a.jpg",
      packer_id: yuki_traveler.id,
      pack_id: yuki_pack.id
    )

Item.create!(
      name: "Khakis Club Shorts",
      description: "Waist: Circumference: 93.0 cm (Size 36R).",
      category: "Bottom",
      style: "Vintage",
      size: "L",
      price: 600,
      remote_photo_url: "https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dwd72ee061/hi-res/TRH0033TAN_a.jpg",
      packer_id: yuki_traveler.id,
      pack_id: yuki_pack.id
    )

Item.create!(
      name: "Light Blue Corduroy Pants",
      description: "Waist: Circumference: 93.0 cm (Size 36R).",
      category: "Bottom",
      style: "Vintage",
      size: "L",
      price: 600,
      remote_photo_url: "https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dw54b29cca/hi-res/TRT0123AFB_a.jpg",
      packer_id: yuki_traveler.id,
      pack_id: yuki_pack.id
    )

Item.create!(
      name: "Blue Corduroy Pants",
      description: "Waist: Circumference: 93.0 cm (Size 36R).",
      category: "Bottom",
      style: "Vintage",
      size: "L",
      price: 600,
      remote_photo_url: "https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dwb98ee8ed/hi-res/TRT0124NAV_a.jpg",
      packer_id: yuki_traveler.id,
      pack_id: yuki_pack.id
    )

Item.create!(
      name: "Brown Corduroy Pants",
      description: "Waist: Circumference: 93.0 cm (Size 36R).",
      category: "Bottom",
      style: "Vintage",
      size: "L",
      price: 600,
      remote_photo_url: "https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dwb262b30c/hi-res/TRT0123OLV_a.jpg",
      packer_id: yuki_traveler.id,
      pack_id: yuki_pack.id
    )


# bottoms ^^

# culturals - this is only listed into his items.

Item.create!(
      name: "Traditional Robe",
      description: "Perfect for lounging",
      category: "Miscellaneous",
      style: "Vintage",
      size: "L",
      price: 600,
      remote_photo_url: "https://www.nipponandco.fr/9444-large_default/japanese-traditional-black-cotton-yukata-kimono-ancient-coins-for-men.jpg",
      packer_id: yuki_traveler.id,
    )

# culturals^^

# weeb

Item.create!(
      name: "Mystery Item",
      description: "Nerdy Surprise",
      category: "Miscellaneous",
      style: "Vintage",
      size: "L",
      price: 600,
      remote_photo_url: "https://www.preternia.com/wp-content/uploads/2014/01/1493237_719399828079185_996651153_n.jpg",
      packer_id: yuki_traveler.id,
      pack_id: yuki_pack.id
    )

# weeb^^

# hygiene



Item.create!(
      name: "Hygiene Kit",
      description: "Stay fresh on the go!",
      category: "Miscellaneous",
      style: "Vintage",
      size: "L",
      price: 600,
      remote_photo_url: "https://www.conveniencekits.com/blog/picts/blog/139-2.jpg",
      packer_id: yuki_traveler.id,
      pack_id: yuki_pack.id
    )

# hygiene^^

# belt

Item.create!(
        name: "Black belt",
        description: "This belt will be very useful in your travels.",
        category: "Belt",
        style: "Vintage",
        size: "L",
        price: 600,
        remote_photo_url: "https://im.uniqlo.com/images/jp/pc/goods/413069/item/09_413069_middles.jpg",
        pack_id: yuki_pack.id,
        packer_id: yuki_traveler.id
      )


      Item.create!(
        name: "Brown belt",
        description: "This belt will be very useful in your travels.",
        category: "Belt",
        style: "Vintage",
        size: "L",
        price: 600,
        remote_photo_url: "https://im.uniqlo.com/images/jp/pc/goods/415573/item/37_415573_middles.jpg",
        pack_id: yuki_pack.id,
        packer_id: yuki_traveler.id
      )

      Item.create!(
        name: "Brown belt",
        description: "This belt will be very useful in your travels.",
        category: "Belt",
        style: STYLES.sample,
        size: SIZES.sample,
        price: 600,
        remote_photo_url: "https://im.uniqlo.com/images/jp/pc/goods/416101/item/38_416101_middles.jpg",
        pack_id: yuki_pack.id,
        packer_id: yuki_traveler.id
      )

# belt^^

#upsells

    Item.create!(
      name: "Harry's Shave Kit",
      description: "Stay fresh on the go!",
      category: "Miscellaneous",
      style: "Vintage",
      size: "L",
      price: 500,
      remote_photo_url: "https://uncrate.com/p/2016/06/harrys.jpg",
      packer_id: yuki_traveler.id,
      pack_id: yuki_pack.id
    )

    Item.create!(
      name: "Harry's Shave Kit",
      description: "Stay fresh on the go!",
      category: "Miscellaneous",
      style: "Vintage",
      size: "L",
      price: 500,
      remote_photo_url: "https://www.harrys.com/harrys-cdnx-prod/assets/images/index_images/attachments/7bb0b3ca7972df77e6a7dbe552510ccda8decfb3.jpg",
      packer_id: yuki_traveler.id,
      pack_id: yuki_pack.id
    )

    Item.create!(
      name: "Dollar Shave Kit",
      description: "Stay fresh on the go!",
      category: "Miscellaneous",
      style: "Vintage",
      size: "L",
      price: 500,
      remote_photo_url: "http://res.cloudinary.com/them-gifts/image/upload/v1460928243/cd4tw97x8izkrfba1pqv.jpg",
      packer_id: yuki_traveler.id,
      pack_id: yuki_pack.id
    )


#upsells^^

# working pack for yuki travel view^^^^^^^^^

# packer profile of yuki with just items

yuki_packer = Packer.create!(
    first_name: "Yuki",
    last_name: "Mori",
    photo_url: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/wzq20vmxjrjfpjlsvlnl.jpg",
    biography: "Living in Shibuya! Love Mad Men and play jazz - check out CMajor7!",
    location: "Shibuya, Tokyo",
    email: "yuki@gmail.com",
    password: "secret"
    )

# tops

Item.create!(
      name: "White Oxford Shirt",
      description: "Back: Length: 79.5 cm (Size L) Sleeve: Length: 67.25 cm.",
      category: "Top",
      style: "Vintage",
      size: "L",
      price: 600,
      remote_photo_url: "https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dw53c499fe/hi-res/FON0333WHT_a.jpg",
      packer_id: yuki_packer.id
    )

Item.create!(
      name: "Lilac Oxford",
      description: "Back: Length: 79.5 cm (Size L) Sleeve: Length: 67.25 cm.",
      category: "Top",
      style: "Vintage",
      size: "L",
      price: 600,
      remote_photo_url: "https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dwf9d1a2da/hi-res/FON0409SKY_c.jpg",
      packer_id: yuki_packer.id
    )

Item.create!(
      name: "Pastel Casual Button Down",
      description: "Back: Length: 79.5 cm (Size L) Sleeve: Length: 67.25 cm.",
      category: "Top",
      style: "Vintage",
      size: "L",
      price: 600,
      remote_photo_url: "https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dw8ecfac06/hi-res/FOR2048PNK_a.jpg",
      packer_id: yuki_packer.id
    )

Item.create!(
      name: "Light Sky Blue Squares",
      description: "Back: Length: 79.5 cm (Size L) Sleeve: Length: 67.25 cm.",
      category: "Top",
      style: "Vintage",
      size: "L",
      price: 600,
      remote_photo_url: "https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dwdb002a08/hi-res/FOB0306TEL_a.jpg",
      packer_id: yuki_packer.id
    )

Item.create!(
      name: "Navy Large Squares",
      description: "Back: Length: 79.5 cm (Size L) Sleeve: Length: 67.25 cm.",
      category: "Top",
      style: "Vintage",
      size: "L",
      price: 600,
      remote_photo_url: "https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dw0e1dcf88/hi-res/FOB0308NAV_a.jpg",
      packer_id: yuki_packer.id
    )

Item.create!(
      name: "Light Blue Stripes",
      description: "Back: Length: 79.5 cm (Size L) Sleeve: Length: 67.25 cm.",
      category: "Top",
      style: "Vintage",
      size: "L",
      price: 600,
      remote_photo_url: "https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dw1db4033e/hi-res/FOB0338SWT_a.jpg",
      packer_id: yuki_packer.id
    )

Item.create!(
      name: "Pink and Sky Stripes",
      description: "Back: Length: 79.5 cm (Size L) Sleeve: Length: 67.25 cm.",
      category: "Top",
      style: "Vintage",
      size: "L",
      price: 600,
      remote_photo_url: "https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dw4c30bb3f/hi-res/FON0960LSK_a.jpg",
      packer_id: yuki_packer.id
    )

Item.create!(
      name: "Navy Gingham",
      description: "Back: Length: 79.5 cm (Size L) Sleeve: Length: 67.25 cm.",
      category: "Top",
      style: "Vintage",
      size: "L",
      price: 600,
      remote_photo_url: "https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dw9e105aff/hi-res/CSN0234RYL_a.jpg",
      packer_id: yuki_packer.id
    )

Item.create!(
      name: "Bone Formal",
      description: "Back: Length: 79.5 cm (Size L) Sleeve: Length: 67.25 cm.",
      category: "Top",
      style: "Vintage",
      size: "L",
      price: 600,
      remote_photo_url: "https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dw53c499fe/hi-res/FON0333WHT_a.jpg",
      packer_id: yuki_packer.id
    )

Item.create!(
      name: "Evening White Formal",
      description: "Back: Length: 79.5 cm (Size L) Sleeve: Length: 67.25 cm.",
      category: "Top",
      style: "Vintage",
      size: "L",
      price: 600,
      remote_photo_url: "https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dw828bd065/hi-res/FOL0153WHT_a.jpg",
      packer_id: yuki_packer.id
    )

Item.create!(
      name: "Pinstripe Button Down",
      description: "Back: Length: 79.5 cm (Size L) Sleeve: Length: 67.25 cm.",
      category: "Top",
      style: "Vintage",
      size: "L",
      price: 600,
      remote_photo_url: "https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dw77573435/hi-res/FOL0206HWT_a.jpg",
      packer_id: yuki_packer.id
    )

Item.create!(
      name: "White Polo",
      description: "Back: Length: 79.5 cm (Size L) Sleeve: Length: 67.25 cm.",
      category: "Top",
      style: "Vintage",
      size: "L",
      price: 600,
      remote_photo_url: "https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dwb8b31993/hi-res/JEP0317WHT_a.jpg",
      packer_id: yuki_packer.id
    )

Item.create!(
      name: "Lilac Oxford",
      description: "Back: Length: 79.5 cm (Size L) Sleeve: Length: 67.25 cm.",
      category: "Top",
      style: "Vintage",
      size: "L",
      price: 600,
      remote_photo_url: "https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dw10f41cfb/hi-res/FOB0340BLU_a.jpg",
      packer_id: yuki_packer.id
    )

Item.create!(
      name: "Salmon Polo",
      description: "Back: Length: 79.5 cm (Size L) Sleeve: Length: 67.25 cm.",
      category: "Top",
      style: "Vintage",
      size: "L",
      price: 600,
      remote_photo_url: "https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dw212f278c/hi-res/JEP0327DOR_a.jpg",
      packer_id: yuki_packer.id
    )

Item.create!(
      name: "Navy Polo Long Sleeve",
      description: "Back: Length: 79.5 cm (Size L) Sleeve: Length: 67.25 cm.",
      category: "Top",
      style: "Vintage",
      size: "L",
      price: 600,
      remote_photo_url: "https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dwf4af94be/hi-res/JEP0326NAV_a.jpg",
      packer_id: yuki_packer.id
    )

# tops^^



# bottoms

Item.create!(
      name: "Gray Dress Pants",
      description: "Waist: Circumference: 93.0 cm (Size 36R).",
      category: "Bottom",
      style: "Vintage",
      size: "L",
      price: 600,
      remote_photo_url: "https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dw9dea2b4b/hi-res/TRT0227WNV_a.jpg",
      packer_id: yuki_packer.id
    )

Item.create!(
      name: "Ludlow Heather Twill",
      description: "Waist: Circumference: 93.0 cm (Size 36R).",
      category: "Bottom",
      style: "Vintage",
      size: "L",
      price: 600,
      remote_photo_url: "https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dwe84cae28/hi-res/TRC0184NAV_a.jpg",
      packer_id: yuki_packer.id
    )

Item.create!(
      name: "Casual Khakis",
      description: "Waist: Circumference: 93.0 cm (Size 36R).",
      category: "Bottom",
      style: "Vintage",
      size: "L",
      price: 600,
      remote_photo_url: "https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dw4a6e4312/hi-res/TRT0230STN_a.jpg",
      packer_id: yuki_packer.id
    )

Item.create!(
      name: "Black Dress Pants",
      description: "Waist: Circumference: 93.0 cm (Size 36R).",
      category: "Bottom",
      style: "Vintage",
      size: "L",
      price: 600,
      remote_photo_url: "https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dw00bea9b4/hi-res/SUB0002BLK_a.jpg",
      packer_id: yuki_packer.id
    )

Item.create!(
      name: "Charcoal Club Shorts",
      description: "Waist: Circumference: 93.0 cm (Size 36R).",
      category: "Bottom",
      style: "Vintage",
      size: "L",
      price: 600,
      remote_photo_url: "https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dwff23005e/hi-res/TRH0032NAV_a.jpg",
      packer_id: yuki_packer.id
    )

Item.create!(
      name: "Navy Club Shorts",
      description: "Waist: Circumference: 93.0 cm (Size 36R).",
      category: "Bottom",
      style: "Vintage",
      size: "L",
      price: 600,
      remote_photo_url: "https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dwf5de01a7/hi-res/TRH0033AFB_a.jpg",
      packer_id: yuki_packer.id
    )

Item.create!(
      name: "Khakis Club Shorts",
      description: "Waist: Circumference: 93.0 cm (Size 36R).",
      category: "Bottom",
      style: "Vintage",
      size: "L",
      price: 600,
      remote_photo_url: "https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dwd72ee061/hi-res/TRH0033TAN_a.jpg",
      packer_id: yuki_packer.id
    )

Item.create!(
      name: "Light Blue Corduroy Pants",
      description: "Waist: Circumference: 93.0 cm (Size 36R).",
      category: "Bottom",
      style: "Vintage",
      size: "L",
      price: 600,
      remote_photo_url: "https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dw54b29cca/hi-res/TRT0123AFB_a.jpg",
      packer_id: yuki_packer.id
    )

Item.create!(
      name: "Blue Corduroy Pants",
      description: "Waist: Circumference: 93.0 cm (Size 36R).",
      category: "Bottom",
      style: "Vintage",
      size: "L",
      price: 600,
      remote_photo_url: "https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dwb98ee8ed/hi-res/TRT0124NAV_a.jpg",
      packer_id: yuki_packer.id
    )

Item.create!(
      name: "Brown Corduroy Pants",
      description: "Waist: Circumference: 93.0 cm (Size 36R).",
      category: "Bottom",
      style: "Vintage",
      size: "L",
      price: 600,
      remote_photo_url: "https://www.ctshirts.com/dw/image/v2/AAWJ_PRD/on/demandware.static/-/Sites-ctshirts-master/default/dwb262b30c/hi-res/TRT0123OLV_a.jpg",
      packer_id: yuki_packer.id
    )


# bottoms ^^

# culturals

Item.create!(
      name: "Traditional Robe",
      description: "Perfect for lounging",
      category: "Miscellaneous",
      style: "Vintage",
      size: "L",
      price: 600,
      remote_photo_url: "https://www.nipponandco.fr/9444-large_default/japanese-traditional-black-cotton-yukata-kimono-ancient-coins-for-men.jpg",
      packer_id: yuki_packer.id
    )

# culturals^^

# weeb



# weeb^^

# hygiene



Item.create!(
      name: "Hygiene Kit",
      description: "Stay fresh on the go!",
      category: "Miscellaneous",
      style: "Vintage",
      size: "L",
      price: 600,
      remote_photo_url: "https://www.conveniencekits.com/blog/picts/blog/139-2.jpg",
      packer_id: yuki_packer.id
    )

# hygiene^^

# belt

Item.create!(
        name: "Black belt",
        description: "This belt will be very useful in your travels.",
        category: "Belt",
        style: "Vintage",
        size: "L",
        price: 600,
        remote_photo_url: "https://im.uniqlo.com/images/jp/pc/goods/413069/item/09_413069_middles.jpg",
        packer_id: yuki_packer.id
      )


      Item.create!(
        name: "Brown belt",
        description: "This belt will be very useful in your travels.",
        category: "Belt",
        style: "Vintage",
        size: "L",
        price: 600,
        remote_photo_url: "https://im.uniqlo.com/images/jp/pc/goods/415573/item/37_415573_middles.jpg",
        packer_id: yuki_packer.id
      )

      Item.create!(
        name: "Brown belt",
        description: "This belt will be very useful in your travels.",
        category: "Belt",
        style: STYLES.sample,
        size: SIZES.sample,
        price: 600,
        remote_photo_url: "https://im.uniqlo.com/images/jp/pc/goods/416101/item/38_416101_middles.jpg",
        packer_id: yuki_packer.id
      )

# belt^^

#upsells

    Item.create!(
      name: "Harry's Shave Kit",
      description: "Stay fresh on the go!",
      category: "Miscellaneous",
      style: "Vintage",
      size: "L",
      price: 500,
      remote_photo_url: "https://uncrate.com/p/2016/06/harrys.jpg",
      packer_id: yuki_packer.id
    )

    Item.create!(
      name: "Harry's Shave Kit",
      description: "Stay fresh on the go!",
      category: "Miscellaneous",
      style: "Vintage",
      size: "L",
      price: 500,
      remote_photo_url: "https://www.harrys.com/harrys-cdnx-prod/assets/images/index_images/attachments/7bb0b3ca7972df77e6a7dbe552510ccda8decfb3.jpg",
      packer_id: yuki_packer.id
    )

    Item.create!(
      name: "Dollar Shave Kit",
      description: "Stay fresh on the go!",
      category: "Miscellaneous",
      style: "Vintage",
      size: "L",
      price: 500,
      remote_photo_url: "http://res.cloudinary.com/them-gifts/image/upload/v1460928243/cd4tw97x8izkrfba1pqv.jpg",
      packer_id: yuki_packer.id
    )


# packer profile of yuki with just items^^^^^^^
puts "Finished creatng yuki seeds"

5.times do
    Pack.create!(
      size: SIZES.sample,
      duration: DURATIONS.sample,
      name: PACKNAMES.sample,
      style: STYLES.sample,
      description: PACKDESCRIPTIONS.sample,
      remote_photo_url: PACKIMAGES.sample,
      price: PACKPRICES.sample,
      packer_id: Packer.first(5).sample.id
      )
  end

puts "Finished creating all seeds :D"
