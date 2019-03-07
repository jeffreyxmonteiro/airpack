require 'faker'

Booking.destroy_all
Item.destroy_all
Pack.destroy_all
Cart.destroy_all
TempCloset.destroy_all
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
'Hip hop',
'Outdoorsy',
'Rockstar',
'Vintage',
]

SIZES = [
'XS',
'S',
'M',
'L',
'XL',
'XXL',
'XXXL'
]

ITEMCATEGORY = [
"Top",
"Bottom",
"Casual Shirt Short Sleeve",
"Casual Shirt Long Sleeve",
"Casual Button Down",
"Blazer",
"Formal Button Down",
"Hats",
"Casual Pants",
"Formal Pants",
"Gloves",
"Scarf",
"Shoes",
"Belt",
"Formal Shorts",
"Athletic Shorts",
"Atheltic Top",
"Sweater",
"Outerwear Jacket",
"Hoodie",
"Bathing Suit",
"New Toiletries",
"New Underwear",
"New Socks",
"Miscellaneous :)"
]

PACKNAMES = [
"Globe Trekker",
"Don Draper",
"Minimalist Millenial",
"Hotline Bling",
"Jet-Setter",
"The Dandy",
"The Rebel",
"Mr. Fundamentals",
"Street Artist",
"Prepster Package",
"The Playboy",
"Corporate Powerhouse",
"Jiving Jock",
"All-American Throwback"
]

PACKDESCRIPTIONS = [
"Function, fashion, and comfort.",
"Don Draper doesn't have anything on you.",
"Create the ultimate refinement.",
"Would rather be backpacking.",
"Plaid flannels and corduroys in natural tones.",
"Technical sportswear.",
"Inspired by: H&M, Topman, Kenzo.",
"The layered parkas and high-tops speak volumes.",
"There is no such thing as too much Vineyard Vines.",
"Dress for results.",
"A full-fledged classic spirit .",
"The North Face and Patagonia - END OF STORY",
"For the inner rocker child within you.",
"“Just do it” ."
]

TOPSNAMES = [
"Easy-iron Shirt",
"Viscose Shirt",
"Stretch Shirt",
"Oxford Shirt Regular Fit",
"Flannel Shirt",
"Twill Shirt Regular",
"Denim Shirt",
"Muscle Fit Shirt",
"Corduroy Shirt",
"Premium Cotton Shirt",
""
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
"Slim-fit Lightweight Garment-dyed Stretch Chino",
"Stretch Chambray",
"Ludlow in Heather Twill"
]

BOTTOMSDESCRIPTIONS = [
"Waist: Circumference: 93.0 cm (Size 36R)",
"Long Regular waist  FIT Skinny fit",
"Cotton 98%, Elastane 2%",
"(Size 36R) Ankle-length  FIT Skinny fit",
"14 leg opening (based on size 32/33).",
"Slim through hip and thigh, with a narrower leg."
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
HATS = [
        "https://im.uniqlo.com/images/jp/pc/goods/408922/item/43_408922_middles.jpg",
        "https://im.uniqlo.com/images/jp/pc/goods/416496/item/34_416496_middles.jpg",
        "https://im.uniqlo.com/images/jp/pc/goods/413074/item/56_413074_middles.jpg",
        "https://im.uniqlo.com/images/jp/pc/goods/410857/item/69_410857_middles.jpg",
        "https://im.uniqlo.com/images/jp/pc/goods/413075/item/35_413075_middles.jpg",
        "https://im.uniqlo.com/images/jp/pc/goods/413076/item/62_413076_middles.jpg"
]

SCARVES = [
        "https://im.uniqlo.com/images/jp/pc/goods/414302/item/13_414302_middles.jpg",
        "https://im.uniqlo.com/images/jp/pc/goods/408918/item/09_408918_middles.jpg",
        "https://im.uniqlo.com/images/jp/pc/goods/413107/item/21_413107_middles.jpg",
        "https://im.uniqlo.com/images/jp/pc/goods/414303/item/69_414303_middles.jpg",
        "https://im.uniqlo.com/images/jp/pc/goods/416409/item/69_416409_middles.jpg",
        "https://im.uniqlo.com/images/jp/pc/goods/417740/item/15_417740_middles.jpg"
]

SHOES = [
  "https://im.uniqlo.com/images/jp/pc/goods/410860/item/08_410860_middles.jpg",
  "https://im.uniqlo.com/images/jp/pc/goods/416497/item/00_416497_middles.jpg"
]

BELTS = [
  "https://im.uniqlo.com/images/jp/pc/goods/413069/item/09_413069_middles.jpg",
  "https://im.uniqlo.com/images/jp/pc/goods/415573/item/37_415573_middles.jpg",
  "https://im.uniqlo.com/images/jp/pc/goods/416101/item/38_416101_middles.jpg"
]

DURATIONS = ["3 days", "7 days", "14 days"]

UPSELLS = [
"https://thedailywant.com/wp-content/uploads/2017/06/harrys-travel-shave-kit.jpg",
"https://meundies.imgix.net/spree/product_slides/mobile_images/000/008/204/original/1350X1350_BoxerBrief_Throwback_10P.jpg",
"https://www.stance.com/dw/image/v2/BBBN_PRD/on/demandware.static/-/Sites-masterCatalog_Stance/default/dwaa4f896c/prod_images/MD18PKMAR_MUL_ALT_02.jpg",
"https://www.stance.com/dw/image/v2/BBBN_PRD/on/demandware.static/-/Sites-masterCatalog_Stance/default/dwe3984e85/prod_images/MD17PKTHR_MUL_ALT_02.jpg"
]

puts "Creating seeds."

puts "Creating Traveler Seeds"

Traveler.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    photo_url: AVATARIMAGES.sample,
    biography: "What's up! Huge travel junkie, originally from #{Faker::Address.country}! Some of my other interests are reading #{Faker::DcComics.hero} comics and eating #{Faker::Dessert.variety}.",
    email: "traveler@gmail.com",
    password: "tsecret"
    )

