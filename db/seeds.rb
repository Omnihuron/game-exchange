Game.create!([
  {title: "Elder Scrolls Online", image: "http://imgur.com/68wm21f.jpg", slug: "Explore Tamriel in this MMORPG from Bethesda", link: "http://www.elderscrollsonline.com", banner: "http://imgur.com/oQRrSQo.jpg"},
  {title: "Maplestory", image: "http://imgur.com/Q6LiC3e.jpg", slug: "Be a chibi fighter in this Anime-styled platformer!", link: "http://maplestory.nexon.net", banner: "http://imgur.com/98j5KfT.jpg"},
  {title: "Knight Online", image: "http://imgur.com/9vdExNE.jpg", slug: "Be a knight! And do it online!", link: "http://knight.nttgame.com", banner: "http://imgur.com/y8S2N6V.jpg"},
  {title: "Runescape", image: "http://imgur.com/3Xxnjhw.jpg", slug: "Explore a vast world of might and magic", link: "http://www.runescape.com", banner: "http://imgur.com/VQsj5HQ.jpg"}
])
Item.create!([
  {game_id: 1, title: "Armor Trimming", image: "http://imgur.com/hr3JVBk.jpg", slug: "Impress all your friends with trimmed armor!", description: "So I want to level up my crafting and you want trimmed armor. Just hand it over for two seconds and I'll give it back. A scam? What? Noooooo, why ever would you think that?", price: "3.5"},
  {game_id: 2, title: "Knight Online Gold: 30K", image: "http://imgur.com/0Wfyoqs.jpg", slug: "A whole stack of gold for your knight!", description: "Okay fine I've never played this game. But I bet 30K of gold in this game is worth quite a bit. Buy some armor or a sword or whatever", price: "30.0"},
  {game_id: 3, title: "Mushroom Pet", image: "http://imgur.com/m3kCtYO.jpg", slug: "Wtf is this thing? Who cares! It's huggable!", description: "Buy an adorable pet for your Maplestory character! This mushroom will follow you around and fight things for you. It's totally badass.", price: "15.99"},
  {game_id: 1, title: "Archery Exp +3,000", image: "http://imgur.com/9kljrDr.jpg", slug: "Power up your ranged attacks with extra Archery levels", description: "Now you can put your bow away and kick up your feet and let our Archery masters level up your character! They will efficiently gain 3,000 EXP in less than 24 hours", price: "39.99"}
])
User.create!([
  {name: "Allan", email: "allan@mclelland.com", password_digest: "$2a$10$XwiL6BC195k5U5TVs2Ymie9U/LtoJ1Ozs0amvs.87kBAq.1wlZ1pG", remember_digest: nil, admin: true, activation_digest: nil, activated: false, activated_at: nil}
])
