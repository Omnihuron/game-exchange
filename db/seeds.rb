Game.create!([
  {title: "Runescape", image: "rs.png", slug: "Explore a vast world of might and magic", link: nil, banner: "rs.jpg"},
  {title: "Knight Online", image: "ko.png", slug: "Be a knight! And do it online!", link: nil, banner: "ko.jpg"},
  {title: "Maplestory", image: "ms.png", slug: "Be a chibi fighter in this Anime-styled platformer!", link: nil, banner: "ms.jpg"}
])
Item.create!([
  {game_id: 1, title: "Armor Trimming", image: "rs-armor.png", slug: "Impress all your friends with trimmed armor!", description: "So I want to level up my crafting and you want trimmed armor. Just hand it over for two seconds and I'll give it back. A scam? What? Noooooo, why ever would you think that?", price: "3.5"},
  {game_id: 2, title: "Knight Online Gold: 30K", image: "gold-coins.png", slug: "A whole stack of gold for your knight!", description: "Okay fine I've never played this game. But I bet 30K of gold in this game is worth quite a bit. Buy some armor or a sword or whatever", price: "30.0"},
  {game_id: 3, title: "Mushroom Pet", image: "mushroom.png", slug: "Wtf is this thing? Who cares! It's huggable!", description: "Buy an adorable pet for your Maplestory character! This mushroom will follow you around and fight things for you. It's totally badass.", price: "15.99"},
  {game_id: 1, title: "Archery Exp +3,000", image: "ranged.png", slug: "Power up your ranged attacks with extra Archery levels", description: "Now you can put your bow away and kick up your feet and let our Archery masters level up your character! They will efficiently gain 3,000 EXP in less than 24 hours", price: "39.99"}
])