10.times do
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

30.times do
  Packer.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    photo_url: USERIMAGES.sample,
    biography: "Living that good life in Tokyo! My other interests are reading #{Faker::DcComics.hero} comics and eating #{Faker::Dessert.variety}.",
    location: TOKYOLOCATIONS.sample,
    email: "#{rand(1000)}#{Faker::Internet.email}",
    password: "psecret"
    )
end

puts "Finished Packer Traveler Seeds"

puts "Creating Initial Packs Seeds"

Packer.all.each do |packer|
  1.times do
    Pack.create!(
      size: SIZES.sample,
      duration: DURATIONS.sample,
      name: "Millenial Traveler Kit",
      style: STYLES.sample,
      description: "This pack is really good for an international trip.",
      photo_url: PACKIMAGES.sample,
      price: rand(100),
      packer_id: packer.id
      )
  end
end

Pack.all.each do |pack|
  5.times do
  Item.create!(
    name: TOPSNAMES.sample,
    description: TOPSDESCRIPTIONS.sample,
    category: "Top",
    style: STYLES.sample,
    size: SIZES.sample,
    price: rand(10),
    photo_url: TOPSIMAGES.sample,
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
      price: rand(10),
      photo_url: BOTTOMSIMAGES.sample,
      pack_id: pack.id,
      packer_id: pack.packer.id
    )
  end

  2.times do
    Item.create!(
      name: "Trendy item",
      description: "This will be very useful in your travels.",
      category: "Hats",
      style: STYLES.sample,
      size: SIZES.sample,
      price: rand(10),
      photo_url: HATS.sample,
      pack_id: pack.id,
      packer_id: pack.packer.id
    )
  end

  2.times do
    Item.create!(
      name: "Trendy belt",
      description: "This belt will be very useful in your travels.",
      category: "Belt",
      style: STYLES.sample,
      size: SIZES.sample,
      price: rand(10),
      photo_url: BELTS.sample,
      pack_id: pack.id,
      packer_id: pack.packer.id
    )
  end

  2.times do
    Item.create!(
      name: "Flex shoes",
      description: "Fluid shoes great for movement.",
      category: "Shoes",
      style: STYLES.sample,
      size: SIZES.sample,
      price: rand(10),
      photo_url: SHOES.sample,
      pack_id: pack.id,
      packer_id: pack.packer.id
    )
  end
end

puts "Finished Creating Initial Packs Seeds"

puts "Creating Separate Closet Items Seeds"

Packer.all.each do |packer|
  2.times do
    Item.create!(
      name: "Convenience Pack",
      description: "A little extra boost to your pack.",
      category: "Miscellaneous :)",
      style: STYLES.sample,
      size: SIZES.sample,
      price: rand(10),
      photo_url: UPSELLS.sample,
      packer_id: packer.id
    )
  end
end

puts "Finished Creating Separate Closet Items Seeds"

puts "Creating Bookings Seeds"

  Traveler.all.each do |traveler|
  2.times do
    Booking.create!(
      fees: rand(10),
      delivery_address: "Impact HUB Tokyo, 2 Chome-11-３ Meguro, Tokyo 153-0063",
      traveler_id: traveler.id,
      packer: Packer.all.sample,
      completed: [true, false].sample,
      delivery_date: "15-3-2019",
      return_deadline: "20-3-2019"
    )
  end
end

puts "Finished Bookings Packs Seeds"

puts "Finished creating all seeds :D"
