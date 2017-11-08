restaurant_attr = [
  {
    name: "La Tour d'argent",
    address: "Quai Louis XIV",
    category: "french",
    phone_number: "01 05 03 04 77"
  },
  {
    name: "Le Grand Véfour",
    address: "Quai Louis XIV",
    category: "french",
    phone_number: "01 05 03 04 77"
  },
  {
    name: "Blue Elephant",
    address: "Leicester Square",
    category: "italian",
    phone_number: "020 598 874"
  },
  {
    name: "Au Canard Laqué",
    address: "15 Rue Quincampoix",
    category: "chinese",
    phone_number: "01 05 03 04 76"
  },
  {
    name: "Léon de Bruxelles",
    address: "275 impasse de la Moule",
    category: "belgian",
    phone_number: "01 75 03 04 77"
  },
  {
    name: "Haraduku Yakatate",
    address: "Qqe part dans le 8e",
    category: "japanese",
    phone_number: "01 01 03 04 77"
  },
]


restaurant_attr.each { |restaurant| Restaurant.create!(restaurant) }
