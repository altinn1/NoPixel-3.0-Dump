let itemList = {};

// START WEAPONS

itemList['-1746263880'] = {
  fullyDegrades: false,
  decayrate: 2.0,
  displayname: 'Colt M1892',
  price: 250,
  weight: 11,
  craft: [
    { itemid: 'aluminium', amount: 70 },
    { itemid: 'steel', amount: 70 },
  ],
  nonStack: true,
  model: '',
  image: 'np_marston-revolver.png',
  weapon: true,
  deg: false,
};

// NEED TO DO

// updates guns for 3.0

// weapon_pistol
itemList['453432689'] = {
  fullyDegrades: false,
  decayrate: 2.0,
  displayname: 'colt 1911',
  price: 250,
  craft: [
    { itemid: 'aluminium', amount: 1 },
    { itemid: 'plastic', amount: 1 },
    { itemid: 'rubber', amount: 1 },
  ],
  weight: 11,
  nonStack: true,
  model: '',
  image: 'np_pistol.png',
  weapon: true,
  deg: true,
};

// weapon_pistol_mk2
itemList['-1075685676'] = {
  fullyDegrades: false,
  decayrate: 2.0,
  displayname: 'Beretta M9',
  price: 250,
  craft: [
    { itemid: 'aluminium', amount: 1 },
    { itemid: 'plastic', amount: 1 },
    { itemid: 'rubber', amount: 1 },
  ],
  weight: 11,
  nonStack: true,
  model: '',
  image: 'np_pistol2.png',
  weapon: true,
  deg: true,
};

// weapon_combatpistol
itemList['1593441988'] = {
  fullyDegrades: false,
  decayrate: 2.0,
  displayname: 'FN FNX-45',
  price: 250,
  craft: [
    { itemid: 'steel', amount: 65 },
    { itemid: 'plastic', amount: 1 },
    { itemid: 'rubber', amount: 1 },
  ],
  weight: 11,
  nonStack: true,
  model: '',
  image: 'np_combat-pistol.png',
  weapon: true,
  deg: true,
};

// weapon_taser
itemList['-820634585'] = {
  fullyDegrades: false,
  decayrate: 0.5,
  displayname: 'PD Taser',
  price: 10,
  craft: [
    { itemid: 'aluminium', amount: 1 },
    { itemid: 'plastic', amount: 1 },
    { itemid: 'rubber', amount: 1 },
  ],
  weight: 11,
  nonStack: true,
  model: '',
  image: 'np_stun-gun.png',
  weapon: true,
  deg: false,
};

// weapon_glock
itemList['-120179019'] = {
  fullyDegrades: false,
  decayrate: 1.0,
  displayname: 'PD Glock',
  price: 10,
  craft: [
    { itemid: 'aluminium', amount: 1 },
    { itemid: 'plastic', amount: 1 },
    { itemid: 'rubber', amount: 1 },
  ],
  weight: 11,
  nonStack: true,
  model: '',
  image: 'np_glock.png',
  weapon: true,
  deg: true,
};

// weapon_pistol50
itemList['-1716589765'] = {
  fullyDegrades: false,
  decayrate: 2.0,
  displayname: 'Desert Eagle',
  price: 250,
  craft: [
    { itemid: 'aluminium', amount: 155 },
    { itemid: 'plastic', amount: 100 },
    { itemid: 'rubber', amount: 1 },
  ],
  weight: 11,
  nonStack: true,
  model: '',
  image: 'np_pistol-50.png',
  weapon: true,
  deg: true,
};

// weapon_microsmg3
itemList['-134995899'] = {
  fullyDegrades: false,
  decayrate: 2.0,
  displayname: 'Mac-10',
  price: 250,
  craft: [
    { itemid: 'aluminium', amount: 155 },
    { itemid: 'plastic', amount: 100 },
    { itemid: 'rubber', amount: 1 },
  ],
  weight: 11,
  nonStack: true,
  model: '',
  image: 'np_micro-smg.png',
  weapon: true,
  deg: true,
};

// weapon_microsmg2
itemList['-942620673'] = {
  fullyDegrades: false,
  decayrate: 2.0,
  displayname: 'Uzi',
  price: 250,
  craft: [
    { itemid: 'aluminium', amount: 155 },
    { itemid: 'plastic', amount: 100 },
    { itemid: 'rubber', amount: 1 },
  ],
  weight: 11,
  nonStack: true,
  model: '',
  image: 'np_micro-smg2.png',
  weapon: true,
  deg: true,
};

// weapon_m4
itemList['1192676223'] = {
  fullyDegrades: false,
  decayrate: 0.75,
  displayname: 'PD M4',
  price: 10,
  craft: [
    { itemid: 'aluminium', amount: 50 },
    { itemid: 'plastic', amount: 10 },
    { itemid: 'rubber', amount: 1 },
  ],
  weight: 11,
  nonStack: true,
  model: '',
  image: 'np_m4.png',
  weapon: true,
  deg: true,
};

// weapon_assaultrifle
itemList['-1074790547'] = {
  fullyDegrades: false,
  decayrate: 2.0,
  displayname: 'AK 47',
  price: 250,
  craft: [
    { itemid: 'aluminium', amount: 250 },
    { itemid: 'plastic', amount: 80 },
    { itemid: 'rubber', amount: 1 },
  ],
  weight: 11,
  nonStack: true,
  model: '',
  image: 'np_assault-rifle.png',
  weapon: true,
  deg: true,
};

// weapon_assaultrifle2
itemList['497969164'] = {
  fullyDegrades: false,
  decayrate: 3.0,
  displayname: 'M70',
  price: 250,
  craft: [
    { itemid: 'aluminium', amount: 250 },
    { itemid: 'plastic', amount: 80 },
    { itemid: 'rubber', amount: 1 },
  ],
  weight: 11,
  nonStack: true,
  model: '',
  image: 'np_m70.png',
  weapon: true,
  deg: true,
};

// explosive type shit

// Pipebomb pipe bomb
itemList['-1169823560'] = {
  fullyDegrades: false,
  decayrate: 2.0,
  displayname: 'Pipebomb',
  price: 250,
  weight: 11,
  nonStack: true,
  model: '',
  image: 'np_pipe-bomb.png',
  weapon: true,
  deg: false,
};

// Molotov (Molly)
itemList['615608432'] = {
  fullyDegrades: false,
  decayrate: 2.0,
  displayname: 'Molly',
  craft: [
    { itemid: 'methlabproduct', amount: 35 },
    { itemid: 'ciggy', amount: 25 },
  ],
  price: 250,
  weight: 11,
  nonStack: false,
  model: '',
  image: 'np_molotov.png',
  weapon: true,
  deg: false,
};

// Sticky Bomb C4
itemList['741814745'] = {
  fullyDegrades: false,
  decayrate: 2.0,
  displayname: 'Sticky Bomb',
  price: 250,
  craft: [
    { itemid: 'aluminium', amount: 150 },
    { itemid: 'scrapmetal', amount: 150 },
    { itemid: 'rubber', amount: 100 },
  ],
  weight: 11,
  nonStack: true,
  model: '',
  image: 'np_sticky-bomb.png',
  weapon: true,
  deg: false,
};

// random weapons

// Nail gun nailgun
itemList['1748076076'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Nail gun',
  price: 10,
  craft: [
    { itemid: 'aluminium', amount: 1 },
    { itemid: 'plastic', amount: 1 },
    { itemid: 'rubber', amount: 1 },
  ],
  weight: 11,
  nonStack: true,
  model: '',
  image: 'np_nailgun.png',
  weapon: true,
  deg: true,
};

// Parachute
itemList['-72657034'] = {
  fullyDegrades: false,
  decayrate: 2.0,
  displayname: 'Parachute',
  price: 250,
  craft: [
    { itemid: 'aluminium', amount: 50 },
    { itemid: 'plastic', amount: 80 },
    { itemid: 'rubber', amount: 1 },
  ],
  weight: 15,
  nonStack: true,
  model: '',
  image: 'np_parachute.png',
  weapon: false,
  deg: true,
};

// koil gun
itemList['-1355376991'] = {
  fullyDegrades: false,
  decayrate: 2.0,
  displayname: 'koils gun :) hehe ',
  price: 250,
  craft: [
    { itemid: 'aluminium', amount: 155 },
    { itemid: 'plastic', amount: 100 },
    { itemid: 'rubber', amount: 1 },
  ],
  weight: 11,
  nonStack: true,
  model: '',
  image: 'np_pistol-50.png',
  weapon: true,
  deg: true,
};

// Fire Extinguisher
itemList['101631238'] = {
  fullyDegrades: false,
  decayrate: 2.0,
  displayname: 'Fire Ext',
  price: 250,
  craft: [
    { itemid: 'aluminium', amount: 100 },
    { itemid: 'scrapmetal', amount: 40 },
    { itemid: 'rubber', amount: 1 },
  ],
  weight: 11,
  nonStack: true,
  model: '',
  image: 'np_fire-extinguisher.png',
  weapon: true,
  deg: false,
};

// Petrol can
itemList['883325847'] = {
  fullyDegrades: false,
  decayrate: 2.0,
  displayname: 'Petrol Can',
  price: 250,
  weight: 11,
  nonStack: true,
  model: '',
  image: 'np_petrol-can.png',
  weapon: true,
  deg: false,
};

// blunt weapons
//WEAPON_SLEDGEHAM
itemList['1923739240'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Sledge Hammer',
  price: 1,
  weight: 0,
  nonStack: true,
  model: '',
  image: 'np_sledgehammer.png',
  information: 'Big and girthy.',
  weapon: true,
  deg: false,
};

//weapon_knuckle
itemList['3638508604'] = {
  fullyDegrades: false,
  decayrate: 2.0,
  displayname: 'Knuckle',
  craft: [
    { itemid: 'aluminium', amount: 25 },
    { itemid: 'scrapmetal', amount: 10 },
  ],
  price: 250,
  weight: 11,
  nonStack: true,
  model: '',
  image: 'np_knuckle-dusters.png',
  weapon: true,
  deg: false,
};

itemList['1141786504'] = {
  fullyDegrades: false,
  decayrate: 2.0,
  displayname: 'Golfclub',
  price: 250,
  weight: 11,
  nonStack: true,
  model: '',
  image: 'np_golfclub.png',
  weapon: true,
  deg: false,
};

itemList['1317494643'] = {
  fullyDegrades: false,
  decayrate: 2.0,
  displayname: 'Hammer',
  price: 250,
  weight: 11,
  nonStack: true,
  model: '',
  image: 'np_hammer.png',
  weapon: true,
  deg: false,
};

itemList['1737195953'] = {
  fullyDegrades: false,
  decayrate: 2.0,
  displayname: 'Nightstick',
  price: 0,
  weight: 11,
  nonStack: true,
  model: '',
  image: 'np_nightstick.png',
  weapon: true,
  deg: false,
};

itemList['2227010557'] = {
  fullyDegrades: false,
  decayrate: 2.0,
  displayname: 'Crowbar',
  price: 250,
  weight: 11,
  nonStack: true,
  model: '',
  image: 'np_crowbar.png',
  weapon: true,
  deg: false,
};

itemList['2343591895'] = {
  fullyDegrades: false,
  decayrate: 2.0,
  displayname: 'Flash Light',
  price: 250,
  weight: 11,
  nonStack: true,
  model: '',
  image: 'np_flashlight.png',
  weapon: true,
  deg: false,
};

// sharp weapons

itemList['-1239161099'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Katana',
  price: 1,
  weight: 0,
  nonStack: true,
  model: '',
  image: 'np_katana.png',
  information: 'When you were partying, I studied the blade.',
  weapon: true,
  deg: false,
};

itemList['-538741184'] = {
  fullyDegrades: false,
  decayrate: 2.0,
  displayname: 'Shank',
  craft: [
    { itemid: 'methlabproduct', amount: 25 },
    { itemid: 'ciggy', amount: 100 },
  ],
  price: 250,
  weight: 11,
  nonStack: true,
  model: '',
  image: 'np_switchblade.png',
  weapon: true,
  deg: true,
};

itemList['2460120199'] = {
  fullyDegrades: false,
  decayrate: 2.0,
  displayname: 'Dagger',
  craft: [
    { itemid: 'aluminium', amount: 25 },
    { itemid: 'scrapmetal', amount: 10 },
  ],
  price: 250,
  weight: 11,
  nonStack: true,
  model: '',
  image: 'np_dagger.png',
  weapon: true,
  deg: false,
};

itemList['2508868239'] = {
  fullyDegrades: false,
  decayrate: 2.0,
  displayname: 'Bat',
  price: 250,
  weight: 11,
  nonStack: true,
  model: '',
  image: 'np_baseball-bat.png',
  weapon: true,
  deg: false,
};

itemList['2578778090'] = {
  fullyDegrades: false,
  decayrate: 2.0,
  displayname: 'Knife',
  price: 250,
  weight: 11,
  nonStack: true,
  model: '',
  image: 'np_knife.png',
  weapon: true,
  deg: false,
};

itemList['3713923289'] = {
  fullyDegrades: false,
  decayrate: 2.0,
  displayname: 'Machete',
  price: 250,
  weight: 11,
  nonStack: true,
  model: '',
  image: 'np_machete.png',
  weapon: true,
  deg: false,
};

itemList['4191993645'] = {
  fullyDegrades: false,
  decayrate: 2.0,
  displayname: 'Hatchet',
  price: 250,
  weight: 11,
  nonStack: true,
  model: '',
  image: 'np_hatchet.png',
  weapon: true,
  deg: false,
};

// weapon attachments

// weapon ammo
itemList['subammo'] = {
  fullyDegrades: true,
  decayrate: 1.0,
  displayname: 'Sub Ammo x50',
  craft: [
    { itemid: 'aluminium', amount: 20 },
    { itemid: 'plastic', amount: 1 },
    { itemid: 'rubber', amount: 1 },
  ],
  price: 100,
  weight: 5,
  nonStack: false,
  model: '',
  image: 'np_sub-ammo.png',
  deg: false,
};

itemList['heavyammo'] = {
  fullyDegrades: true,
  decayrate: 1.0,
  displayname: 'Heavy Ammo x50',
  craft: [
    { itemid: 'aluminium', amount: 1 },
    { itemid: 'plastic', amount: 1 },
    { itemid: 'rubber', amount: 1 },
  ],
  price: 10,
  weight: 7,
  nonStack: false,
  model: '',
  image: 'np_rifle-ammo.png',
  deg: false,
};

// LMG ammo is not actually being used for anything and has no "use function". It's the same as Heavy Ammo.
itemList['lmgammo'] = {
  fullyDegrades: true,
  decayrate: 1.0,
  displayname: 'LMG Ammo x50',
  craft: [
    { itemid: 'aluminium', amount: 1 },
    { itemid: 'plastic', amount: 1 },
    { itemid: 'rubber', amount: 1 },
  ],
  price: 300,
  weight: 5,
  nonStack: false,
  model: '',
  image: 'np_lmg-ammo.png',
  deg: false,
};

itemList['shotgunammo'] = {
  fullyDegrades: true,
  decayrate: 1.0,
  displayname: 'SG Ammo x50',
  craft: [
    { itemid: 'aluminium', amount: 1 },
    { itemid: 'plastic', amount: 1 },
    { itemid: 'rubber', amount: 1 },
  ],
  price: 10,
  weight: 7,
  nonStack: false,
  model: '',
  image: 'np_shotgun-ammo.png',
  deg: false,
};

itemList['pistolammo'] = {
  fullyDegrades: true,
  decayrate: 1.0,
  displayname: 'Pistol Ammo x50',
  craft: [
    { itemid: 'aluminium', amount: 1 },
    { itemid: 'plastic', amount: 1 },
    { itemid: 'rubber', amount: 1 },
  ],
  price: 10,
  weight: 3,
  nonStack: false,
  model: '',
  image: 'np_pistol-ammo.png',
  deg: false,
};

itemList['rifleammo'] = {
  fullyDegrades: true,
  decayrate: 1.0,
  displayname: 'Rifle Ammo x50',
  craft: [
    { itemid: 'aluminium', amount: 10 },
    { itemid: 'plastic', amount: 5 },
    { itemid: 'rubber', amount: 20 },
  ],
  price: 10,
  weight: 7,
  nonStack: false,
  model: '',
  image: 'np_rifle-ammo.png',
  deg: false,
};

itemList['pistolammoPD'] = {
  fullyDegrades: true,
  decayrate: 0.05,
  displayname: 'Pistol Ammo x50 PD',
  craft: [
    { itemid: 'aluminium', amount: 1 },
    { itemid: 'plastic', amount: 1 },
    { itemid: 'rubber', amount: 1 },
  ],
  price: 10,
  weight: 3,
  nonStack: false,
  model: '',
  image: 'np_pistol-ammo.png',
  deg: false,
};

itemList['rifleammoPD'] = {
  fullyDegrades: true,
  decayrate: 0.05,
  displayname: 'Rifle Ammo x50 PD',
  craft: [
    { itemid: 'aluminium', amount: 1 },
    { itemid: 'plastic', amount: 1 },
    { itemid: 'rubber', amount: 1 },
  ],
  price: 10,
  weight: 7,
  nonStack: false,
  model: '',
  image: 'np_rifle-ammo.png',
  deg: false,
};

itemList['taserammo'] = {
  fullyDegrades: true,
  decayrate: 0.1,
  displayname: 'Taser Cartridges',
  craft: [
    { itemid: 'aluminium', amount: 1 },
    { itemid: 'plastic', amount: 1 },
    { itemid: 'rubber', amount: 1 },
  ],
  price: 10,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_taserammo.png',
  deg: false,
};

itemList['nails'] = {
  fullyDegrades: true,
  decayrate: 1.0,
  displayname: 'Nails',
  craft: [
    { itemid: 'aluminium', amount: 1 },
    { itemid: 'plastic', amount: 1 },
    { itemid: 'rubber', amount: 1 },
  ],
  price: 10,
  weight: 3,
  nonStack: false,
  model: '',
  image: 'np_nails.png',
  deg: false,
};

// END WEAPONS

// custom items with decay

itemList['tuner'] = {
  fullyDegrades: true,
  decayrate: 2.0,
  displayname: 'Tuner Chip',
  craft: [{ itemid: 'electronics', amount: 100 }],
  price: 500,
  weight: 10,
  nonStack: false,
  model: '',
  image: 'np_tuner.png',
  information: 'Use inside a tuner vehicle to tune it..',
  deg: false,
};

itemList['repairkit'] = {
  fullyDegrades: true,
  decayrate: 0.25,
  displayname: 'Repair Kit',
  craft: [{ itemid: 'electronics', amount: 25 }],
  price: 100,
  weight: 10,
  nonStack: false,
  model: '',
  image: 'np_basic_repair-kit.png',
  deg: false,
};

itemList['wheelchair'] = {
  fullyDegrades: true,
  decayrate: 1.0,
  displayname: 'Wheelchair',
  price: 250,
  weight: 100,
  nonStack: false,
  model: '',
  image: 'np_wheelchair.png',
  information: 'For broken legs n stuff',
  deg: false,
};

// drugs

itemList['1gcocaine'] = {
  fullyDegrades: true,
  illegal: true,
  decayrate: 0.5,
  displayname: '5g 35% Coke',
  craft: [
    { itemid: 'glucose', amount: 0.01 },
    { itemid: 'coke5g', amount: 0.1 },
  ],
  price: 100,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_cocaine-baggy.png',
  information: '35% Cut Cocaine. ',
  deg: false,
};

itemList['1gcrack'] = {
  fullyDegrades: true,
  illegal: true,
  decayrate: 0.5,
  displayname: '5g Crack',
  craft: [
    { itemid: 'bakingsoda', amount: 0.01 },
    { itemid: 'coke5g', amount: 0.1 },
  ],
  price: 100,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_crack.png',
  information: 'Crack... ',
  deg: false,
};

itemList['coke50g'] = {
  fullyDegrades: true,
  illegal: true,
  decayrate: 0.5,
  displayname: 'Coke Brick (50g)',
  price: 1000,
  weight: 5,
  nonStack: false,
  model: '',
  image: 'np_cocaine-brick.png',
  information: 'Increases your Stamina and Movement Speed <br> Breaks down into product.',
  deg: false,
};

itemList['coke5g'] = {
  fullyDegrades: true,
  illegal: true,
  decayrate: 0.5,
  displayname: 'Coke Baggy (5g)',
  craft: [{ itemid: 'coke50g', amount: 0.1 }],
  price: 150,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_cocaine-baggy.png',
  information: 'Increases your Stamina and Movement Speed',
  deg: false,
};

itemList['joint'] = {
  fullyDegrades: true,
  illegal: true,
  decayrate: 0.75,
  displayname: '3g Joint',
  craft: [
    { itemid: 'weedq', amount: 0.5 },
    { itemid: 'rollingpaper', amount: 1 },
  ],
  price: 20,
  weight: 2,
  nonStack: false,
  model: '',
  image: 'np_joint.png',
  information: 'Its a Joint, man. ',
  deg: false,
};

itemList['maleseed'] = {
  fullyDegrades: true,
  decayrate: 2.0,
  displayname: 'Male Seed',
  price: 100,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_weed-seed.png',
  information: 'Plant near females to make them produce seeds. ',
  deg: false,
};

itemList['femaleseed'] = {
  fullyDegrades: true,
  decayrate: 2.0,
  displayname: 'Female Seed',
  price: 100,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_weed-seed.png',
  information: 'Thank you.',
  deg: false,
};

itemList['oxy'] = {
  fullyDegrades: true,
  illegal: true,
  decayrate: 0.75,
  displayname: 'Oxy 100mg',
  price: 150,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_Oxy.png',
  information: 'Limits Stress to 0 for an extended period of time <br> Increases Thirst <br> Has addiction properties ',
  deg: false,
};

itemList['weed12oz'] = {
  fullyDegrades: true,
  illegal: true,
  decayrate: 0.0025,
  displayname: 'Weed 250 Oz',
  price: 250,
  weight: 35,
  nonStack: false,
  model: '',
  image: 'np_box-of-weed-12-18-oz.png',
  information: 'Lowers Stress <br> Breaks Down into other Product',
  deg: false,
};

itemList['weed5oz'] = {
  fullyDegrades: true,
  illegal: true,
  decayrate: 0.5,
  displayname: 'Weed 5 Oz',
  price: 500,
  weight: 5,
  nonStack: false,
  model: '',
  image: 'np_weed-brick-40-Oz.png',
  information: 'Lowers Stress <br> Breaks Down into other Product',
  deg: false,
};

itemList['weedoz'] = {
  fullyDegrades: true,
  illegal: true,
  decayrate: 0.3,
  displayname: 'Weed Oz',
  price: 200,
  weight: 4,
  nonStack: false,
  model: '',
  image: 'np_weed-4-Oz.png',
  information: 'Lowers Stress',
  deg: false,
};

itemList['weedq'] = {
  fullyDegrades: true,
  illegal: true,
  decayrate: 0.3,
  displayname: 'Weed Q',
  craft: [{ itemid: 'weedoz', amount: 0.25 }],
  price: 65,
  weight: 2,
  nonStack: false,
  model: '',
  image: 'np_weed-oz.png',
  information: 'Lowers Stress',
  deg: false,
};

itemList['wetbud'] = {
  fullyDegrades: true,
  illegal: true,
  decayrate: 0.3,
  displayname: 'Wet Bud (2 Grams)',
  price: 30,
  weight: 5,
  nonStack: false,
  model: '',
  image: 'wet.png',
  information: 'Dry It?',
  deg: false,
};

itemList['driedbud'] = {
  fullyDegrades: true,
  illegal: true,
  decayrate: 0.3,
  displayname: 'Dried Bud (2 Grams)',
  price: 30,
  weight: 2,
  nonStack: false,
  model: '',
  image: 'buddry2.png',
  information: 'Dry It?',
  deg: false,
};

itemList['smallbud'] = {
  fullyDegrades: true,
  illegal: true,
  decayrate: 0.3,
  displayname: 'Packed Bud (2 Grams)',
  price: 30,
  weight: 2,
  nonStack: false,
  model: '',
  image: 'buddry.png',
  information: 'Sell It?',
  deg: false,
};

itemList['joint2'] = {
  fullyDegrades: true,
  illegal: true,
  decayrate: 0.75,
  displayname: '2g Joint',
  craft: [
    { itemid: 'smallbud', amount: 1.0 },
    { itemid: 'rollingpaper', amount: 1 },
  ],
  price: 20,
  weight: 3,
  nonStack: false,
  model: '',
  image: 'np_joint.png',
  information: 'Its a Joint, man. ',
  deg: false,
};

itemList['lsdtab'] = {
  fullyDegrades: true,
  illegal: true,
  decayrate: 0.3,
  displayname: 'LSD Tab',
  price: 200,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_lsdtab.png',
  information: 'For spectacular trips, or whatever.',
  deg: true,
};

itemList['badlsdtab'] = {
  fullyDegrades: true,
  illegal: true,
  decayrate: 0.3,
  displayname: 'LSD Tab',
  price: 200,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_badlsdtab.png',
  information: 'For spectacular trips, or whatever.',
  deg: true,
};

// Fruits / Alcohol crafting
itemList['apple'] = {
  fullyDegrades: false,
  illegal: false,
  decayrate: 0.75,
  displayname: 'Apple',
  price: 20,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_apple.png',
  information: '',
  deg: true,
};

itemList['banana'] = {
  fullyDegrades: false,
  illegal: false,
  decayrate: 0.75,
  displayname: 'Banana',
  price: 20,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_banana.png',
  information: '',
  deg: true,
};

itemList['cherry'] = {
  fullyDegrades: false,
  illegal: false,
  decayrate: 0.75,
  displayname: 'Cherry',
  price: 20,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_cherry.png',
  information: '',
  deg: true,
};

itemList['coconut'] = {
  fullyDegrades: false,
  illegal: false,
  decayrate: 0.75,
  displayname: 'Coconut',
  price: 20,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_coconut.png',
  information: '',
  deg: true,
};

itemList['grain'] = {
  fullyDegrades: false,
  illegal: false,
  decayrate: 0.75,
  displayname: 'Grain',
  price: 20,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_grain.png',
  information: '',
  deg: true,
};

itemList['grapes'] = {
  fullyDegrades: false,
  illegal: false,
  decayrate: 0.75,
  displayname: 'Grapes',
  price: 20,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_grapes.png',
  information: '',
  deg: true,
};

itemList['kiwi'] = {
  fullyDegrades: false,
  illegal: false,
  decayrate: 0.75,
  displayname: 'Kiwi',
  price: 20,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_kiwi.png',
  information: '',
  deg: true,
};

itemList['lemon'] = {
  fullyDegrades: false,
  illegal: false,
  decayrate: 0.75,
  displayname: 'Lemon',
  price: 20,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_lemon.png',
  information: '',
  deg: true,
};

itemList['lime'] = {
  fullyDegrades: false,
  illegal: false,
  decayrate: 0.75,
  displayname: 'Lime',
  price: 20,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_lime.png',
  information: '',
  deg: true,
};

itemList['orange'] = {
  fullyDegrades: false,
  illegal: false,
  decayrate: 0.75,
  displayname: 'Orange',
  price: 20,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_orange.png',
  information: '',
  deg: true,
};

itemList['peach'] = {
  fullyDegrades: false,
  illegal: false,
  decayrate: 0.75,
  displayname: 'Peach',
  price: 20,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_peach.png',
  information: '',
  deg: true,
};

itemList['potato'] = {
  fullyDegrades: false,
  illegal: false,
  decayrate: 0.75,
  displayname: 'Potato',
  price: 20,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_potato.png',
  information: '',
  deg: true,
};

itemList['strawberry'] = {
  fullyDegrades: false,
  illegal: false,
  decayrate: 0.75,
  displayname: 'Strawberry',
  price: 20,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_strawberry.png',
  information: '',
  deg: true,
};

itemList['watermelon'] = {
  fullyDegrades: false,
  illegal: false,
  decayrate: 0.75,
  displayname: 'Watermelon',
  price: 20,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_watermelon.png',
  information: '',
  deg: true,
};

// Drinks for VU
itemList['drink1'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'drink1',
  price: 25,
  weight: 1,
  craft: [
    { itemid: 'orange', amount: 1 },
    { itemid: 'lemon', amount: 1 },
    { itemid: 'vodka', amount: 1 },
  ],
  nonStack: false,
  model: '',
  image: 'np_drink1.png',
  information: 'Sates Thirst',
  deg: false,
};

itemList['drink2'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'drink2',
  price: 25,
  weight: 1,
  craft: [
    { itemid: 'cherry', amount: 1 },
    { itemid: 'strawberry', amount: 1 },
    { itemid: 'vodka', amount: 1 },
  ],
  nonStack: false,
  model: '',
  image: 'np_drink2.png',
  information: 'Sates Thirst',
  deg: false,
};

itemList['drink3'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'drink3',
  price: 25,
  weight: 1,
  craft: [
    { itemid: 'banana', amount: 1 },
    { itemid: 'peach', amount: 1 },
    { itemid: 'vodka', amount: 1 },
  ],
  nonStack: false,
  model: '',
  image: 'np_drink3.png',
  information: 'Sates Thirst',
  deg: false,
};

itemList['drink4'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'drink4',
  price: 25,
  weight: 1,
  craft: [
    { itemid: 'orange', amount: 1 },
    { itemid: 'banana', amount: 1 },
    { itemid: 'vodka', amount: 1 },
  ],
  nonStack: false,
  model: '',
  image: 'np_drink4.png',
  information: 'Sates Thirst',
  deg: false,
};

itemList['drink5'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'drink5',
  price: 25,
  weight: 1,
  craft: [
    { itemid: 'cherry', amount: 1 },
    { itemid: 'kiwi', amount: 1 },
    { itemid: 'vodka', amount: 1 },
  ],
  nonStack: false,
  model: '',
  image: 'np_drink5.png',
  information: 'Sates Thirst',
  deg: false,
};

itemList['drink6'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'drink6',
  price: 25,
  weight: 1,
  craft: [
    { itemid: 'strawberry', amount: 1 },
    { itemid: 'watermelon', amount: 1 },
    { itemid: 'vodka', amount: 1 },
  ],
  nonStack: false,
  model: '',
  image: 'np_drink6.png',
  information: 'Sates Thirst',
  deg: false,
};

itemList['drink7'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'drink7',
  price: 25,
  weight: 1,
  craft: [
    { itemid: 'lime', amount: 1 },
    { itemid: 'apple', amount: 1 },
    { itemid: 'vodka', amount: 1 },
  ],
  nonStack: false,
  model: '',
  image: 'np_polarbear.png',
  information: 'Sates Thirst',
  deg: false,
};

itemList['drink8'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'drink8',
  price: 25,
  weight: 1,
  craft: [
    { itemid: 'cherry', amount: 1 },
    { itemid: 'peach', amount: 1 },
    { itemid: 'vodka', amount: 1 },
  ],
  nonStack: false,
  model: '',
  image: 'np_rumcoke.png',
  information: 'Sates Thirst',
  deg: false,
};

itemList['drink9'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'drink8',
  price: 25,
  weight: 1,
  craft: [
    { itemid: 'coconut', amount: 1 },
    { itemid: 'lime', amount: 1 },
    { itemid: 'vodka', amount: 1 },
  ],
  nonStack: false,
  model: '',
  image: 'np_straightvodka.png',
  information: 'Sates Thirst',
  deg: false,
};

itemList['drink10'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'drink8',
  price: 25,
  weight: 1,
  craft: [
    { itemid: 'grapes', amount: 1 },
    { itemid: 'watermelon', amount: 1 },
    { itemid: 'vodka', amount: 1 },
  ],
  nonStack: false,
  model: '',
  image: 'np_whitepaw.png',
  information: 'Sates Thirst',
  deg: false,
};

itemList['absinthe'] = {
  fullyDegrades: true,
  illegal: true,
  decayrate: 0.3,
  displayname: 'Absinthe',
  craft: [
    { itemid: 'glass', amount: 1 },
    { itemid: 'moonshine', amount: 1 },
  ],
  price: 200,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_absinthe.png',
  information: 'The strongest you can get, 95%.',
  deg: true,
};

itemList['shot1'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'shot1',
  price: 25,
  weight: 1,
  craft: [
    { itemid: 'orange', amount: 1 },
    { itemid: 'lemon', amount: 1 },
    { itemid: 'vodka', amount: 1 },
  ],
  nonStack: false,
  model: '',
  image: 'np_shot1.png',
  information: 'Sates Thirst',
  deg: false,
};

itemList['shot2'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'shot2',
  price: 25,
  weight: 1,
  craft: [
    { itemid: 'cherry', amount: 1 },
    { itemid: 'strawberry', amount: 1 },
    { itemid: 'vodka', amount: 1 },
  ],
  nonStack: false,
  model: '',
  image: 'np_shot2.png',
  information: 'Sates Thirst',
  deg: false,
};

itemList['shot3'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'shot3',
  price: 25,
  weight: 1,
  craft: [
    { itemid: 'banana', amount: 1 },
    { itemid: 'peach', amount: 1 },
    { itemid: 'vodka', amount: 1 },
  ],
  nonStack: false,
  model: '',
  image: 'np_shot3.png',
  information: 'Sates Thirst',
  deg: false,
};

itemList['shot4'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'shot4',
  price: 25,
  weight: 1,
  craft: [
    { itemid: 'orange', amount: 1 },
    { itemid: 'banana', amount: 1 },
    { itemid: 'vodka', amount: 1 },
  ],
  nonStack: false,
  model: '',
  image: 'np_shot4.png',
  information: 'Sates Thirst',
  deg: false,
};

itemList['shot5'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'shot5',
  price: 25,
  weight: 1,
  craft: [
    { itemid: 'cherry', amount: 1 },
    { itemid: 'kiwi', amount: 1 },
    { itemid: 'vodka', amount: 1 },
  ],
  nonStack: false,
  model: '',
  image: 'np_shot5.png',
  information: 'Sates Thirst',
  deg: false,
};

itemList['shot6'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'shot6',
  price: 25,
  weight: 1,
  craft: [
    { itemid: 'strawberry', amount: 1 },
    { itemid: 'watermelon', amount: 1 },
    { itemid: 'vodka', amount: 1 },
  ],
  nonStack: false,
  model: '',
  image: 'np_shot6.png',
  information: 'Sates Thirst',
  deg: false,
};

itemList['shot7'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'shot7',
  price: 25,
  weight: 1,
  craft: [
    { itemid: 'lime', amount: 1 },
    { itemid: 'apple', amount: 1 },
    { itemid: 'vodka', amount: 1 },
  ],
  nonStack: false,
  model: '',
  image: 'np_shot7.png',
  information: 'Sates Thirst',
  deg: false,
};

itemList['shot8'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'shot8',
  price: 25,
  weight: 1,
  craft: [
    { itemid: 'cherry', amount: 1 },
    { itemid: 'peach', amount: 1 },
    { itemid: 'vodka', amount: 1 },
  ],
  nonStack: false,
  model: '',
  image: 'np_shot8.png',
  information: 'Sates Thirst',
  deg: false,
};

itemList['shot9'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'shot8',
  price: 25,
  weight: 1,
  craft: [
    { itemid: 'coconut', amount: 1 },
    { itemid: 'lime', amount: 1 },
    { itemid: 'vodka', amount: 1 },
  ],
  nonStack: false,
  model: '',
  image: 'np_shot9.png',
  information: 'Sates Thirst',
  deg: false,
};

itemList['shot10'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'shot8',
  price: 25,
  weight: 1,
  craft: [
    { itemid: 'grapes', amount: 1 },
    { itemid: 'watermelon', amount: 1 },
    { itemid: 'vodka', amount: 1 },
  ],
  nonStack: false,
  model: '',
  image: 'np_shot10.png',
  information: 'Sates Thirst',
  deg: false,
};

// other drugy shit

itemList['aspirin'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Aspirin',
  price: 150,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_aspirin.png',
  information: 'Its an Aspirin',
  deg: false,
};

itemList['cabsinthe'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Cannabis Absinthe',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_cannabis-absinthe.png',
  information: 'Duuude..bro...',
  deg: false,
};

itemList['redwine'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Red Wine',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_red-wine-bottle.png',
  information: 'No crime just wine',
  deg: false,
};

itemList['rum'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Rum',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_rum.png',
  information: 'Why is it gone?',
  deg: false,
};

itemList['tequila'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Tequila',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_tequila.png',
  information: 'Tequilya brand',
  deg: false,
};

itemList['tequilashot'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Shot of Tequila',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_tequila-shot.png',
  information: 'Uno mas por favor',
  deg: false,
};

itemList['vodka'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Vodka',
  price: 25,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_vodka.png',
  information: 'Sates Thirst',
  deg: false,
};

itemList['whiskey'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Whiskey',
  price: 25,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_whiskey.png',
  information: 'Sates Thirst',
  deg: false,
};

itemList['420bar'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: '420 Bar',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_420-bar.png',
  information: 'Duuuude brah...',
  deg: false,
};

itemList['69box'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: '69 Cigar Box',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_69-cigar-box.png',
  information: 'A taste of Cuba',
  deg: false,
};

itemList['69pack'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: '69 Brand Pack',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_69-brand-pack.png',
  information: 'Just one more',
  deg: false,
};

itemList['champagne'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Champagne',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_champagne.png',
  information: 'Time to celebrate',
  deg: false,
};

itemList['cgummies'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Cannabis Gummies',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_cannabis-gummies.png',
  information: 'Duuude...',
  deg: false,
};

itemList['chloroform'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Chloroform',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_chloroform.png',
  information: 'Special Cross recipe',
  deg: false,
};

itemList['ibuprofen'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Ibuprofen',
  price: 150,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_ibuprofen.png',
  information: 'Cures all. Right?',
  deg: false,
};

itemList['drugx'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Drug X',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_drug-x.png',
  information: 'Now in testing by Humane Labs',
  deg: false,
};

// food

itemList['beer'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Beer',
  price: 10,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_beer.png',
  information: 'Sates Thirst',
  deg: false,
};

itemList['bfsandwich'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Breakfast Sandwich',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_breakfast-sandwich.png',
  information: 'Rise and shine',
  deg: false,
};

itemList['cbballs'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Cluckin Balls',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_cluckin-balls.png',
  information: 'Ooh..salty. 440Cal',
  deg: false,
};

itemList['cbbucket'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Chicken Bucket',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_chicken-bucket.png',
  information: 'I like chicken! 2350Cal',
  deg: false,
};

itemList['cbclucker'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Little Clucker',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_little-clucker.png',
  information: 'Cluckin toy not included',
  deg: false,
};

itemList['cbdrink'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Cluckin Drink',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_cluckin-drink.png',
  information: 'Hell Cluckin Yeah',
  deg: false,
};

itemList['cbfarmers'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: "Farmer's Surprise",
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_farmers-surprise.png',
  information: 'The chewy bits arent harmful',
  deg: false,
};

itemList['cbfowl'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Fowl Burger',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_fowl-burger.png',
  information: 'If you enjoyed it, the chicken didnt die in vain! 900Cal',
  deg: false,
};

itemList['cbfries'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Cluckin Fries',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_cluckin-fries.png',
  information: 'Cluckinsize included. 680Cal',
  deg: false,
};

itemList['cbrings'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Cluckin Rings',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_cluckin-rings.png',
  information: 'Suffering never tasted so good! 850Cal',
  deg: false,
};

itemList['cbrownie'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Cannabis Brownie',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_cannabis-brownie.png',
  information: 'Dude...',
  deg: false,
};

itemList['cbveggy'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Veggy Salad',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_veggy-salad.png',
  information: 'Mystery chewy bits included. 750Cal',
  deg: false,
};

itemList['cocoab'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Cocoa Butter',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_cocoa-butter.png',
  information: 'Hecho en Guatemala',
  deg: false,
};

itemList['cookie'] = {
  fullyDegrades: true,
  decayrate: 0.01,
  displayname: 'Cookie',
  craft: [{ itemid: 'foodingredient', amount: 1 }],
  price: 2,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_cookie.png',
  information: 'Baked with love',
  deg: false,
};

itemList['crabcakes'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Crab Cakes',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_crab-cakes.png',
  information: 'Scrumptious',
  deg: false,
};

itemList['energybar'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Energy Bar',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_energy-bar.png',
  information: 'Ego Chaser bars for chads',
  deg: false,
};

itemList['pizza'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Pizza Slice',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_pizza-slice.png',
  information: 'Check for pineapple',
  deg: false,
};

itemList['sushiplate'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Sushi Plate',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_sushi-plate.png',
  information: 'Dip fish-side first',
  deg: false,
};

itemList['sushiroll'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Sushi Rolls',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_sushi-rolls.png',
  information: 'Made fresh',
  deg: false,
};

itemList['wings'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Wings',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_wings.png',
  information: 'Dont lick your fingers',
  deg: false,
};

itemList['chips'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Chips',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_chips.png',
  information: 'Phat Chips yeeeaaah.',
  deg: false,
};

itemList['chocobar'] = {
  fullyDegrades: true,
  decayrate: 0.01,
  displayname: 'Chocolate Bar',
  craft: [{ itemid: 'foodingredient', amount: 1 }],
  price: 10,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_chocolate-bar.png',
  information: 'Mmm...Meteorite Bar',
  deg: false,
};

itemList['maccheese'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Mac & Cheese',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_macn-cheese.png',
  information: 'Sapid',
  deg: false,
};

itemList['meteorite'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Fukang Meteorite',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_fukang-meteorite.png',
  information: 'Out of this world',
  deg: false,
};

itemList['pancakes'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Pancakes',
  price: 150,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_pancakes.png',
  information: 'Flat but tasty',
  deg: false,
};

itemList['panini'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Panini Sandwich',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_panini-sandwich.png',
  information: 'Piquant',
  deg: false,
};

itemList['pinacolada'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Pina Colada',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_pina-colada.png',
  information: 'And getting caught in the rain',
  deg: false,
};

itemList['popcorn'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Popcorn',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_popcorn.png',
  information: 'Dis gon b gud',
  deg: false,
};

itemList['ramen'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Ramen',
  price: 150,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_ramen.png',
  information: 'Itadakimasu!',
  deg: false,
};

itemList['bubblelasagna'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: "'Lasagna'",
  price: 150,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_bubblelasagna.png',
  information: 'Cooked.. somehow..',
  deg: false,
};

itemList['spaghetti'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Spaghetti',
  price: 150,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_spaghetti.png',
  information: 'Knees weak...',
  deg: false,
};

itemList['spaghettican'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Can of Spaghetti',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_spaghetti-can.png',
  information: 'Fresh from the trunk, awight?',
  deg: false,
};

itemList['torta'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Torta',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_torta.png',
  information: 'El mejor jamon',
  deg: false,
};

// dayz food

itemList['coffee'] = {
  fullyDegrades: true,
  decayrate: 0.01,
  displayname: 'Coffee',
  craft: [{ itemid: 'foodingredient', amount: 2 }],
  price: 50,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_coffee.png',
  information: 'Wow, its strong.',
  deg: false,
};

itemList['cola'] = {
  fullyDegrades: true,
  decayrate: 0.01,
  displayname: 'Cola',
  price: 5,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_coke.png',
  information: 'Sates Thirst',
  deg: false,
};

itemList['burrito'] = {
  fullyDegrades: true,
  decayrate: 0.01,
  displayname: 'Burrito',
  craft: [{ itemid: 'foodingredient', amount: 1 }],
  price: 20,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_burrito.png',
  information: 'Burrito',
  deg: false,
};

itemList['eggsbacon'] = {
  fullyDegrades: true,
  decayrate: 0.01,
  displayname: 'Eggs and Bacon',
  craft: [{ itemid: 'foodingredient', amount: 1 }],
  price: 50,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_eggs-and-bacon.png',
  information: 'Great start to your morning',
  deg: false,
};

itemList['donut'] = {
  fullyDegrades: true,
  decayrate: 0.01,
  displayname: 'Donut',
  craft: [{ itemid: 'foodingredient', amount: 2 }],
  price: 50,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_donut.png',
  information: 'Powered by Francis™',
  deg: false,
};

itemList['foodgoods'] = {
  fullyDegrades: true,
  decayrate: 0.01,
  displayname: 'Food goods',
  price: 500,
  weight: 3,
  nonStack: false,
  model: '',
  image: 'np_food-goods.png',
  deg: false,
};

itemList['foodingredient'] = {
  fullyDegrades: true,
  decayrate: 0.0002,
  displayname: 'Ingredients',
  price: 10,
  weight: 5,
  nonStack: false,
  model: '',
  image: 'np_ingredients.png',
  information: 'Used to craft food - be aware, food doesnt last forever!',
  deg: false,
};

itemList['fries'] = {
  fullyDegrades: true,
  decayrate: 0.01,
  displayname: 'Fries',
  price: 50,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_fries.png',
  information: 'Sates Hunger and thickens blood',
  deg: false,
};

itemList['greencow'] = {
  fullyDegrades: true,
  decayrate: 0.01,
  displayname: 'Green Cow',
  craft: [{ itemid: 'foodingredient', amount: 1 }],
  price: 50,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_green-cow.png',
  information: 'Slightly Increases Stamina and Speed',
  deg: false,
};

itemList['churro'] = {
  fullyDegrades: true,
  decayrate: 0.01,
  displayname: 'Churro',
  craft: [{ itemid: 'foodingredient', amount: 3 }],
  price: 50,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_churro.png',
  information: 'Basically a long donut.',
  deg: false,
};

itemList['bakingsoda'] = {
  fullyDegrades: true,
  decayrate: 0.01,
  displayname: 'Baking Soda',
  price: 50,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_bakingsoda.png',
  information: 'Its Baking Soda..? Mix with 10g Cocaine Bags to make Crack Cocaine. ',
  deg: false,
};

itemList['bleederburger'] = {
  fullyDegrades: true,
  decayrate: 0.01,
  displayname: 'The Bleeder',
  price: 50,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_the-bleeder.png',
  information: 'Sates Hunger and reduces stress.',
  deg: false,
};

itemList['water'] = {
  fullyDegrades: true,
  decayrate: 0.01,
  displayname: 'Water',
  price: 5,
  weight: 1,
  craft: [{ itemid: 'foodingredient', amount: 1 }],
  nonStack: false,
  model: '',
  image: 'np_water.png',
  information: 'Sates Thirst',
  deg: false,
};

itemList['hotdog'] = {
  fullyDegrades: true,
  decayrate: 0.01,
  displayname: 'Hot Dog',
  craft: [{ itemid: 'foodingredient', amount: 1 }],
  price: 50,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_hotdog.png',
  information: 'Dont ask what is in it',
  deg: false,
};

itemList['icecream'] = {
  fullyDegrades: true,
  decayrate: 0.01,
  displayname: 'Ice Cream',
  craft: [{ itemid: 'foodingredient', amount: 1 }],
  price: 50,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_icecream.png',
  information: 'Made from real human titty milk.',
  deg: false,
};

itemList['jailfood'] = {
  fullyDegrades: true,
  decayrate: 0.001,
  displayname: 'Jail Food',
  price: 0,
  weight: 50,
  nonStack: false,
  model: '',
  image: 'np_jailfood.png',
  information: "+5 fat <br> Looks as bad as the Sheriff's aim.",
  deg: false,
};

itemList['sandwich'] = {
  fullyDegrades: true,
  decayrate: 0.01,
  craft: [{ itemid: 'foodingredient', amount: 1 }],
  displayname: 'Sandwich',
  price: 5,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_sandwich.png',
  information: 'Sates Hunger',
  deg: false,
};

itemList['torpedo'] = {
  fullyDegrades: true,
  decayrate: 0.01,
  displayname: 'Torpedo',
  price: 50,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_torpedo.png',
  information: 'Sates Hunger and reduces stress.',
  deg: false,
};

itemList['treat'] = {
  fullyDegrades: true,
  decayrate: 0.01,
  displayname: 'Dog Treat',
  price: 69,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_treat.png',
  information: 'Feed to dog',
  deg: false,
};

itemList['hamburger'] = {
  fullyDegrades: true,
  decayrate: 0.01,
  displayname: 'Hamburger',
  price: 5,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_hamburger.png',
  information: 'Sates Hunger',
  deg: false,
};

itemList['weedtaco'] = {
  fullyDegrades: true,
  decayrate: 0.00012,
  displayname: 'Delivery',
  craft: [{ itemid: 'foodingredient', amount: 1 }],
  price: 10,
  weight: 5,
  nonStack: false,
  model: '',
  image: 'np_paperbag.png',
  information: 'This aint free taco.',
  deg: false,
};

itemList['fishtaco'] = {
  fullyDegrades: true,
  decayrate: 0.01,
  displayname: 'Fish Taco',
  craft: [{ itemid: 'foodingredient', amount: 1 }],
  price: 50,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_fishtaco.png',
  information: 'Make like the fishes.',
  deg: false,
};

itemList['heartstopper'] = {
  fullyDegrades: true,
  decayrate: 0.01,
  displayname: 'The Heart Stopper',
  price: 50,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_the-heart-stopper.png',
  information: 'Sates Hunger and reduces stress.',
  deg: false,
};

itemList['moneyshot'] = {
  fullyDegrades: true,
  decayrate: 0.01,
  displayname: 'Money Shot',
  price: 50,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_money-shot.png',
  information: 'Sates Hunger and reduces stress.',
  deg: false,
};

itemList['meatfree'] = {
  fullyDegrades: true,
  decayrate: 0.01,
  displayname: 'Meat Free',
  price: 50,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_meat-free.png',
  information: 'Sates Hunger and reduces stress.',
  deg: false,
};

itemList['mshake'] = {
  fullyDegrades: true,
  decayrate: 0.01,
  displayname: 'Milkshake',
  craft: [{ itemid: 'foodingredient', amount: 1 }],
  price: 10,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_milkshake.png',
  information: 'Hand-scooped for you',
  deg: false,
};

itemList['taco'] = {
  fullyDegrades: true,
  decayrate: 0.01,
  displayname: 'Taco',
  craft: [{ itemid: 'foodingredient', amount: 1 }],
  price: 20,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_taco.png',
  information: 'This aint free taco.',
  deg: false,
};

itemList['freshmeat'] = {
  fullyDegrades: true,
  decayrate: 0.01,
  displayname: 'Fresh Meat',
  craft: [{ itemid: 'foodingredient', amount: 1 }],
  price: 10,
  weight: 12,
  nonStack: false,
  model: '',
  image: 'np_rawmeat.png',
  information: 'Meat, Wow..',
  deg: false,
};

// materials

itemList['aluminium'] = {
  craft: [{ itemid: 'recyclablematerial', amount: 1 }],
  fullyDegrades: true,
  decayrate: 0.5,
  displayname: 'Aluminium',
  price: 10,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_aluminum.png',
  deg: false,
};

itemList['plastic'] = {
  craft: [{ itemid: 'recyclablematerial', amount: 1 }],
  fullyDegrades: true,
  decayrate: 0.5,
  displayname: 'Plastic',
  price: 11,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_plastic.png',
  deg: false,
};

itemList['copper'] = {
  craft: [{ itemid: 'recyclablematerial', amount: 1 }],
  fullyDegrades: true,
  decayrate: 0.5,
  displayname: 'Copper',
  price: 10,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_copper.png',
  deg: false,
};

itemList['electronics'] = {
  craft: [{ itemid: 'recyclablematerial', amount: 1 }],
  fullyDegrades: true,
  decayrate: 0.5,
  displayname: 'Electronics',
  price: 15,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_electronics.png',
  deg: false,
};

itemList['rubber'] = {
  craft: [{ itemid: 'recyclablematerial', amount: 1 }],
  fullyDegrades: true,
  decayrate: 0.5,
  displayname: 'Rubber',
  price: 10,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_rubber.png',
  deg: false,
};

itemList['scrapmetal'] = {
  craft: [{ itemid: 'recyclablematerial', amount: 1 }],
  fullyDegrades: true,
  decayrate: 0.5,
  displayname: 'Scrap Metal',
  price: 15,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_scrap-metal.png',
  deg: false,
};

itemList['steel'] = {
  craft: [{ itemid: 'recyclablematerial', amount: 1 }],
  fullyDegrades: true,
  decayrate: 0.5,
  displayname: 'Steel',
  price: 15,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_steel.png',
  deg: false,
};

itemList['glass'] = {
  craft: [{ itemid: 'recyclablematerial', amount: 1 }],
  fullyDegrades: true,
  decayrate: 0.5,
  displayname: 'Glass',
  price: 12,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_glass.png',
  deg: false,
};

itemList['advlockpick'] = {
  fullyDegrades: true,
  decayrate: 0.25,
  displayname: 'Adv Lock Pick',
  craft: [
    { itemid: 'aluminium', amount: 15 },
    { itemid: 'plastic', amount: 1 },
    { itemid: 'rubber', amount: 1 },
  ],
  price: 500,
  weight: 3,
  nonStack: false,
  model: '',
  image: 'np_advanced-lockpick.png',
  deg: false,
};

itemList['armor'] = {
  fullyDegrades: true,
  decayrate: 0.25,
  displayname: 'Chest Armor',
  craft: [
    { itemid: 'aluminium', amount: 5 },
    { itemid: 'plastic', amount: 1 },
    { itemid: 'rubber', amount: 1 },
  ],
  price: 250,
  weight: 50,
  nonStack: false,
  model: '',
  image: 'np_chest-armor.png',
  information: 'Protects you from bleeding and stumbling on injuries.',
  deg: false,
};

itemList['bandage'] = {
  fullyDegrades: true,
  decayrate: 0.25,
  displayname: 'Bandage',
  price: 15,
  weight: 1,
  nonStack: false,
  model: 'prop_ld_health_pack',
  image: 'np_bandage.png',
  information: 'Heals Wounds and Reduces Bleeding',
  deg: false,
};

// general items

itemList['aluminiumoxide'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Aluminium Oxide',
  price: 55,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_aluminum-oxide.png',
  deg: false,
};

itemList['advrepairkit'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Adv Repair Kit',
  craft: [{ itemid: 'electronics', amount: 10 }],
  price: 100,
  weight: 15,
  nonStack: false,
  model: '',
  image: 'np_repair-toolkit.png',
  information: '1 Time use - degrades engine parts more than basic tool kits, repairs engine to full.',
  deg: false,
};

itemList['assphone'] = {
  fullyDegrades: false,
  illegal: true,
  decayrate: 0.0,
  displayname: 'Ass Phone',
  price: 500,
  weight: 5,
  nonStack: false,
  model: '',
  image: 'np_poophone.png',
  information:
    '-7 Jail <br> +5 Vibrate <br> You cant seem to work out the lock code? <br> If it has roleplay stats, it must be roleplay.',
  deg: false,
};

// custom items

itemList['ace'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Ace of Spades',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_ace-of-spades.png',
  information: 'Up your sleeve',
  deg: false,
};

itemList['action'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Action Figure',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_action-figure.png',
  information: 'Superhero: Impotent Rage',
  deg: false,
};

itemList['agothic'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'American Gothic',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_american-gothic.png',
  information: 'Wood 1930',
  deg: false,
};

itemList['armxray'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Arm X-Ray',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_arm-xray.png',
  information: 'Ouch...',
  deg: false,
};

itemList['atacos'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Tacos de Asada',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_tacos-de-asada.png',
  information: 'I could eat ten',
  deg: false,
};

itemList['azpapers'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Aztecas Papers',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_aztecas-papers.png',
  information: 'Orale',
  deg: false,
};

itemList['anime'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Anime Poster',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_anime-poster.png',
  information: 'Weebs in uwu',
  deg: false,
};

itemList['antlers'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Antlers',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_antlers.png',
  information: 'A fine prize',
  deg: false,
};

itemList['aodcut'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'AoD MC Cut',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_aod-cut.png',
  information: "The fruits of Lester Arnold's labor",
  deg: false,
};

itemList['bluebelt'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Blue 622 Belt',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_blue-belt.png',
  information: 'Blue 622 - Sensei',
  deg: false,
};

itemList['blackbelt'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Black Belt',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_black-belt.png',
  information: 'Master Rank 4/4',
  deg: false,
};

itemList['blackchip'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Black Chip',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_black-chip.png',
  information: 'Feel nice in your hand',
  deg: false,
};

itemList['bglass'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Beer Glass',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_glass-of-beer.png',
  information: 'Wait for this all to blow over',
  deg: false,
};

itemList['bobross'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Bob Ross Photo',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_bob-ross-photo.png',
  information: 'Happy little loose ends...',
  deg: false,
};

itemList['bondicut'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Bondi Boys Cut',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_bondi-cut.png',
  information: 'And an old rocking chair',
  deg: false,
};

itemList['bspapers'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Ballas Papers',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_ballas-papers.png',
  information: 'You good?',
  deg: false,
};

itemList['bucket'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Bucket',
  price: 10,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_bucket.png',
  deg: false,
};

itemList['burialmask'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Burial Mask',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_burial-mask.png',
  information: 'Mask of Tutankhamun',
  deg: false,
};

itemList['braab'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Braab Shirt',
  price: 150,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_braab-tshirt.png',
  information: 'Yikes',
  deg: false,
};

itemList['brain'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Brain MRI',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_brain-mri.png',
  information: 'Ow...',
  deg: false,
};

itemList['bonsai'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Bonsai Tree',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_bonsai-tree.png',
  information: 'Be one with nature',
  deg: false,
};

itemList['cactus'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Cactus',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_cactus.png',
  information: 'For the lazy',
  deg: false,
};

itemList['cathat'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: "Children's Book",
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_childrens-book.png',
  information: 'Its story time...',
  deg: false,
};

itemList['camille'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Camille',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_camille.png',
  information: 'Monet 1866',
  deg: false,
};

itemList['carbattery'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Car Battery',
  price: 150,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_car-battery.png',
  information: 'Car Battery',
  deg: false,
};

itemList['carhood'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Car Hood',
  price: 150,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_car-hood.png',
  information: 'Car Hood',
  deg: false,
};

itemList['cashroll'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Roll of Cash',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_cash-roll.png',
  information: 'Whats the count..',
  deg: false,
};

itemList['cashstack'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Stack of Cash',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_cash-stack.png',
  information: 'All nice and sequential.',
  deg: false,
};

itemList['bdiamond'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Blue Diamond',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_blue-diamond.png',
  information: 'Bavaria 1918.',
  deg: false,
};

itemList['band'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Band of Notes',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_cash-stack.png',
  information: 'Lots of low denominators - Indicates drug sales.',
  deg: false,
};

itemList['rollcash'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Roll of Small Notes',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_cash-roll.png',
  information: 'Lots of low denominators - Indicates drug sales.',
  deg: false,
};

itemList['battery'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Battery',
  price: 10,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_battery.png',
  deg: false,
};

itemList['bazooka'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Bazooka Suppressor',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_bazooka-suppressor.png',
  information: 'Good for a single shot.',
  deg: false,
};

itemList['binoculars'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Binoculars',
  craft: [
    { itemid: 'aluminium', amount: 5 },
    { itemid: 'plastic', amount: 1 },
    { itemid: 'rubber', amount: 1 },
  ],
  price: 300,
  weight: 10,
  nonStack: false,
  model: '',
  image: 'np_binoculars.png',
  deg: false,
};

itemList['blindfold'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Blindfold',
  price: 250,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_blindfold.png',
  deg: false,
};

itemList['bloodbag'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Blood Bag',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_blood-bag.png',
  information: 'Just my type',
  deg: false,
};

itemList['bloodvial'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Blood Vial',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_blood-tube.png',
  information: 'Simon ese',
  deg: false,
};

itemList['blueb'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Blue Bandana',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_blue-bandana.png',
  information: 'Simon ese',
  deg: false,
};

itemList['bluechip'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Blue Chip',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_blue-chip.png',
  information: 'Double or nothing',
  deg: false,
};

itemList['bmary'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Bloody Mary',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_bloody-mary.png',
  information: 'With a hint of lemon',
  deg: false,
};

itemList['Boombox'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Boombox',
  price: 350,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_boombox.png',
  information: 'Its a prop, wow?',
  deg: false,
};

itemList['Box'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Box',
  price: 350,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_box.png',
  information: 'Its a prop, wow?',
  deg: false,
};

itemList['breadboard'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Breadboard',
  price: 60,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_breadboard.png',
  deg: false,
};

itemList['camera'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Nikea NP1000',
  price: 2000,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_camera.png',
  information: 'Works 100% of the time 60% of the time.',
  deg: false,
};

itemList['casing'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Bullet Casing',
  price: 10,
  weight: 0,
  nonStack: true,
  model: '',
  image: 'np_pistol-ammo.png',
  deg: false,
};

itemList['certificate'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Certificate',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_certificate.png',
  information: 'You made it!',
  deg: false,
};

itemList['cgpapers'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'CG Papers',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_cg-papers.png',
  information: 'Wata woozers',
  deg: false,
};

itemList['chalice'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Pimp Chalice',
  price: 100,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_pimp-chalice.png',
  information: 'Morgan Freidmans Legendary Pimp Chalice.',
  deg: false,
};

itemList['champion'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Championship Belt',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_champion-belt.png',
  information: 'Money is in the rematch.',
  deg: false,
};

itemList['chestxray'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Chest X-Ray',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_chest-xray.png',
  information: 'Argh...',
  deg: false,
};

itemList['chglass'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Champagne Glass',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_champagne-glass.png',
  information: 'To us',
  deg: false,
};

itemList['cigar'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Cigar',
  price: 30,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_cigar.png',
  deg: false,
};

itemList['ciggy'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Cigarette',
  price: 10,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_cigarette.png',
  deg: false,
};

itemList['civtrophy'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Civilian of the Year',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_civ-trophy.png',
  information: 'The greatest law-abiding citizen',
  deg: false,
};

itemList['ckatana'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Cursed Katana',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_cursed-katana.png',
  information: 'Very honorable katana to slay Gojira',
  deg: false,
};

itemList['cleaninggoods'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Cleaning goods',
  price: 500,
  weight: 3,
  nonStack: false,
  model: '',
  image: 'np_cleaning-goods.png',
  deg: false,
};

itemList['clotion'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Cannabis Lotion',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_cannabis-lotion.png',
  information: 'Bro..duuudee..',
  deg: false,
};

itemList['clover'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Four-leaf Clover',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_clover.png',
  information: '+255 Luck',
  deg: false,
};

itemList['comp'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Composition',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_composition.png',
  information: 'What do you think it means?',
  deg: false,
};

itemList['corpsefeet'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Feet',
  price: 50,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'feet2.png',
  information: 'Wheres the rest of the body?',
  deg: false,
};

itemList['corpsehands'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Hands',
  price: 50,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'hands.png',
  information: 'Wheres the rest of the body?',
  deg: false,
};

itemList['coupon10'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: '10% Off Coupon',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_coupon-ten.png',
  information: 'Limit only one per sale!',
  deg: false,
};

itemList['coupon15'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: '15% Off Coupon',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_coupon-fifteen.png',
  information: 'Does not include jail time',
  deg: false,
};

itemList['coupon25'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: '25% Off Coupon',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_coupon-25.png',
  information: 'Expires 01/2045',
  deg: false,
};

itemList['cpelt'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Cougar Pelt',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_cougar-pelt.png',
  information: 'The hunter becomes the hunted',
  deg: false,
};

itemList['crane'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Origami Crane',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_origami-crane.png',
  information: 'Gaff approved',
  deg: false,
};

itemList['csuey'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Chop Suey',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_chop-suey.png',
  information: 'Hopper 1929',
  deg: false,
};

itemList['ctooth'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Cougar Tooth',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_cougar-tooth.png',
  information: 'Stalks its prey',
  deg: false,
};

itemList['ctrophy'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Cooking Trophy',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_cooking-trophy.png',
  information: 'Shokugeki victory',
  deg: false,
};

itemList['cuffs'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Hand Cuffs',
  craft: [{ itemid: 'scrapmetal', amount: 100 }],
  price: 250,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_hand-cuffs.png',
  deg: false,
};

itemList['cultneck'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Cult Necklace',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_cult-necklace.png',
  information: 'One of us...',
  deg: false,
};

itemList['dcboard'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Diamond Chessboard',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_diamond-chessboard.png',
  information: 'Deep Blue cant appreciate this',
  deg: false,
};

itemList['dcert'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Death Certificate',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_d-certificate.png',
  information: 'In memoriam',
  deg: false,
};

itemList['decrypterenzo'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Decrypter Enzo',
  price: 300,
  weight: 5,
  nonStack: false,
  model: '',
  image: 'np_decrypter-enzo.png',
  deg: false,
};

itemList['decrypterfv2'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Decrypter Fv2',
  price: 300,
  weight: 5,
  nonStack: false,
  model: '',
  image: 'np_decrypter-fv2.png',
  deg: false,
};

itemList['decryptersess'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Decrypter Sess',
  price: 300,
  weight: 5,
  nonStack: false,
  model: '',
  image: 'np_decrypter-sess.png',
  deg: false,
};

itemList['dhide'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Deer Hide',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_deer-hide.png',
  information: 'Call peta',
  deg: false,
};

itemList['diamondrec'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Diamond Record',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_diamond-record.png',
  information: '10 Million units sold!!',
  deg: false,
};

itemList['dice'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Pair of Dice',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_dice.png',
  information: 'Just takin out the trash',
  deg: false,
};

itemList['dodo'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Dodo Statue',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_dodo-statue.png',
  information: 'Arent these extinct?',
  deg: false,
};

itemList['dodospit'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Dodo Spit',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_dodo-spit.png',
  information: 'What the..why?!',
  deg: false,
};

itemList['doramaar'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Dora Maar au Chat',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_dora-maar-auchat.png',
  information: 'Picasso 1941',
  deg: false,
};

itemList['dragon'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Dragon',
  price: 150,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_dragon.png',
  information: 'Hopefully its not useless like in GOT',
  deg: false,
};

itemList['dream'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Dreamcatcher',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_dreamcatcher.png',
  information: 'Sleep well',
  deg: false,
};

itemList['drill'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Drill',
  craft: [
    { itemid: 'aluminium', amount: 25 },
    { itemid: 'plastic', amount: 1 },
    { itemid: 'rubber', amount: 1 },
  ],
  price: 150,
  weight: 80,
  nonStack: false,
  model: '',
  image: 'np_drill.png',
  deg: false,
};

itemList['drillbit'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Drill Bit',
  price: 100,
  weight: 2,
  nonStack: false,
  model: '',
  image: 'np_drill-bit.png',
  deg: false,
};

itemList['drivingtest'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Driving Test',
  price: 10,
  weight: 1,
  nonStack: true,
  model: '',
  image: 'np_driving-test.png',
  deg: false,
};

itemList['dskull'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Diamond Skull',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_diamond-skull.png',
  information: 'For the Love of God - Hirst 2007',
  deg: false,
};

itemList['DuffelBag'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Black Duffel Bag',
  price: 350,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_duffel.png',
  information: 'Its a prop, wow?',
  deg: false,
};

itemList['dusche'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Dusche Gold',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_dusche-gold.png',
  information: 'Let it pour',
  deg: false,
};

itemList['dye'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Dye',
  price: 10,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_dye.png',
  deg: false,
};

itemList['electronickit'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Electronic Kit',
  craft: [{ itemid: 'electronics', amount: 230 }],
  price: 900,
  weight: 15,
  nonStack: false,
  model: '',
  image: 'np_electronic-kit.png',
  deg: false,
};

itemList['emptybaggies'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Empty Baggies',
  price: 50,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_pack-of-empty-baggies.png',
  deg: false,
};

itemList['enchiladas'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Enchiladas',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_enchiladas.png',
  information: 'Mas chile por favor',
  deg: false,
};

itemList['ering'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Engagement Ring',
  price: 150,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_engagement-ring.png',
  information: 'Hope its a yes...',
  deg: false,
};

itemList['erpring'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Gold Band Ring.',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_engagement-ring.png',
  information: "Its a Sapphire Diamond & Gold ring. You look upon the ring and it reads 'Isaacs Dearest'...",
  deg: false,
};

itemList['evidence'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Evidence',
  price: 0,
  weight: 1,
  nonStack: true,
  model: '',
  image: 'np_evidence.png',
  deg: false,
};

itemList['np_evidence_marker_yellow'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Evidence',
  price: 0,
  weight: 1,
  nonStack: true,
  model: '',
  image: 'np_evidence_marker_yellow.png',
  deg: false,
};

itemList['np_evidence_marker_red'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Evidence',
  price: 0,
  weight: 1,
  nonStack: true,
  model: '',
  image: 'np_evidence_marker_red.png',
  deg: false,
};

itemList['np_evidence_marker_white'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Evidence',
  price: 0,
  weight: 1,
  nonStack: true,
  model: '',
  image: 'np_evidence_marker_white.png',
  deg: false,
};

itemList['np_evidence_marker_orange'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Evidence',
  price: 0,
  weight: 1,
  nonStack: true,
  model: '',
  image: 'np_evidence_marker_orange.png',
  deg: false,
};

itemList['np_evidence_marker_light_blue'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Evidence',
  price: 0,
  weight: 1,
  nonStack: true,
  model: '',
  image: 'np_evidence_marker_light_blue.png',
  deg: false,
};

itemList['np_evidence_marker_purple'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Evidence',
  price: 0,
  weight: 1,
  nonStack: true,
  model: '',
  image: 'np_evidence_marker_purple.png',
  deg: false,
};

itemList['evidencebag'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Evidence Bag',
  price: 0,
  weight: 0,
  nonStack: true,
  model: '',
  image: 'np_evidence-bag.png',
  deg: false,
};

itemList['pdbadge'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'PD Badge',
  price: 0,
  weight: 0,
  nonStack: true,
  model: '',
  image: 'np_pd_badge.png',
  deg: false,
};

itemList['faberge'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Faberge Egg',
  price: 150,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_faberge-egg.png',
  information: 'Rockford Hills easter egg',
  deg: false,
};

itemList['failtest'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Failed Test',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_failed-test.png',
  information: 'Try again later',
  deg: false,
};

itemList['fakeplate'] = {
  fullyDegrades: false,
  decayrate: 0.25,
  displayname: 'Fake Plate Kit',
  craft: [{ itemid: 'electronics', amount: 10 }],
  price: 50,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_plate.png',
  information: 'Use on a vehicle to alter its plate or change it back - 1 time use..',
  deg: false,
};

itemList['fbumper'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Front Bumper',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_front-bumper.png',
  information: 'Ill have the tuna, no crust',
  deg: false,
};

itemList['feathers'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Feathers',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_feathers.png',
  information: 'Get plucked',
  deg: false,
};

itemList['femmes'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: "Les Femmes d'Alger",
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_les-femmes-dalger.png',
  information: 'Picasso 1955',
  deg: false,
};

itemList['fertilizer'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Fertilizer',
  price: 1000,
  weight: 3,
  nonStack: false,
  model: '',
  image: 'np_fertilizer.png',
  information: 'Cool.',
  deg: false,
};

itemList['filetm'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Filet Mignon',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_filet-mignon.png',
  information: 'Succulent',
  deg: false,
};

itemList['flowers'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Flowers',
  price: 50,
  weight: 10,
  nonStack: false,
  model: '',
  image: 'np_flowers.png',
  information: 'Wow, so beautiful.',
  deg: false,
};

itemList['flyer'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Flyer',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_flyer.png',
  information: 'Invite people to your business or event!',
  deg: false,
};

itemList['flyer'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Flyer',
  price: 150,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_flyer.png',
  information: 'Invite people to your business or event!',
  deg: false,
};

itemList['frappuccino'] = {
  fullyDegrades: true,
  decayrate: 0.01,
  displayname: 'Frappuccino',
  craft: [{ itemid: 'foodingredient', amount: 2 }],
  price: 10,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_frappuccino.png',
  information: 'Its like I have ESPN or something',
  deg: false,
};

itemList['frisbee'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Frisbee',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_frisbee.png',
  information: 'And she would throw it back to me',
  deg: false,
};

itemList['ftartlet'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Fruit Tartlet',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_fruit-tartlet.png',
  information: 'Flavorsome',
  deg: false,
};

itemList['ftoast'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'French Toast',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_french-toast.png',
  information: 'Delectable',
  deg: false,
};

itemList['fuse'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Fuse',
  price: 30,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_fuse.png',
  deg: false,
};

itemList['gachet'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Portrait of Dr.Gachet',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_portrait-of-drgachet.png',
  information: 'Van Gogh 1890',
  deg: false,
};

itemList['glowing'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Glowing Substance',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_glowing-substance.png',
  information: 'May cause unexpected mutations',
  deg: false,
};

itemList['glucose'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: '500g Glucose',
  price: 50,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_glucose.png',
  information: 'Mmmm Glucose. Mix with 10g Cocaine Bags to make street cocaine.',
  deg: false,
};

itemList['goldbar'] = {
  fullyDegrades: false,
  illegal: true,
  isStolen: true,
  decayrate: 0.0,
  displayname: 'Gold Bar',
  craft: [{ itemid: 'rolexwatch', amount: 100 }],
  price: 100,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_gold-bar.png',
  deg: false,
};

itemList['goldchip'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Gold Chip',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_gold-chip.png',
  information: 'All in',
  deg: false,
};

itemList['goldcoin'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Gold Coin',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_gold-coin.png',
  information: 'Check inside for chocolate',
  deg: false,
};

itemList['goldrec'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Gold Record',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_gold-record.png',
  information: '500, 000 units sold',
  deg: false,
};

itemList['grandtete'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Grand Tete Mince',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_grand-tete-mince.png',
  information: 'Giacometti 1954',
  deg: false,
};

itemList['greekbust'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Greek Bust',
  price: 150,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_greek-bust.png',
  information: 'You sure its Greek?',
  deg: false,
};

itemList['greenb'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Green Bandana',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_green-bandana.png',
  information: 'Ay yo my mans',
  deg: false,
};

itemList['greenbelt'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Green Belt',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_green-belt.png',
  information: 'Adept Rank 2/4',
  deg: false,
};

itemList['greenchip'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Green Chip',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_green-chip.png',
  information: 'Fold em',
  deg: false,
};

itemList['Gruppe6Card'] = {
  fullyDegrades: true,
  illegal: true,
  craft: [{ itemid: 'ciggy', amount: 30 }],
  decayrate: 0.003,
  displayname: 'G6 C Card',
  price: 3500,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'gruppe6.png',
  information: 'Looks handy',
  deg: false,
}; // black
itemList['Gruppe6Card2'] = {
  fullyDegrades: false,
  illegal: true,
  craft: [
    { itemid: 'assphone', amount: 5 },
    { itemid: 'methlabproduct', amount: 35 },
    { itemid: 'ciggy', amount: 150 },
  ],
  decayrate: 0.0,
  displayname: 'G6 HS Card',
  price: 3500,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'gruppe62.png',
  information: 'Looks handy',
  deg: false,
};

itemList['Gruppe6Card22'] = {
  fullyDegrades: false,
  illegal: true,
  craft: [
    { itemid: 'assphone', amount: 5 },
    { itemid: 'methlabproduct', amount: 55 },
    { itemid: 'ciggy', amount: 1000 },
  ],
  decayrate: 0.0,
  displayname: 'G6 V Card',
  price: 3500,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'gruppe622.png',
  information: 'Looks handy',
  deg: false,
};

itemList['Gruppe6Card222'] = {
  fullyDegrades: false,
  illegal: true,
  craft: [
    { itemid: 'assphone', amount: 5 },
    { itemid: 'methlabproduct', amount: 55 },
    { itemid: 'ciggy', amount: 1000 },
  ],
  decayrate: 0.0,
  displayname: 'G6 V2 Card',
  price: 3500,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'Gruppe6222.png',
  information: 'Looks handy',
  deg: false,
};

itemList['Gruppe6Card3'] = {
  fullyDegrades: false,
  illegal: true,
  craft: [
    { itemid: 'assphone', amount: 5 },
    { itemid: 'methlabproduct', amount: 15 },
    { itemid: 'ciggy', amount: 30 },
  ],
  decayrate: 0.0,
  displayname: 'G6 P Card',
  price: 3500,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'gruppe63.png',
  information: 'Looks handy',
  deg: false,
}; // purple

itemList['gsfpapers'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'GSF Papers',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_gsf-papers.png',
  information: 'Triple OG approved',
  deg: false,
};

itemList['gticket'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Golden Ticket',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_golden-ticket.png',
  information: 'Ask Coop',
  deg: false,
};

itemList['gum'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Gum',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_gum.png',
  information: 'Release Gum. You chew, you suck then POW',
  deg: false,
};

itemList['hairtonic'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Hair Tonic',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_hair-tonic.png',
  information: 'If youre malding try this',
  deg: false,
};

itemList['hairtie'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Hair Tie',
  price: 25,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_hairtie.png',
  information: 'We all know what this is really for...',
  deg: false,
};

itemList['harness'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Racing Harness',
  craft: [{ itemid: 'rubber', amount: 10 }],
  price: 10000,
  weight: 1,
  nonStack: true,
  model: '',
  image: 'np_harness.png',
  information: 'Stops you from being YEETED',
  deg: false,
};

itemList['heavycutters'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Heavy Cutters',
  price: 700,
  weight: 9,
  nonStack: false,
  model: '',
  image: 'np_heavy-cutters.png',
  deg: false,
};

itemList['heavydutydrill'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Heavy Duty Drill',
  craft: [
    { itemid: 'aluminium', amount: 85 },
    { itemid: 'plastic', amount: 1 },
    { itemid: 'rubber', amount: 1 },
  ],
  price: 300,
  weight: 5,
  nonStack: false,
  model: '',
  image: 'np_heavy-duty-drill.png',
  deg: false,
};

itemList['hlights'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Headlights',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_headlights.png',
  information: 'Cant detail a car with the cover on',
  deg: false,
};

itemList['holybook'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Holy Book',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_holy-book.png',
  information: 'For followers only...',
  deg: false,
};

itemList['holyhum'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Holy Hummus',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_holy-hummus.png',
  information: 'Praise be',
  deg: false,
};

itemList['homme'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: "L'Homme Qui Marche",
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_lhomme-qui-marche.png',
  information: 'Giacometti 1960',
  deg: false,
};

itemList['horchata'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Horchata',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_horchata.png',
  information: 'A la gran puchica!',
  deg: false,
};

itemList['icbelt'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Intercontinental Belt',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_intercontinental-belt.png',
  information: 'Bah gawd!',
  deg: false,
};

itemList['idcard'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Citizen Card',
  price: 500,
  weight: 0,
  nonStack: true,
  model: '',
  image: 'np_citizen-card.png',
  deg: false,
};

itemList['IFAK'] = {
  fullyDegrades: false,
  decayrate: 0.1,
  displayname: 'IFAK',
  price: 50,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'ifak.png',
  information: 'Heals you over time and clots wounds.',
  deg: false,
};

itemList['inkedmoneybag'] = {
  fullyDegrades: false,
  illegal: true,
  decayrate: 0.0,
  displayname: 'Inked Money Bag',
  price: 100000,
  weight: 10,
  nonStack: false,
  model: '',
  image: 'np_inked-money-bag.png',
  information: 'Made with cheap ink that expires',
  deg: false,
};

itemList['inkset'] = {
  fullyDegrades: false,
  illegal: true,
  decayrate: 0.0,
  displayname: 'Inked Set',
  price: 500,
  weight: 15,
  nonStack: false,
  model: '',
  image: 'np_inked-money-bag.png',
  deg: false,
};

itemList['ironoxide'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Iron Oxide',
  price: 50,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_iron-oxide.png',
  deg: false,
};

itemList['jadeite'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Jadeite Stone',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_jadeite-stone.png',
  information: 'With envy',
  deg: false,
};

itemList['joker'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Joker Card',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_joker.png',
  information: 'How bout a magic trick?',
  deg: false,
};

itemList['katana'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Katana',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_katana.png',
  information: 'Steel folded over 1000 times',
  deg: false,
};

itemList['keyfob'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Key Fob',
  price: 50,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_keyfob.png',
  information: 'Used for opening doors remotely.',
  deg: false,
};

itemList['key1'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Key 1',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_key1.png',
  information: 'Numbered Key',
  deg: false,
};

itemList['key2'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Key 2',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_key2.png',
  information: 'Numbered Key',
  deg: false,
};

itemList['key3'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Key 3',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_key3.png',
  information: 'Numbered Key',
  deg: false,
};

itemList['keya'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Key A',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_keya.png',
  information: 'Lettered Key',
  deg: false,
};

itemList['keyb'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Key B',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_keyb.png',
  information: 'Lettered Key',
  deg: false,
};

itemList['keyc'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Key C',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_keyc.png',
  information: 'Lettered Key',
  deg: false,
};

itemList['latte'] = {
  fullyDegrades: true,
  decayrate: 0.01,
  displayname: 'Latte',
  craft: [{ itemid: 'foodingredient', amount: 2 }],
  price: 10,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_latte.png',
  information: 'Thats so fetch',
  deg: false,
};

itemList['lbpapers'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'LB Papers',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_lb-papers.png',
  information: 'I plead guilty mon',
  deg: false,
};

itemList['lighter'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Lighter',
  price: 100,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_lighter.png',
  information: 'Dont start a fire with this. ',
  deg: false,
};

itemList['lockpick'] = {
  fullyDegrades: false,
  decayrate: 2.0,
  displayname: 'Lockpick Set',
  craft: [
    { itemid: 'aluminium', amount: 15 },
    { itemid: 'plastic', amount: 1 },
    { itemid: 'rubber', amount: 1 },
  ],
  price: 200,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_lockpick-set.png',
  deg: false,
};

itemList['locksystem'] = {
  fullyDegrades: false,
  illegal: true,
  decayrate: 0.0,
  displayname: 'Air Pressure Lockpick',
  price: 3500,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'locksystem.png',
  information: 'Used to blow out small locks - one time use.',
  deg: false,
};

itemList['log'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Log',
  price: 10,
  weight: 2,
  nonStack: false,
  model: '',
  image: 'np_wood.png',
  deg: false,
};

itemList['logger'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Logger Beer',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_logger-beer.png',
  information: 'Ming Ha Ling Bev. 2013',
  deg: false,
};

itemList['lostcut'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Lost MC Cut',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_lost-cut.png',
  information: 'Sandy Shores Chapter',
  deg: false,
};

itemList['lostcut_aw'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Lost MC Cut',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_lost-cut.png',
  information: 'Sandy Shores Chapter<br />Property of Al Weaselton',
  deg: false,
};

itemList['lostcut_cc'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Lost MC Cut',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_lost-cut.png',
  information: 'Sandy Shores Chapter<br />Property of Cooch Cassidy',
  deg: false,
};

itemList['lostcut_cs'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Lost MC Cut',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_lost-cut.png',
  information: 'Sandy Shores Chapter<br />Property of Catherine Scratch',
  deg: false,
};

itemList['lostcut_ga'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Lost MC Cut',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_lost-cut.png',
  information: 'Sandy Shores Chapter<br />Property of Gary Adams',
  deg: false,
};

itemList['lostcut_gm'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Lost MC Cut',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_lost-cut.png',
  information: 'Sandy Shores Chapter<br />Property of Gazza Maloo',
  deg: false,
};

itemList['lostcut_gs'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Lost MC Cut',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_lost-cut.png',
  information: 'Sandy Shores Chapter<br />Property of Greyson Sparks',
  deg: false,
};

itemList['lostcut_jp'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Lost MC Cut',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_lost-cut.png',
  information: 'Sandy Shores Chapter<br />Property of Jason Paul',
  deg: false,
};

itemList['lostcut_ng'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Lost MC Cut',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_lost-cut.png',
  information: 'Sandy Shores Chapter<br />Property of Negan Graham',
  deg: false,
};

itemList['lostcut_rc'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Lost MC Cut',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_lost-cut.png',
  information: 'Sandy Shores Chapter<br />Property of Reginald Campbell',
  deg: false,
};

itemList['lostcut_rd'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Lost MC Cut',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_lost-cut.png',
  information: 'Sandy Shores Chapter<br />Property of Reid Dankleaf',
  deg: false,
};

itemList['lostcut_rr'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Lost MC Cut',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_lost-cut.png',
  information: 'Sandy Shores Chapter<br />Property of Rudi Rinsen',
  deg: false,
};

itemList['lostcut_so'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Lost MC Cut',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_lost-cut.png',
  information: "Sandy Shores Chapter<br />Property of Samuel O'Faolain",
  deg: false,
};

itemList['lostcut_vm'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Lost MC Cut',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_lost-cut.png',
  information: 'Sandy Shores Chapter<br />Property of Victor Mason',
  deg: false,
};

itemList['lostcut_wd'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Lost MC Cut',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_lost-cut.png',
  information: 'Sandy Shores Chapter<br />Property of Wyatt Derp',
  deg: false,
};

itemList['lostcut_gt'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Lost MC Cut',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_lost-cut.png',
  information: 'Sandy Shores Chapter<br />Property of George Temple',
  deg: false,
};

itemList['lostcut_ww'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Lost MC Cut',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_lost-cut.png',
  information: 'Sandy Shores Chapter<br />Property of Wade Willson',
  deg: false,
};

itemList['lostcut_hm'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Lost MC Cut',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_lost-cut.png',
  information: 'Sandy Shores Chapter<br />Property of Holden Maloo',
  deg: false,
};

itemList['lostcut_tr'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Lost MC Cut',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_lost-cut.png',
  information: 'Sandy Shores Chapter<br />Property of Taran Raid',
  deg: false,
};

itemList['lostcut_dw'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Lost MC Cut',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_lost-cut.png',
  information: 'Sandy Shores Chapter<br />In honor of Denzel Washington',
  deg: false,
};

itemList['lostcut_cd'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Lost MC Cut',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_lost-cut.png',
  information: 'Sandy Shores Chapter<br />Property of Cherry Divine',
  deg: false,
};

itemList['lostpapers'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Lost MC Papers',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_lost-papers.png',
  information: 'Does not work with meth',
  deg: false,
};

itemList['lotion'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Hand Lotion',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_hand-lotion.png',
  information: 'My hands are dry I swear',
  deg: false,
};

itemList['lspapers'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'LS Papers',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_ls-papers.png',
  information: 'The city with the safest banks',
  deg: false,
};

itemList['madamelr'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Madame LR',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_madame-lr.png',
  information: 'Brancusi 1918',
  deg: false,
};

itemList['maneki'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Maneki Neko',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_maneki-neko.png',
  information: 'Good fortune beckons',
  deg: false,
};

itemList['markedbills'] = {
  fullyDegrades: false,
  illegal: true,
  decayrate: 0.0,
  displayname: 'Marked Bills',
  price: 300,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_inked-money-bag.png',
  deg: false,
};

itemList['martini'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Martini',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_martini.png',
  information: 'Shaken, not stirred',
  deg: false,
};

itemList['mdiptych'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Marilyn Diptych',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_marilyn-diptych.png',
  information: 'Warhol 1962',
  deg: false,
};

itemList['MedicalBag'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Medical Bag',
  price: 350,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_medbag.png',
  information: 'Its a prop, wow?',
  deg: false,
};

itemList['mfalcon'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Maltese Falcon',
  price: 150,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_maltese-falcon.png',
  information: 'Highly prized movie prop',
  deg: false,
};

itemList['misfit'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Headphones',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_headphones.png',
  information: 'We out here cuh',
  deg: false,
};

itemList['mixtape'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Mixtape',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_mixtape.png',
  information: 'Check it, yo',
  deg: false,
};

itemList['mk2usbdevice'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'MKII USB Device',
  price: 300,
  weight: 5,
  nonStack: false,
  model: '',
  image: 'np_mkii-usb-device.png',
  deg: false,
};

itemList['mobilephone'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Mobile Phone',
  price: 400,
  weight: 1,
  nonStack: true,
  model: '',
  image: 'np_mobile-phone.png',
  deg: false,
};

itemList['burnerphone'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Burner Phone',
  price: 5,
  weight: 1,
  nonStack: true,
  model: '',
  image: 'np_mobile-phone.png',
  deg: false,
};

itemList['monalisa'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Mona Lisa',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_mona-lisa.png',
  information: 'Da Vinci 1517',
  deg: false,
};

itemList['moonshine'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Moonshine Jug',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_moonshine-jug.png',
  information: 'Using the same jugs since 1910',
  deg: false,
};

itemList['moonshinej'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Moonshine Jar',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_jar-of-moonshine.png',
  information: 'Almost paint thinner',
  deg: false,
};

itemList['mtrophy'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Mic Trophy',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_mic-trophy.png',
  information: 'A star is born',
  deg: false,
};

itemList['muffin'] = {
  fullyDegrades: true,
  decayrate: 0.01,
  displayname: 'Muffin',
  craft: [{ itemid: 'foodingredient', amount: 1 }],
  price: 10,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_muffin.png',
  information: 'Is your muffin buttered?',
  deg: false,
};

itemList['mugbeer'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Mug of Beer',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_mug-of-beer.png',
  information: 'Cheers!',
  deg: false,
};

itemList['mvial'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Mysterious Vial',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_mysterious-vial.png',
  information: 'Do not drink',
  deg: false,
};

itemList['nachos'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Nachos',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_nachos.png',
  information: 'Delicioso',
  deg: false,
};

itemList['negg'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Napoleonic Egg',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_napoleonic-egg.png',
  information: 'Faberge Series (2/3)',
  deg: false,
};

itemList['nitrous'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Nitrous Oxide',
  craft: [{ itemid: 'electronics', amount: 10 }],
  price: 300,
  weight: 5,
  nonStack: false,
  model: '',
  image: 'np_nitrous-oxide.png',
  deg: false,
};

itemList['nmenu'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Nanakaze Menu',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_nanakaze-menu.png',
  information: 'Take a look feller',
  deg: false,
};

itemList['no10'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'No. 10',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_no10.png',
  information: 'Rothko 1950',
  deg: false,
};

itemList['no5'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'No. 5',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_no5.png',
  information: 'Pollock 1948',
  deg: false,
};

itemList['oil'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Oil',
  price: 10,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_oil.png',
  deg: false,
};

itemList['okaylockpick'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Not-Shit Ass Lockpick',
  price: 0,
  craft: [{ itemid: 'shitlockpick', amount: 100 }],
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_shitlockpick.png',
  information: 'TBH its still shit, so shit its almost identical... almost.',
  deg: false,
}; //'Heavy Shotgun'
itemList['onigiri'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Onigiri',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_onigiri.png',
  information: 'Delicious rice balls',
  deg: false,
};

itemList['onion'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Onion',
  craft: [{ itemid: 'foodingredient', amount: 1 }],
  price: 10,
  weight: 12,
  nonStack: false,
  model: '',
  image: 'np_onion.png',
  information: 'Are your eyes watering?',
  deg: false,
};

itemList['oxygentank'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Oxygen Tank',
  craft: [
    { itemid: 'aluminium', amount: 15 },
    { itemid: 'plastic', amount: 15 },
    { itemid: 'rubber', amount: 10 },
  ],
  price: 300,
  weight: 100,
  nonStack: false,
  model: '',
  image: 'np_oxygen-tank.png',
  deg: false,
};

itemList['pallet'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Pallet of Boxes',
  price: 150,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_pallet-of-boxes.png',
  information: 'Transportable goods',
  deg: false,
};

itemList['passtest'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Passed Test',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_passed-test.png',
  information: 'Excellent work',
  deg: false,
};

itemList['paynepic'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Portrait of Payne',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_payne-portrait.png',
  information: 'Cue tongue pop',
  deg: false,
};

itemList['pearlneck'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Pearl Necklace',
  price: 150,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_dragon',
  information: 'Good way to finish a date',
  deg: false,
};

itemList['pegg'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Pink Faberge Egg',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_pink-faberge-egg.png',
  information: 'Faberge Series (3/3)',
  deg: false,
};

itemList['petchicken'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Pet Chicken',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_pet-chicken.png',
  information: 'Careful around Cluckin Bell',
  deg: false,
};

itemList['petfish'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Pet Fish',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_pet-fish.png',
  information: 'Gold fish memory',
  deg: false,
};

itemList['petrock'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Pet Rock',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_pet-rock.png',
  information: 'You dont even have to feed it',
  deg: false,
};

itemList['petturtle'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Pet Turtle',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_pet-turtle.png',
  information: 'Cowabunga',
  deg: false,
};

itemList['pix1'] = {
  fullyDegrades: false,
  illegal: true,
  decayrate: 0.0,
  displayname: 'Pixerium Stick Small',
  price: 300,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_decrypter-fv2.png',
  deg: false,
};

itemList['pix2'] = {
  fullyDegrades: false,
  illegal: true,
  decayrate: 0.0,
  displayname: 'Pixerium Stick Large',
  price: 1000,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_decrypter-enzo.png',
  deg: false,
};

itemList['platinumrec'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Platinum Record',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_platinum-record.png',
  information: '1 Million units sold!',
  deg: false,
};

itemList['popsicle'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Popsicle',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_popsicle.png',
  information: 'Is that sea salt?',
  deg: false,
};

itemList['portal'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Portal',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_portal.png',
  information: 'Paden 2012',
  deg: false,
};

itemList['ppapers'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Prison Papers',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_prison-papers.png',
  information: 'Dont ask where its been...',
  deg: false,
};

itemList['pupusas'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Pupusas',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_pupusas.png',
  information: 'Mas curtido vos',
  deg: false,
};

itemList['purpleb'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Purple Bandana',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_purple-bandana.png',
  information: 'Straight outta da cul-de-sac',
  deg: false,
};

itemList['qhearts'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Queen of Hearts',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_queen-of-hearts.png',
  information: 'Off with their heads!',
  deg: false,
};

itemList['qualityscales'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'High Quality Scales',
  craft: [
    { itemid: 'aluminium', amount: 25 },
    { itemid: 'plastic', amount: 10 },
    { itemid: 'rubber', amount: 1 },
  ],
  price: 1000,
  weight: 2,
  nonStack: false,
  model: '',
  image: 'np_high-quality-scales.png',
  information: 'Weighs Baggies with no loss',
  deg: false,
};

itemList["civradio"] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: "Standard Radio",
  craft: [
    { itemid: "electronics", amount: 50 },
    { itemid: "plastic", amount: 5 },
    { itemid: "rubber", amount: 1 },
  ],
  price: 3000,
  weight: 3,
  nonStack: true,
  model: "",
  image: "np_radio.png",
  information: "Non-encrypted - Used to chat with other people on private radio channels.",
  deg: false,
};

itemList['radio'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'PD Radio',
  craft: [
    { itemid: 'electronics', amount: 30 },
    { itemid: 'plastic', amount: 5 },
    { itemid: 'rubber', amount: 1 },
  ],
  price: 50,
  weight: 3,
  nonStack: true,
  model: '',
  image: 'np_radio.png',
  information: 'Encrypted - Used to chat with other people on PD radio channels.',
  deg: false,
};

itemList['rbumper'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Rear Bumper',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_rear-bumper.png',
  information: 'You owe me a ten second car',
  deg: false,
};

itemList['recoupon10'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: '10% Off Deal',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_recoupon10.png',
  information: 'May not be used for drugs',
  deg: false,
};

itemList['recoupon15'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: '15% Off Deal',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_recoupon15.png',
  information: 'We are not liable for any raids or robberies',
  deg: false,
};

itemList['recoupon20'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: '20% Off Deal',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_recoupon20.png',
  information: 'May or may not be exchanged for a hug from Mr. Payne',
  deg: false,
};

itemList['recoupon5'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: '5% Off Deal',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_recoupon5.png',
  information: 'Southside shootings are complimentary',
  deg: false,
};

itemList['recyclablematerial'] = {
  fullyDegrades: true,
  decayrate: 0.03,
  displayname: 'Recyclable Material',
  price: 20,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_recyclable-material.png',
  deg: false,
};

itemList['redb'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Red Bandana',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_red-bandana.png',
  information: 'Lean with me',
  deg: false,
};

itemList['redbelt'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Red Belt',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_red-belt.png',
  information: 'Expert Rank 3/4',
  deg: false,
};

itemList['redchip'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Red Chip',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_red-chip.png',
  information: 'Calling your bluff',
  deg: false,
};

itemList['redpack'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Redwood Pack',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_redwood-pack.png',
  information: 'I can stop anytime',
  deg: false,
};

itemList['refinedwood'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Refined Wood',
  price: 15,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_wood.png',
  deg: false,
};

itemList['repairtoolkit'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Repair Toolkit',
  craft: [
    { itemid: 'aluminium', amount: 5 },
    { itemid: 'plastic', amount: 1 },
    { itemid: 'rubber', amount: 1 },
  ],
  price: 50,
  weight: 15,
  nonStack: false,
  model: '',
  image: 'np_repair-toolkit.png',
  information: 'Used by Tow Truck drivers and repair people.',
  deg: false,
};

itemList['riflebody'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Rifle Body',
  price: 70,
  weight: 10,
  nonStack: false,
  model: '',
  image: 'np_rifle-body.png',
  deg: false,
};

itemList['riflebodybox'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Box (10+ Rifle Bodys)',
  price: 200,
  weight: 85,
  nonStack: false,
  model: '',
  image: 'np_rifle-box.png',
  deg: false,
};

itemList['rims'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Racing Rims',
  price: 150,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_racing-rims.png',
  information: 'Best rims for the job',
  deg: false,
};

itemList['rnovel'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Romance Novel',
  price: 150,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_romance-novel.png',
  information: 'A hurricane of passion',
  deg: false,
};

itemList['rolexwatch'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  isStolen: true,
  displayname: 'Rolex Watch (p)',
  price: 50,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_rolex-watch.png',
  deg: false,
};

itemList['rollingpaper'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Rolling Paper',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_rolling-paper.png',
  information: 'Required to roll joints!',
  deg: false,
};

itemList['rooster'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Rooster Pin',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_rooster-pin.png',
  information: 'With egg in hand...',
  deg: false,
};

itemList['rose'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Rose',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_rose.png',
  information: 'Cue dramatic monologue',
  deg: false,
};

itemList['rpelt'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Rabbit Pelt',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_rabbit-pelt.png',
  information: 'Magdumping ruins the pelt',
  deg: false,
};

itemList['rtrophy'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Racing Trophy',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_racing-trophy.png',
  information: 'All I do is win',
  deg: false,
};

itemList['ruby'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Ruby',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_ruby.png',
  information: 'Like a sunrise',
  deg: false,
};

itemList['russian'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Matryoshka Doll',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_matryoshka-doll.png',
  information: 'If he dies, he dies, cyka.',
  deg: false,
};

itemList['sake'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Sake',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_sake.png',
  information: 'Kampai!',
  deg: false,
};

itemList['salvator'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Salvator Mundi',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_salvator-mundi.png',
  information: 'Da Vinci 1500',
  deg: false,
};

itemList['sbsxray'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'SBS X-Ray',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_sbs-xray.png',
  information: 'Warlord size',
  deg: false,
};

itemList['scanner'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Radio Scanner',
  craft: [
    { itemid: 'aluminium', amount: 5 },
    { itemid: 'plastic', amount: 1 },
    { itemid: 'rubber', amount: 1 },
  ],
  price: 500,
  weight: 15,
  nonStack: false,
  model: '',
  image: 'np_radio-scanner.png',
  information: 'Used to receive random radio chatter.',
  deg: false,
};

itemList['scissors'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Scissors',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_scissors.png',
  information: 'Fuck me up fam',
  deg: false,
};

itemList['scoin'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Gold Coin',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_secret-coin.png',
  information: 'Ens causa sui',
  deg: false,
};

itemList['scream'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'The Scream',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_the-scream.png',
  information: 'Munch 1893',
  deg: false,
};

itemList['screen'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Screen',
  price: 120,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_screen.png',
  deg: false,
};

itemList['scripted'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Script',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_script.png',
  information: 'Scripted? Reee',
  deg: false,
};

itemList['sealedbucket'] = {
  fullyDegrades: false,
  price: 5,
  decayrate: 0.0,
  displayname: 'Sealed Bucket',
  weight: 1,
  nonStack: true,
  model: '',
  image: 'np_sealed-bucket.png',
  deg: false,
};

itemList['sealedevidencebag'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Sealed Evidence Bag',
  price: 0,
  weight: 0,
  nonStack: true,
  model: '',
  image: 'np_sealed-evidence-bag.png',
  deg: false,
};

itemList['seat'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Seat',
  price: 150,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_seat.png',
  information: 'Only for the most hardcore of racers',
  deg: false,
};

itemList['secretfile'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Secret File',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_secret-file.png',
  information: 'High level clearance required',
  deg: false,
};

itemList['securityblack'] = {
  fullyDegrades: false,
  illegal: true,
  decayrate: 0.0,
  displayname: 'Security Card',
  price: 1500,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'cblk.png',
  information: 'Some sort of security card..',
  deg: false,
};

itemList['securityblue'] = {
  fullyDegrades: false,
  illegal: true,
  decayrate: 0.0,
  displayname: 'Security Card',
  price: 1500,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'cb.png',
  information: 'Some sort of security card..',
  deg: false,
};

itemList['SecurityCase'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Security Case',
  price: 350,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_securitycase.png',
  information: 'Its a prop, wow?',
  deg: false,
};

itemList['securitygold'] = {
  fullyDegrades: false,
  illegal: true,
  decayrate: 0.0,
  displayname: 'Security Card',
  price: 1500,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'cgld.png',
  information: 'Some sort of security card..',
  deg: false,
};

itemList['securitygreen'] = {
  fullyDegrades: false,
  illegal: true,
  decayrate: 0.0,
  displayname: 'Security Card',
  price: 1500,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'cg.png',
  information: 'Some sort of security card..',
  deg: false,
};

itemList['securityred'] = {
  fullyDegrades: false,
  illegal: true,
  decayrate: 0.0,
  displayname: 'Security Card',
  price: 1500,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'cr.png',
  information: 'Some sort of security card..',
  deg: false,
};

itemList['sfinger'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Severed Finger',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_severed-finger.png',
  information: "Now we're even",
  deg: false,
};

itemList['sgrace'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Saying Grace',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_saying-grace.png',
  information: 'Rockwell 1951',
  deg: false,
};

itemList['shampoo'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Shampoo',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_shampoo.png',
  information: 'Full of body and volume',
  deg: false,
};

itemList['shearsoj'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Shears of Justice',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_shears-of-justice.png',
  information: 'Justice prevails',
  deg: false,
};

itemList['shipbox'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Shipping Box',
  price: 150,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_shipping-box.png',
  information: 'Free 2day shipping',
  deg: false,
};

itemList['shipcrate'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Shipping Crate',
  price: 150,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_shipping-crate.png',
  information: 'This side up',
  deg: false,
};

itemList['shitlockpick'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Ass Lockpick',
  price: 0,
  craft: [{ itemid: 'jailfood', amount: 1 }],
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_shitlockpick.png',
  information:
    '-5 Jail <br> -3 Strength <br> +3 Intelligence <br> Why the fuck is this so heavy? CoPixel das why. <br> If it has roleplay stats, it must be roleplay.',
  deg: false,
}; //'Heavy Shotgun'
itemList['silvercoin'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Silver Coin',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_silver-coin.png',
  information: 'Dont lose it',
  deg: false,
};

itemList['slushy'] = {
  fullyDegrades: false,
  illegal: true,
  decayrate: 0.0,
  displayname: 'The best slushy ever.',
  price: 0,
  weight: 15,
  nonStack: false,
  model: '',
  image: 'np_slushy.png',
  information:
    '-5 Jail <br> +5 Charisma <br> The only thing in Jail that tastes good. <br> If it has roleplay stats, it must be roleplay. ',
  deg: false,
};

itemList['smallscales'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Small Scales',
  craft: [
    { itemid: 'aluminium', amount: 25 },
    { itemid: 'plastic', amount: 1 },
    { itemid: 'rubber', amount: 1 },
  ],
  price: 150,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_small-scale.png',
  information: 'Weighs Baggies with minimal loss',
  deg: false,
};

itemList['smirror'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Side Mirror',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_side-mirror.png',
  information: "On green, I'm going for it",
  deg: false,
};

itemList['snakeskin'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Snakeskin',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_snakeskin.png',
  information: 'Sssss',
  deg: false,
};

itemList['snowpic'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Photo of Snow',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_snow-photo.png',
  information: 'My beloved Jacqueline Snow',
  deg: false,
};

itemList['snowvhs'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'The Ultimate Boomer',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_snow-vhs.png',
  information:
    'Filmed On the Samsung flip phone from 2003 this high quality boomer production value will have you questioning.... Is that a dick?',
  deg: false,
};

itemList['sound'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Sound System',
  price: 150,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_sound-system.png',
  information: 'Makes your ears bleed',
  deg: false,
};

itemList['sozepic'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Photo of Soze',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_soze-photo.png',
  information: "The State PO-lice's finest",
  deg: false,
};

itemList['spoiler'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Spoiler',
  price: 150,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_spoiler.png',
  information: 'Quarter mile at a time',
  deg: false,
};

itemList['sprunk'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Sprunk',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_sprunk.png',
  information: 'The Essence of Life',
  deg: false,
};

itemList['sskirts'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Side Skirts',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_side-skirts.png',
  information: 'Ride or die, remember?',
  deg: false,
};

itemList['starrynight'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Starry Night',
  price: 150,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_starry-night.png',
  information: 'Neither ear nor there',
  deg: false,
};

itemList['stolen10ctchain'] = {
  fullyDegrades: false,
  isStolen: true,
  decayrate: 0.0,
  displayname: '10ct Gold Chain (p)',
  price: 515,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_10ct-gold-chain.png',
  deg: false,
};

itemList['stolen2ctchain'] = {
  fullyDegrades: false,
  isStolen: true,
  decayrate: 0.0,
  displayname: '2ct Gold Chain (p)',
  price: 5,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_2ct-gold-chain.png',
  deg: false,
};

itemList['stolen5ctchain'] = {
  fullyDegrades: false,
  isStolen: true,
  decayrate: 0.0,
  displayname: '5ct Gold Chain (p)',
  price: 25,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_5ct-gold-chain.png',
  deg: false,
};

itemList['stolen8ctchain'] = {
  fullyDegrades: false,
  isStolen: true,
  decayrate: 0.0,
  displayname: '8ct Gold Chain (p)',
  price: 90,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_8ct-gold-chain.png',
  deg: false,
};

itemList['stolencasiowatch'] = {
  fullyDegrades: false,
  isStolen: true,
  decayrate: 0.0,
  displayname: 'Casio Watch (p)',
  price: 15,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_casio-watch.png',
  deg: false,
};

itemList['stolengameboy'] = {
  fullyDegrades: false,
  isStolen: true,
  decayrate: 0.0,
  displayname: 'Gameboy (p)',
  price: 30,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_gameboy.png',
  deg: false,
};

itemList['stoleniphone'] = {
  fullyDegrades: false,
  isStolen: true,
  decayrate: 0.0,
  displayname: 'Apple Iphone (p)',
  price: 20,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_apple-iphone.png',
  deg: false,
};

itemList['stolennokia'] = {
  fullyDegrades: false,
  isStolen: true,
  decayrate: 0.0,
  displayname: 'Nokia Phone (p)',
  price: 15,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_nokia-phone.png',
  deg: false,
};

itemList['stolenoakleys'] = {
  fullyDegrades: false,
  isStolen: true,
  decayrate: 0.0,
  displayname: 'Oakley Sunglasses (p)',
  price: 60,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_oakley-sunglesses.png',
  deg: false,
};

itemList['stolenpixel3'] = {
  fullyDegrades: false,
  isStolen: true,
  decayrate: 0.0,
  displayname: 'Pixel 3 Phone (p)',
  price: 15,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_pixel-2-phone.png',
  deg: false,
};

itemList['stolenpsp'] = {
  fullyDegrades: false,
  isStolen: true,
  decayrate: 0.0,
  displayname: 'PSP (p)',
  price: 5,
  weight: 15,
  nonStack: false,
  model: '',
  image: 'np_psp.png',
  deg: false,
};

itemList['stolenraybans'] = {
  fullyDegrades: false,
  isStolen: true,
  decayrate: 0.0,
  displayname: 'Ray Ban Sunglasses (p)',
  price: 45,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_raybans.png',
  deg: false,
};

itemList['stolens8'] = {
  fullyDegrades: false,
  isStolen: true,
  decayrate: 0.0,
  displayname: 'Samsung S8 (p)',
  price: 60,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_samsung-s8.png',
  deg: false,
};

itemList['stooth'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Shark Tooth',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_shark-tooth.png',
  information: 'Gonna need a bigger boat',
  deg: false,
};

itemList['Suitcase'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Suitcase',
  price: 350,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_suitcase.png',
  information: 'Its a prop, wow?',
  deg: false,
};

itemList['sunflower'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Sunflower',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_sunflower.png',
  information: 'Super effective vs zombies',
  deg: false,
};

itemList['swheel'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Steering Wheel',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_steering-wheel.png',
  information: 'Winning is winning...',
  deg: false,
};

itemList['tagbelt'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Tag Team Belt',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_tag-team-belt.png',
  information: 'Off the turbuckle',
  deg: false,
};

itemList['tbag'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Transport Bag',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_transport-bag.png',
  information: 'Keeping your organs fresh',
  deg: false,
};

itemList['tbear'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Teddy Bear',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_teddy-bear.png',
  information: 'Hug me',
  deg: false,
};

itemList['tealb'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Teal Bandana',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_teal-bandana.png',
  information: 'Simon ese',
  deg: false,
};

itemList['telvis'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Triple Elvis',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_triple-elvis.png',
  information: 'Warhol 1963',
  deg: false,
};

itemList['textbooka'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Textbook A',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_textbook-a.png',
  information: 'Buy new of course',
  deg: false,
};

itemList['thermite'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Thermite',
  craft: [
    { itemid: 'aluminium', amount: 10 },
    { itemid: 'plastic', amount: 10 },
    { itemid: 'rubber', amount: 10 },
  ],
  price: 0,
  weight: 5,
  nonStack: false,
  model: '',
  image: 'np_thermite.png',
  deg: false,
};

itemList['ticket'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Ticket',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_ticket.png',
  information: 'Admit one',
  deg: false,
};

itemList['tissuebox'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Box of Tissues',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_tissue-box.png',
  information: 'Not what it seems I swear',
  deg: false,
};

itemList['Toolbox'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Toolbox',
  price: 350,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_toolbox.png',
  information: 'Its a prop, wow?',
  deg: false,
};

itemList['toothneck'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Tooth Necklace',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_tooth-necklace.png',
  information: 'Shes a beauty',
  deg: false,
};

itemList['trophy'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Trophy',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_trophy.png',
  information: 'Winner!',
  deg: false,
};

itemList['boomerphone'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Boomer Phone',
  price: 5,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_boomerphone.png',
  information: 'Made for boomers, extra large buttons and screen.',
  deg: false,
};

itemList['umbrella'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Umbrella',
  price: 500,
  weight: 3,
  nonStack: false,
  model: '',
  image: 'np_umbrella.png',
  deg: false,
};

itemList['umetal'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Unknown Metal',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_unknown-metal.png',
  information: 'Dont lick your fingers',
  deg: false,
};

itemList['usbdevice'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Unknown USB Device',
  price: 300,
  weight: 5,
  nonStack: false,
  model: '',
  image: 'np_unknown-usb-device.png',
  deg: false,
};

itemList['valuablegoods'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Valuable Goods',
  craft: [{ itemid: 'goldbar', amount: 7 }],
  price: 4000,
  weight: 4,
  nonStack: false,
  model: '',
  image: 'np_valuable-goods.png',
  deg: false,
};

itemList['viagra'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Viagra',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_viagra.png',
  information: 'Magic little blue pill',
  deg: false,
};

itemList['voodoo'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Voodoo Doll',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_voodoo-doll.png',
  information: 'Beware the spirits',
  deg: false,
};

itemList['vpapers'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Vagos Papers',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_vagos-papers.png',
  information: 'No prrrraaaaaablem',
  deg: false,
};

itemList['vpnxj'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'VPN XJ',
  price: 300,
  weight: 5,
  nonStack: false,
  model: '',
  image: 'np_vpn-xj.png',
  deg: false,
};

itemList['vulture'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Vulture Statue',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_vulture-statue.png',
  information: 'For the culture',
  deg: false,
};

itemList['wallet'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Wallet',
  price: 150,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_wallet.png',
  information: 'Includes picture of mom',
  deg: false,
};

itemList['watch'] = {
  fullyDegrades: false,
  decayrate: 0.5,
  displayname: "PD Watch & Compass",
  price: 50,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_watch.png',
  information: "It's a PD issued Watch",
  deg: false,
};

itemList['wedding'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Wedding Ring',
  price: 150,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_wedding-ring.png',
  information: 'Did you know fifty percent...',
  deg: false,
};

itemList['weeping'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Weeping Woman',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_weeping-woman.png',
  information: 'Picasso 1937',
  deg: false,
};

itemList['wglass'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Glass of Whiskey',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_glass-of-whiskey.png',
  information: 'On the rocks',
  deg: false,
};

itemList['whitebelt'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'White Belt',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_white-belt.png',
  information: 'Novice Rank 1/4',
  deg: false,
};

itemList['whitechip'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'White Chip',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_white-chip.png',
  information: 'Hit me',
  deg: false,
};

itemList['whitepearl'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'White Pearl',
  price: 0,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_white-pearl.png',
  deg: false,
};

itemList['whitewine'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'White Wine',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_white-wine-bottle.png',
  information: 'Made from real crime free grapes',
  deg: false,
};

itemList['wineglass'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Glass of Wine',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_glass-wine.png',
  information: 'Quite exquisite',
  deg: false,
};

itemList['wlilies'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Water Lilies',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_water-lilies.png',
  information: 'Monet 1907',
  deg: false,
};

itemList['xscondom'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'XSmall Condom',
  price: 150,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_xs-condom.png',
  information: 'Its the motion in the ocean',
  deg: false,
};

itemList['ydiamond'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Yellow Diamond',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_yellow-diamond.png',
  information: 'Forever',
  deg: false,
};

itemList['yellowb'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Yellow Bandana',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_yellow-bandana.png',
  information: 'Im tellin you',
  deg: false,
};

itemList['zebra'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Zebra',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_zebra.png',
  information: 'Vasarely 1937',
  deg: false,
};

itemList['fakesnowvhs'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Bootleg Boomer',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_fake-snow-vhs.png',
  information: 'At this point you can not even tell if it is a dick or the roundhay garden scene from 1888.',
  deg: false,
};

itemList['wigglue'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Wig glue',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_wig-glue.png',
  information: 'Recommended by Snow.',
  deg: false,
};

itemList['marstonrevolver'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: "John Marston's Cattleman Revolver",
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_marston-revolver.png',
  information: 'Owned by John Marston, this Cattleman Revolver features a black steel frame inlaid with gold and a custom bone grip.',
  deg: false,
};

itemList['cloak'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Cloak',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_cloak.png',
  information: 'Only to be used for some cloak and dagger shit by NoPixel management.',
  deg: false,
};

itemList['stolentv'] = {
  fullyDegrades: false,
  isStolen: true,
  decayrate: 0.0,
  displayname: 'Flat Panel TV (p)',
  price: 185,
  weight: 200,
  nonStack: false,
  model: '',
  image: 'np_stolentv.png',
  deg: false,
};

itemList['stolenmusic'] = {
  fullyDegrades: false,
  isStolen: true,
  decayrate: 0.0,
  displayname: 'Music Equipment (p)',
  price: 65,
  weight: 200,
  nonStack: false,
  model: '',
  image: 'np_stolenmusic.png',
  deg: false,
};

itemList['stolencoffee'] = {
  fullyDegrades: false,
  isStolen: true,
  decayrate: 0.0,
  displayname: 'Coffe Machine (p)',
  price: 50,
  weight: 200,
  nonStack: false,
  model: '',
  image: 'np_stolencoffee.png',
  deg: false,
};

itemList['stolenmicrowave'] = {
  fullyDegrades: false,
  isStolen: true,
  decayrate: 0.0,
  displayname: 'Microwave (p)',
  price: 115,
  weight: 200,
  nonStack: false,
  model: '',
  image: 'np_stolenmicrowave.png',
  deg: false,
};

itemList['stolencomputer'] = {
  fullyDegrades: false,
  isStolen: true,
  decayrate: 0.0,
  displayname: 'Computer Equipment (p)',
  price: 140,
  weight: 200,
  nonStack: false,
  model: '',
  image: 'np_stolencomputer.png',
  deg: false,
};

itemList['stolenart'] = {
  fullyDegrades: false,
  isStolen: true,
  decayrate: 0.0,
  displayname: 'Art (p)',
  price: 120,
  weight: 200,
  nonStack: false,
  model: '',
  image: 'np_stolenart.png',
  deg: false,
};

itemList['stolenBrokenGoods'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Broken Goods (p)',
  price: 0,
  weight: 20,
  nonStack: false,
  model: '',
  image: 'np_stolenBrokenGoods.png',
  deg: false,
};

// Event items
itemList['Bankbox'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Bank Box',
  price: 1,
  weight: 10,
  nonStack: false,
  model: '',
  image: 'np_bankbox.png',
  information: 'A locked bank box.',
  deg: false,
};

itemList['Bankboxkey'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Briefcase Key',
  price: 1,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_bankboxkey.png',
  information: 'A key that seems to fit somewhere.',
  deg: false,
};

itemList['Heirloom'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Family Heirloom',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_heirloom.png',
  information: 'Ring with a weird emblem carved in to it.',
  deg: false,
};

itemList['Hobonickel1'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Hobonickel',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_hobonickel1.png',
  information: 'A fancy looking coin. Maybe you should keep this on your person.',
  deg: false,
};

itemList['Hobonickel2'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Hobonickel',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_hobonickel2.png',
  information: 'A fancy looking coin. Maybe you should keep this on your person.',
  deg: false,
};

itemList['Hobonickel3'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Hobonickel',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_hobonickel3.png',
  information: 'A fancy looking coin. Maybe you should keep this on your person.',
  deg: false,
};

itemList['Routemap'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Route Map',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_routemap.png',
  information: 'A map that is showing you the way.',
  deg: false,
};

itemList['Securebriefcase'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Secure Briefcase',
  price: 1,
  weight: 10,
  nonStack: false,
  model: '',
  image: 'np_securebriefcase.png',
  information: 'A Briefcase that only a handful of people can open.',
  deg: false,
};

itemList['Securitykey'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Security Key',
  price: 1,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_securitykey.png',
  information: 'And interesting looking key. Does not seem to fit in a lock.',
  deg: false,
};

itemList['Largesupplycrate'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Large Supply crate',
  price: 1,
  weight: 150,
  nonStack: true,
  model: '',
  image: 'np_supplycrate_large.png',
  information: 'A very big and heavy crate.',
  deg: false,
};

itemList['Mediumsupplycrate'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Medium Supply crate',
  price: 1,
  weight: 100,
  nonStack: true,
  model: '',
  image: 'np_supplycrate_medium.png',
  information: 'A semi-heavy crate.',
  deg: false,
};

itemList['Smallsupplycrate'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Small Supply crate',
  price: 1,
  weight: 50,
  nonStack: true,
  model: '',
  image: 'np_supplycrate_small.png',
  information: "A smaller crate that doesn't have much weight to it.",
  deg: false,
};

itemList['foodsupplycrate'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Food Supply crate',
  price: 1,
  weight: 50,
  nonStack: true,
  model: '',
  image: 'np_supplycrate_medium.png',
  information: 'Special delivery for Siz Fulker!',
  deg: false,
};

//Human parts
itemList['bodybag'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Body bag',
  price: 1,
  weight: 100,
  nonStack: true,
  model: '',
  image: 'np_bodybag.png',
  information: 'A heavy body bag. I wonder what is inside?',
  deg: false,
};

itemList['bodygarbagebag'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Garbage bag',
  price: 1,
  weight: 50,
  nonStack: true,
  model: '',
  image: 'np_bodygarbagebag.png',
  information: 'A heavy bloodied trash bag. I wonder what is inside?',
  deg: false,
};

itemList['organcooler'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Organ Cooler',
  price: 1,
  weight: 5,
  nonStack: true,
  model: '',
  image: 'np_organcooler.png',
  information: 'Organ cooler? I wonder what it contains!',
  deg: false,
};

itemList['organcooleropen'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Open Organ Cooler',
  price: 1,
  weight: 3,
  nonStack: true,
  model: '',
  image: 'np_organcooler.png',
  information: 'An empty organ cooler. Where is the content?',
  deg: false,
};

itemList['humanbody'] = {
  fullyDegrades: false,
  decayrate: 2.0,
  displayname: 'Human Corpse',
  price: 1,
  weight: 100,
  nonStack: true,
  model: '',
  image: 'np_humanbody.png',
  information: 'A human corpse. How long has this been here?',
  deg: false,
};

itemList['humanhead'] = {
  fullyDegrades: false,
  decayrate: 2.0,
  displayname: 'Severed Head',
  price: 1,
  weight: 7,
  nonStack: true,
  model: '',
  image: 'np_humanhead.png',
  information: 'A bloody severed head.',
  deg: false,
};

itemList['humantorso'] = {
  fullyDegrades: false,
  decayrate: 2.0,
  displayname: 'Severed Torso',
  price: 1,
  weight: 15,
  nonStack: true,
  model: '',
  image: 'np_humantorso.png',
  information: 'A bloody severed torso.',
  deg: false,
};

itemList['humanarm'] = {
  fullyDegrades: false,
  decayrate: 2.0,
  displayname: 'Severed Arm',
  price: 1,
  weight: 7,
  nonStack: true,
  model: '',
  image: 'np_humanarm.png',
  information: 'A bloody severed arm.',
  deg: false,
};

itemList['humanhand'] = {
  fullyDegrades: false,
  decayrate: 2.0,
  displayname: 'Severed Hand',
  price: 1,
  weight: 5,
  nonStack: true,
  model: '',
  image: 'np_humanhand.png',
  information: 'A bloody severed hand.',
  deg: false,
};

itemList['humanleg'] = {
  fullyDegrades: false,
  decayrate: 2.0,
  displayname: 'Severed Leg',
  price: 1,
  weight: 7,
  nonStack: true,
  model: '',
  image: 'np_humanleg.png',
  information: 'A bloody severed leg.',
  deg: false,
};

itemList['humanfinger'] = {
  fullyDegrades: false,
  decayrate: 2.0,
  displayname: 'Severed finger',
  price: 1,
  weight: 1,
  nonStack: true,
  model: '',
  image: 'np_humanfinger.png',
  information: 'A bloody severed finger. Where is the rest?',
  deg: false,
};

itemList['humanear'] = {
  fullyDegrades: false,
  decayrate: 2.0,
  displayname: 'Severed Ear',
  price: 1,
  weight: 1,
  nonStack: true,
  model: '',
  image: 'np_humanear.png',
  information: 'A bloody severed ear.',
  deg: false,
};

itemList['humanskull'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Human Skull',
  price: 1,
  weight: 5,
  nonStack: true,
  model: '',
  image: 'np_humanskull.png',
  information: 'A human skull.',
  deg: false,
};

itemList['humanbones'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Human Bones',
  price: 1,
  weight: 15,
  nonStack: true,
  model: '',
  image: 'np_humanbones.png',
  information: 'A collection of human bones.',
  deg: false,
};

itemList['humanbone'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Human Bone',
  price: 1,
  weight: 3,
  nonStack: true,
  model: '',
  image: 'np_humanbone.png',
  information: 'A bone that looks to be from a human.',
  deg: false,
};

itemList['humanheart'] = {
  fullyDegrades: false,
  decayrate: 2.0,
  displayname: 'Human Heart',
  price: 1,
  weight: 2,
  nonStack: true,
  model: '',
  image: 'np_humanheart.png',
  information: 'A bloody heart.',
  deg: false,
};

itemList['humaneye'] = {
  fullyDegrades: false,
  decayrate: 2.0,
  displayname: 'Human Eyeball',
  price: 1,
  weight: 1,
  nonStack: true,
  model: '',
  image: 'np_humaneye.png',
  information: 'A severed torn out eyeball.',
  deg: false,
};

itemList['humanbrain'] = {
  fullyDegrades: false,
  decayrate: 2.0,
  displayname: 'Human Brain',
  price: 1,
  weight: 2,
  nonStack: true,
  model: '',
  image: 'np_humanbrain.png',
  information: 'A bloody brain.',
  deg: false,
};

itemList['humanintestines'] = {
  fullyDegrades: false,
  decayrate: 2.0,
  displayname: 'Human Intestines',
  price: 1,
  weight: 5,
  nonStack: true,
  model: '',
  image: 'np_humanintestines.png',
  information: 'A bunch of intestines.',
  deg: false,
};

itemList['humankidney'] = {
  fullyDegrades: false,
  decayrate: 2.0,
  displayname: 'Human Kidney',
  price: 1,
  weight: 2,
  nonStack: true,
  model: '',
  image: 'np_humankidney.png',
  information: 'A bloody kidney.',
  deg: false,
};

itemList['humanliver'] = {
  fullyDegrades: false,
  decayrate: 2.0,
  displayname: 'Human Liver',
  price: 1,
  weight: 3,
  nonStack: true,
  model: '',
  image: 'np_humanliver.png',
  information: 'A bloody liver.',
  deg: false,
};

itemList['humanlungs'] = {
  fullyDegrades: false,
  decayrate: 2.0,
  displayname: 'Human Lungs',
  price: 1,
  weight: 4,
  nonStack: true,
  model: '',
  image: 'np_humanlungs.png',
  information: 'A bloody pair of lungs.',
  deg: false,
};

itemList['humannail'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Human Nail',
  price: 1,
  weight: 0,
  nonStack: true,
  model: '',
  image: 'np_humannail.png',
  information: 'A single torn out nail.',
  deg: false,
};

itemList['humanpancreas'] = {
  fullyDegrades: false,
  decayrate: 2.0,
  displayname: 'Human Pancreas',
  price: 1,
  weight: 2,
  nonStack: true,
  model: '',
  image: 'np_humanpancreas.png',
  information: 'A bloody pancreas.',
  deg: false,
};

itemList['humantongue'] = {
  fullyDegrades: false,
  decayrate: 2.0,
  displayname: 'Human Tongue',
  price: 1,
  weight: 1,
  nonStack: true,
  model: '',
  image: 'np_humantongue.png',
  information: 'A tongue without its human.',
  deg: false,
};

itemList['humantooth'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Human Tooth',
  price: 1,
  weight: 0,
  nonStack: true,
  model: '',
  image: 'np_humantooth.png',
  information: 'A single tooth with root and all.',
  deg: false,
};

// Coop request - gallery stoof
itemList['gallery1star'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: '1 Star Contract',
  price: 1,
  weight: 0,
  nonStack: true,
  model: '',
  image: 'np_gallery_1star.png',
  information: '1 Star Contract',
  deg: false,
};

itemList['gallery2star'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: '2 Star Contract',
  price: 1,
  weight: 0,
  nonStack: true,
  model: '',
  image: 'np_gallery_2star.png',
  information: '2 Star Contract',
  deg: false,
};

itemList['gallery3star'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: '3 Star Contract',
  price: 1,
  weight: 0,
  nonStack: true,
  model: '',
  image: 'np_gallery_3star.png',
  information: '3 Star Contract',
  deg: false,
};

itemList['gallery4star'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: '4 Star Contract',
  price: 1,
  weight: 0,
  nonStack: true,
  model: '',
  image: 'np_gallery_4star.png',
  information: '4 Star Contract',
  deg: false,
};

itemList['gallery5star'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: '5 Star Contract',
  price: 1,
  weight: 0,
  nonStack: true,
  model: '',
  image: 'np_gallery_5star.png',
  information: '5 Star Contract',
  deg: false,
};

itemList['gallerypremium'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Membership Card',
  price: 1,
  weight: 0,
  nonStack: true,
  model: '',
  image: 'np_gallery_premium.png',
  information: 'Premiere Membership Card',
  deg: false,
};

itemList['galleryregular'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Membership Card',
  price: 1,
  weight: 0,
  nonStack: true,
  model: '',
  image: 'np_gallery_regular.png',
  information: 'Regular Membership Card',
  deg: false,
};

itemList['galleryvip'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Membership Card',
  price: 1,
  weight: 0,
  nonStack: true,
  model: '',
  image: 'np_gallery_vip.png',
  information: 'VIP Membership Card',
  deg: false,
};

itemList['curvyelephant'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Pet Elephant',
  price: 1,
  weight: 0,
  nonStack: true,
  model: '',
  image: 'np_pet-elephant.png',
  information: 'Pretty curvy',
  deg: false,
};

// FISHING
itemList['fishingrod'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Fishing Rod',
  price: 100,
  weight: 10,
  nonStack: true,
  model: '',
  image: 'np_fishing-rod.png',
  information: 'Lets fish',
  deg: false,
};

itemList['fishingbass'] = {
  fullyDegrades: true,
  decayrate: 0.02,
  displayname: 'Bass',
  price: 1,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_fishing-bass.png',
  information: 'Striped Bass. Bass like the fish, not the officer',
  deg: false,
};

itemList['fishingbluefish'] = {
  fullyDegrades: true,
  decayrate: 0.02,
  displayname: 'Bluefish',
  price: 1,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_fishing-bluefish.png',
  information: 'Whoever coined this name was a genius',
  deg: false,
};

itemList['fishingflounder'] = {
  fullyDegrades: true,
  decayrate: 0.02,
  displayname: 'Flounder',
  price: 1,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_fishing-flounder.png',
  information: 'I went fishing and all I got was this lousy flounder',
  deg: false,
};

itemList['fishingmackerel'] = {
  fullyDegrades: true,
  decayrate: 0.02,
  displayname: 'Mackerel',
  price: 1,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_fishing-mackerel.png',
  information: 'Sometimes holy',
  deg: false,
};

itemList['fishingcod'] = {
  fullyDegrades: true,
  decayrate: 0.02,
  displayname: 'Cod',
  price: 1,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_fishing-cod.png',
  information: 'Modern Warfare',
  deg: false,
};

itemList['fishingwhale'] = {
  fullyDegrades: true,
  decayrate: 0.02,
  displayname: 'Baby Whale',
  price: 1,
  weight: 100,
  nonStack: true,
  model: '',
  image: 'np_fishing-whale.png',
  information: 'A fucking whale! Someone might be interested in buying it? Lol, jk. Throw it back. Unless..?',
  deg: false,
};

itemList['fishingdolphin'] = {
  fullyDegrades: true,
  decayrate: 0.02,
  displayname: 'Baby Dolphin',
  price: 1,
  weight: 100,
  nonStack: true,
  model: '',
  image: 'np_fishing-dolphin.png',
  information: 'A fucking dolphin! Someone might be interested in buying it? Lol, jk. Throw it back. Unless..?',
  deg: false,
};

itemList['fishingshark'] = {
  fullyDegrades: true,
  decayrate: 0.02,
  displayname: 'Baby Shark',
  price: 1,
  weight: 100,
  nonStack: true,
  model: '',
  image: 'np_fishing-shark.png',
  information: 'A fucking shark! Someone might be interested in buying it? Lol, jk. Throw it back. Unless..?',
  deg: false,
};

// FISHING JUNK

itemList['fishingboot'] = {
  fullyDegrades: true,
  decayrate: 0.02,
  displayname: 'Boot',
  price: 1,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_fishingboot.png',
  information: 'insert shit here',
  deg: false,
};

itemList['fishinglog'] = {
  fullyDegrades: true,
  decayrate: 0.02,
  displayname: 'Log',
  price: 1,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_fishinglog.png',
  information: 'insert shit here',
  deg: false,
};

itemList['fishingtin'] = {
  fullyDegrades: true,
  decayrate: 0.02,
  displayname: 'Tincan',
  price: 1,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_fishingtin.png',
  information: 'insert shit here',
  deg: false,
};

itemList['-102323637'] = {
  fullyDegrades: true,
  decayrate: 0.02,
  displayname: 'Old broken bottle',
  price: 1,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_glass-bottle.png',
  information: 'insert shit here',
  deg: false,
};

itemList['fishingtacklebox'] = {
  fullyDegrades: true,
  decayrate: 0.02,
  displayname: 'Tackle box',
  price: 1,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_fishingtacklebox.png',
  information: 'insert shit here',
  deg: false,
};

itemList['fishingchest'] = {
  fullyDegrades: true,
  decayrate: 0.02,
  displayname: 'Treasure chest',
  price: 1,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_fishingchest.png',
  information: 'insert shit here',
  deg: false,
};

itemList['fishinglockbox'] = {
  fullyDegrades: true,
  decayrate: 0.02,
  displayname: 'Lockbox',
  price: 1,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_fishinglockbox.png',
  information: 'insert shit here',
  deg: false,
};

itemList['fishingtunac'] = {
  fullyDegrades: true,
  decayrate: 0.1,
  displayname: 'Tuna Chip',
  craft: [{ itemid: 'electronics', amount: 100 }],
  price: 500,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_tuner.png',
  information: 'Works better on boats.',
  deg: false,
};

// FISHING END
// HUNTING

itemList['3648318199'] = {
  fullyDegrades: false,
  decayrate: 0.3,
  displayname: 'Hunting Rifle',
  price: 1000,
  weight: 11,
  nonStack: true,
  model: '',
  image: 'np_huntingrifle.png',
  weapon: false,
  deg: true,
};

itemList['huntingammo'] = {
  fullyDegrades: true,
  decayrate: 1.0,
  displayname: '223 Hunting Rounds',
  price: 100,
  weight: 7,
  nonStack: false,
  model: '',
  image: 'np_223ammo.png',
  deg: false,
};

itemList['huntingknife'] = {
  fullyDegrades: false,
  decayrate: 2.0,
  displayname: 'Hunting Knife',
  price: 100,
  weight: 11,
  nonStack: true,
  model: '',
  image: 'np_huntingknife.png',
  deg: false,
};

itemList['huntingbait'] = {
  fullyDegrades: true,
  decayrate: 0.02,
  displayname: 'Animal Bait',
  price: 25,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_huntingbait.png',
  information: 'Smells like old fish and shoes',
  deg: false,
};

itemList['huntingcarcass1'] = {
  fullyDegrades: true,
  decayrate: 0.02,
  displayname: 'Animal Carcass',
  price: 1,
  weight: 130,
  nonStack: true,
  model: '',
  image: 'np_huntingcarcass1.png',
  information: 'What is this? Did you shoot it with an AK?',
  deg: false,
};

itemList['huntingcarcass2'] = {
  fullyDegrades: true,
  decayrate: 0.02,
  displayname: 'Animal Carcass',
  price: 1,
  weight: 130,
  nonStack: true,
  model: '',
  image: 'np_huntingcarcass2.png',
  information: 'Someone might pay a pretty penny for this',
  deg: false,
};

itemList['huntingcarcass3'] = {
  fullyDegrades: true,
  decayrate: 0.02,
  displayname: 'Animal Carcass',
  price: 1,
  weight: 130,
  nonStack: true,
  model: '',
  image: 'np_huntingcarcass3.png',
  information: 'I am sure we can turn this in to something fancy',
  deg: false,
};

itemList['huntingcarcass4'] = {
  fullyDegrades: true,
  decayrate: 0.02,
  displayname: 'Animal Carcass',
  price: 1,
  weight: 130,
  nonStack: true,
  model: '',
  image: 'np_huntingcarcass4.png',
  information: 'Hunting in the South Side are we?',
  deg: false,
};

itemList['huntingpelt'] = {
  fullyDegrades: true,
  decayrate: 0.02,
  displayname: 'Animal Pelt',
  price: 1,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_huntingpelt.png',
  information: 'This used to keep an animal warm in the winter! You ANIMAL!',
  deg: false,
};

// HUNTING END

// HEISTS
// vault lower
itemList['heistlaptop1'] = {
  fullyDegrades: true,
  decayrate: 0.15,
  displayname: 'Laptop',
  price: 1,
  weight: 20,
  nonStack: true,
  model: '',
  image: 'np_laptop01.png',
  information: 'Pre-configured to access certain systems',
  deg: true,
};

// not used
itemList['heistlaptop2'] = {
  fullyDegrades: true,
  decayrate: 0.15,
  displayname: 'Laptop',
  price: 1,
  weight: 20,
  nonStack: true,
  model: '',
  image: 'np_laptop02.png',
  information: 'Pre-configured to access certain systems',
  deg: true,
};

// fleeca
itemList['heistlaptop3'] = {
  fullyDegrades: true,
  decayrate: 0.15,
  displayname: 'Laptop',
  price: 1,
  weight: 20,
  nonStack: true,
  model: '',
  image: 'np_laptop03.png',
  information: 'Pre-configured to access certain systems',
  deg: true,
};

// vault upper, paleto
itemList['heistlaptop4'] = {
  fullyDegrades: true,
  decayrate: 0.15,
  displayname: 'Laptop',
  price: 1,
  weight: 20,
  nonStack: true,
  model: '',
  image: 'np_laptop04.png',
  information: 'Pre-configured to access certain systems',
  deg: true,
};

// vault upper, paleto
itemList['heistusb1'] = {
  fullyDegrades: true,
  decayrate: 0.2,
  displayname: 'Phone Dongle',
  price: 1,
  weight: 10,
  nonStack: true,
  model: '',
  image: 'np_heist_usb_red.png',
  information: 'Marked for Police Seizure',
  deg: true,
};

// vault lower
itemList['heistusb2'] = {
  fullyDegrades: true,
  decayrate: 0.2,
  displayname: 'Phone Dongle',
  price: 1,
  weight: 10,
  nonStack: true,
  model: '',
  image: 'np_heist_usb_gold.png',
  information: 'Marked for Police Seizure',
  deg: true,
};
// HEISTS END

// METH
// lab key optimus prime
itemList['methlabkey'] = {
  fullyDegrades: false,
  decayrate: 2.0,
  displayname: 'Key to a Door',
  price: 1,
  weight: 1,
  nonStack: true,
  model: '',
  image: 'np_meth_key.png',
  information: '',
  deg: false,
};

itemList['methlabbatch'] = {
  fullyDegrades: true,
  decayrate: 1.0,
  displayname: 'Batch of Raw Meth',
  price: 1,
  weight: 1,
  nonStack: true,
  model: '',
  image: 'np_meth_batch.png',
  information: 'Crystal-like. Needs to be stored somewhere cool and dry to cure.',
  deg: true,
};

itemList['methlabcured'] = {
  fullyDegrades: true,
  decayrate: 1.0,
  displayname: 'Batch of Cured Meth',
  price: 1,
  weight: 1,
  nonStack: true,
  model: '',
  image: 'np_meth_cured.png',
  information: 'Ready for bagging!',
  deg: true,
};

itemList['methlabbaggy'] = {
  fullyDegrades: false,
  decayrate: 0.02,
  displayname: 'Small Packaging Bag',
  price: 1,
  weight: 1,
  nonStack: true,
  model: '',
  image: 'np_meth_empty_baggy.png',
  information: '',
  deg: false,
};

itemList['methlabproduct'] = {
  fullyDegrades: true,
  decayrate: 0.5,
  displayname: 'Meth (1g)',
  price: 1,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_meth-baggy.png',
  information: '',
  deg: true,
};
// METH END

// RACING
itemList['racingusb0'] = {
  fullyDegrades: true,
  decayrate: 1,
  displayname: 'Race Creating Dongle',
  price: 1,
  weight: 10,
  nonStack: true,
  model: '',
  image: 'np_racing_usb_blue.png',
  information: 'You do not see this...',
  deg: true,
};

itemList['racingusb1'] = {
  fullyDegrades: true,
  decayrate: 1,
  displayname: 'Phone Dongle',
  price: 1,
  weight: 10,
  nonStack: true,
  model: '',
  image: 'np_racing_usb_blue.png',
  information: 'Marked for Police Seizure',
  deg: true,
};

// RACING END
//MECHANIC REPAIR SHOPS

itemList['repairtoolkit'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Repair Toolkit',
  craft: [{ itemid: 'aluminium', amount: 5 }],
  price: 10,
  weight: 15,
  nonStack: false,
  model: '',
  image: 'np_repair-toolkit.png',
  information: 'Used by Tow Truck drivers and repair people.',
  deg: false,
};

//S CLASS REPAIR PARTS

itemList['sfixbrake'] = {
  fullyDegrades: true,
  decayrate: 2,
  displayname: 'Brake Parts (S)',
  craft: [
    //{ itemid: 'aluminium', amount: 1 },
    { itemid: 'steel', amount: 1 },
    { itemid: 'copper', amount: 5 },
    //{ itemid: 'scrapmetal', amount: 1 },
    { itemid: 'rubber', amount: 2 },
    //{ itemid: 'plastic', amount: 1 },
    { itemid: 'glass', amount: 1 },
    //{ itemid: 'electronics', amount: 1 },
  ],
  price: 10,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_brake_parts_s.png',
  information: 'New brake discs, pads, calipers, hubs & accessories',
  deg: true,
};
itemList['sfixaxle'] = {
  fullyDegrades: true,
  decayrate: 2,
  displayname: 'Axle Parts (S)',
  craft: [
    { itemid: 'aluminium', amount: 5 },
    { itemid: 'steel', amount: 1 },
    //{ itemid: 'copper', amount: 1 },
    { itemid: 'scrapmetal', amount: 1 },
    //{ itemid: 'rubber', amount: 1 },
    { itemid: 'plastic', amount: 2 },
    //{ itemid: 'glass', amount: 1 },
    //{ itemid: 'electronics', amount: 1 },
  ],
  price: 10,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_axle_parts_s.png',
  information: 'New axle components',
  deg: true,
};

itemList['sfixradiator'] = {
  fullyDegrades: true,
  decayrate: 2,
  displayname: 'Radiator Parts (S)',
  craft: [
    { itemid: 'aluminium', amount: 3 },
    //{ itemid: 'steel', amount: 1 },
    //{ itemid: 'copper', amount: 1 },
    //{ itemid: 'scrapmetal', amount: 1 },
    //{ itemid: 'rubber', amount: 1 },
    { itemid: 'plastic', amount: 4 },
    { itemid: 'glass', amount: 2 },
    //{ itemid: 'electronics', amount: 1 },
  ],
  price: 10,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_cooling_parts_s.png',
  information: 'New radiator and cooling parts',
  deg: true,
};

itemList['sfixclutch'] = {
  fullyDegrades: true,
  decayrate: 2,
  displayname: 'Clutch Parts (S)',
  craft: [
    //{ itemid: 'aluminium', amount: 1 },
    //{ itemid: 'steel', amount: 1 },
    { itemid: 'copper', amount: 4 },
    //{ itemid: 'scrapmetal', amount: 1 },
    //{ itemid: 'rubber', amount: 1 },
    //{ itemid: 'plastic', amount: 1 },
    { itemid: 'glass', amount: 5 },
    //{ itemid: 'electronics', amount: 1 },
  ],
  price: 10,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_clutch_parts_s.png',
  information: 'New clutch disc and pressure plate',
  deg: true,
};

itemList['sfixtransmission'] = {
  fullyDegrades: true,
  decayrate: 2,
  displayname: 'Transmission Parts (S)',
  craft: [
    { itemid: 'aluminium', amount: 5 },
    { itemid: 'steel', amount: 4 },
    //{ itemid: 'copper', amount: 1 },
    //{ itemid: 'scrapmetal', amount: 1 },
    //{ itemid: 'rubber', amount: 1 },
    //{ itemid: 'plastic', amount: 1 },
    //{ itemid: 'glass', amount: 1 },
    //{ itemid: 'electronics', amount: 1 },
  ],
  price: 10,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_transmission_parts_s.png',
  information: 'New gear sets, shafts, converters and clutch packs',
  deg: true,
};

itemList['sfixelectronics'] = {
  fullyDegrades: true,
  decayrate: 2,
  displayname: 'Vehicle Electronics (S)',
  craft: [
    //{ itemid: 'aluminium', amount: 1 },
    //{ itemid: 'steel', amount: 1 },
    //{ itemid: 'copper', amount: 1 },
    //{ itemid: 'scrapmetal', amount: 1 },
    //{ itemid: 'rubber', amount: 1 },
    //{ itemid: 'plastic', amount: 1 },
    //{ itemid: 'glass', amount: 1 },
    { itemid: 'electronics', amount: 9 },
  ],
  price: 10,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_electronic_parts_s.png',
  information: 'Various vehicle electrical components',
  deg: true,
};

itemList['sfixinjector'] = {
  fullyDegrades: true,
  decayrate: 2,
  displayname: 'Fuel Injectors (S)',
  craft: [
    { itemid: 'aluminium', amount: 1 },
    //{ itemid: 'steel', amount: 1 },
    //{ itemid: 'copper', amount: 1 },
    //{ itemid: 'scrapmetal', amount: 1 },
    //{ itemid: 'rubber', amount: 1 },
    { itemid: 'plastic', amount: 5 },
    //{ itemid: 'glass', amount: 1 },
    { itemid: 'electronics', amount: 3 },
  ],
  price: 10,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_fuel_injectors_s.png',
  information: 'New fuel injectors',
  deg: true,
};

itemList['sfixtire'] = {
  fullyDegrades: true,
  decayrate: 2,
  displayname: 'Tire Repair Kit (S)',
  craft: [
    //{ itemid: 'aluminium', amount: 1 },
    { itemid: 'steel', amount: 2 },
    { itemid: 'copper', amount: 1 },
    //{ itemid: 'scrapmetal', amount: 1 },
    { itemid: 'rubber', amount: 6 },
    //{ itemid: 'plastic', amount: 1 },
    //{ itemid: 'glass', amount: 1 },
    //{ itemid: 'electronics', amount: 1 },
  ],
  price: 10,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_tire_kit_s.png',
  information: 'For swapping and repairing worn or damaged tires',
  deg: true,
};

itemList['sfixbody'] = {
  fullyDegrades: true,
  decayrate: 2,
  displayname: 'Body Panels (S)',
  craft: [
    //{ itemid: 'aluminium', amount: 1 },
    //{ itemid: 'steel', amount: 1 },
    //{ itemid: 'copper', amount: 1 },
    //{ itemid: 'scrapmetal', amount: 1 },
    //{ itemid: 'rubber', amount: 1 },
    { itemid: 'plastic', amount: 2 },
    { itemid: 'glass', amount: 4 },
    //{ itemid: 'electronics', amount: 1 },
  ],
  price: 10,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_body_panels_s.png',
  information: 'New vehicle body panels',
  deg: true,
};

itemList['sfixengine'] = {
  fullyDegrades: true,
  decayrate: 2,
  displayname: 'Engine Parts (S)',
  craft: [
    { itemid: 'aluminium', amount: 2 },
    { itemid: 'steel', amount: 3 },
    { itemid: 'copper', amount: 1 },
    { itemid: 'scrapmetal', amount: 3 },
    //{ itemid: 'rubber', amount: 1 },
    //{ itemid: 'plastic', amount: 1 },
    //{ itemid: 'glass', amount: 1 },
    //{ itemid: 'electronics', amount: 1 },
  ],
  price: 10,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_engine_parts_s.png',
  information: 'New engine parts',
  deg: true,
};

//A CLASS REPAIR PARTS

itemList['afixbrake'] = {
  fullyDegrades: true,
  decayrate: 2,
  displayname: 'Brake Parts (A)',
  craft: [
    //{ itemid: 'aluminium', amount: 1 },
    { itemid: 'steel', amount: 1 },
    { itemid: 'copper', amount: 3 },
    //{ itemid: 'scrapmetal', amount: 1 },
    { itemid: 'rubber', amount: 1 },
    //{ itemid: 'plastic', amount: 1 },
    { itemid: 'glass', amount: 1 },
    //{ itemid: 'electronics', amount: 1 },
  ],
  price: 10,
  weight: 1,
  nonStack: false,
  model: '',
  image:  'np_brake_parts_a.png',
  information: 'New brake discs, pads, calipers, hubs & accessories',
  deg: true,
};

itemList['afixaxle'] = {
  fullyDegrades: true,
  decayrate: 2,
  displayname: 'Axle Parts (A)',
  craft: [
    { itemid: 'aluminium', amount: 2 },
    { itemid: 'steel', amount: 1 },
    //{ itemid: 'copper', amount: 1 },
    { itemid: 'scrapmetal', amount: 2 },
    //{ itemid: 'rubber', amount: 1 },
    { itemid: 'plastic', amount: 1 },
    //{ itemid: 'glass', amount: 1 },
    //{ itemid: 'electronics', amount: 1 },
  ],
  price: 10,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_axle_parts_a.png',
  information: 'New axle components',
  deg: true,
};

itemList['afixradiator'] = {
  fullyDegrades: true,
  decayrate: 2,
  displayname: 'Radiator Parts (A)',
  craft: [
    //{ itemid: 'aluminium', amount: 1 },
    //{ itemid: 'steel', amount: 1 },
    //{ itemid: 'copper', amount: 1 },
    //{ itemid: 'scrapmetal', amount: 1 },
    //{ itemid: 'rubber', amount: 1 },
    { itemid: 'plastic', amount: 3 },
    { itemid: 'glass', amount: 3 },
    //{ itemid: 'electronics', amount: 1 },
  ],
  price: 10,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_cooling_parts_a.png',
  information: 'New radiator and cooling parts',
  deg: true,
};

itemList['afixclutch'] = {
  fullyDegrades: true,
  decayrate: 2,
  displayname: 'Clutch Parts (A)',
  craft: [
    //{ itemid: 'aluminium', amount: 1 },
    //{ itemid: 'steel', amount: 1 },
    { itemid: 'copper', amount: 3 },
    //{ itemid: 'scrapmetal', amount: 1 },
    //{ itemid: 'rubber', amount: 1 },
    //{ itemid: 'plastic', amount: 1 },
    { itemid: 'glass', amount: 3 },
    //{ itemid: 'electronics', amount: 1 },
  ],
  price: 10,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_clutch_parts_a.png',
  information: 'New clutch disc and pressure plate',
  deg: true,
};

itemList['afixtransmission'] = {
  fullyDegrades: true,
  decayrate: 2,
  displayname: 'Transmission Parts (A)',
  craft: [
    { itemid: 'aluminium', amount: 3 },
    { itemid: 'steel', amount: 2 },
    { itemid: 'copper', amount: 1 },
    //{ itemid: 'scrapmetal', amount: 1 },
    //{ itemid: 'rubber', amount: 1 },
    //{ itemid: 'plastic', amount: 1 },
    //{ itemid: 'glass', amount: 1 },
    //{ itemid: 'electronics', amount: 1 },
  ],
  price: 10,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_transmission_parts_a.png',
  information: 'New gear sets, shafts, converters and clutch packs',
  deg: true,
};

itemList['afixelectronics'] = {
  fullyDegrades: true,
  decayrate: 2,
  displayname: 'Vehicle Electronics (A)',
  craft: [
    //{ itemid: 'aluminium', amount: 1 },
    //{ itemid: 'steel', amount: 1 },
    //{ itemid: 'copper', amount: 1 },
    //{ itemid: 'scrapmetal', amount: 1 },
    //{ itemid: 'rubber', amount: 1 },
    //{ itemid: 'plastic', amount: 1 },
    //{ itemid: 'glass', amount: 1 },
    { itemid: 'electronics', amount: 6 },
  ],
  price: 10,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_electronic_parts_a.png',
  information: 'Various vehicle electrical components',
  deg: true,
};

itemList['afixinjector'] = {
  fullyDegrades: true,
  decayrate: 2,
  displayname: 'Fuel Injectors (A)',
  ccraft: [
    //{ itemid: 'aluminium', amount: 1 },
    //{ itemid: 'steel', amount: 1 },
    //{ itemid: 'copper', amount: 1 },
    //{ itemid: 'scrapmetal', amount: 1 },
    { itemid: 'rubber', amount: 2 },
    { itemid: 'plastic', amount: 2 },
    //{ itemid: 'glass', amount: 1 },
    { itemid: 'electronics', amount: 2 },
  ],
  price: 10,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_fuel_injectors_a.png',
  information: 'New fuel injectors',
  deg: true,
};

itemList['afixtire'] = {
  fullyDegrades: true,
  decayrate: 2,
  displayname: 'Tire Repair Kit (A)',
  craft: [
    //{ itemid: 'aluminium', amount: 1 },
    { itemid: 'steel', amount: 1 },
    //{ itemid: 'copper', amount: 1 },
    //{ itemid: 'scrapmetal', amount: 1 },
    { itemid: 'rubber', amount: 5 },
    //{ itemid: 'plastic', amount: 1 },
    //{ itemid: 'glass', amount: 1 },
    //{ itemid: 'electronics', amount: 1 },
  ],
  price: 10,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_tire_kit_a.png',
  information: 'For swapping and repairing worn or damaged tires',
  deg: true,
};

itemList['afixbody'] = {
  fullyDegrades: true,
  decayrate: 2,
  displayname: 'Body Panels (A)',
  craft: [
    //{ itemid: 'aluminium', amount: 1 },
    //{ itemid: 'steel', amount: 1 },
    //{ itemid: 'copper', amount: 1 },
    //{ itemid: 'scrapmetal', amount: 1 },
    //{ itemid: 'rubber', amount: 1 },
    { itemid: 'plastic', amount: 2 },
    { itemid: 'glass', amount: 4 },
    //{ itemid: 'electronics', amount: 1 },
  ],
  price: 10,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_body_panels_a.png',
  information: 'New vehicle body panels',
  deg: true,
};

itemList['afixengine'] = {
  fullyDegrades: true,
  decayrate: 2,
  displayname: 'Engine Parts (A)',
  craft: [
    { itemid: 'aluminium', amount: 2 },
    { itemid: 'steel', amount: 2 },
    //{ itemid: 'copper', amount: 1 },
    { itemid: 'scrapmetal', amount: 2 },
    //{ itemid: 'rubber', amount: 1 },
    //{ itemid: 'plastic', amount: 1 },
    //{ itemid: 'glass', amount: 1 },
    //{ itemid: 'electronics', amount: 1 },
  ],
  price: 10,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_engine_parts_a.png',
  information: 'New engine parts',
  deg: true,
};

//B CLASS REPAIR PARTS

itemList['bfixbrake'] = {
  fullyDegrades: true,
  decayrate: 2,
  displayname: 'Brake Parts (B)',
  craft: [
    //{ itemid: 'aluminium', amount: 1 },
    { itemid: 'steel', amount: 1 },
    { itemid: 'copper', amount: 2 },
    //{ itemid: 'scrapmetal', amount: 1 },
    { itemid: 'rubber', amount: 1 },
    //{ itemid: 'plastic', amount: 1 },
    //{ itemid: 'glass', amount: 1 },
    //{ itemid: 'electronics', amount: 1 },
  ],
  price: 10,
  weight: 1,
  nonStack: false,
  model: '',
  image:  'np_brake_parts_b.png',
  information: 'New brake discs, pads, calipers, hubs & accessories',
  deg: true,
};

itemList['bfixaxle'] = {
  fullyDegrades: true,
  decayrate: 2,
  displayname: 'Axle Parts (B)',
  craft: [
    { itemid: 'aluminium', amount: 2 },
    { itemid: 'steel', amount: 2 },
    //{ itemid: 'copper', amount: 1 },
    //{ itemid: 'scrapmetal', amount: 1 },
    //{ itemid: 'rubber', amount: 1 },
    //{ itemid: 'plastic', amount: 1 },
    //{ itemid: 'glass', amount: 1 },
    //{ itemid: 'electronics', amount: 1 },
  ],
  price: 10,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_axle_parts_b.png',
  information: 'New axle components',
  deg: true,
};

itemList['bfixradiator'] = {
  fullyDegrades: true,
  decayrate: 2,
  displayname: 'Radiator Parts (B)',
  craft: [
    //{ itemid: 'aluminium', amount: 1 },
    //{ itemid: 'steel', amount: 1 },
    //{ itemid: 'copper', amount: 1 },
    { itemid: 'scrapmetal', amount: 1 },
    { itemid: 'rubber', amount: 1 },
    { itemid: 'plastic', amount: 2 },
    //{ itemid: 'glass', amount: 1 },
    //{ itemid: 'electronics', amount: 1 },
  ],
  price: 10,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_cooling_parts_b.png',
  information: 'New radiator and cooling parts',
  deg: true,
};

itemList['bfixclutch'] = {
  fullyDegrades: true,
  decayrate: 2,
  displayname: 'Clutch Parts (B)',
  craft: [
    //{ itemid: 'aluminium', amount: 1 },
    //{ itemid: 'steel', amount: 1 },
    { itemid: 'copper', amount: 3 },
    { itemid: 'scrapmetal', amount: 1 },
    //{ itemid: 'rubber', amount: 1 },
    //{ itemid: 'plastic', amount: 1 },
    //{ itemid: 'glass', amount: 1 },
    //{ itemid: 'electronics', amount: 1 },
  ],
  price: 10,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_clutch_parts_b.png',
  information: 'New clutch disc and pressure plate',
  deg: true,
};

itemList['bfixtransmission'] = {
  fullyDegrades: true,
  decayrate: 2,
  displayname: 'Transmission Parts (B)',
  craft: [
    { itemid: 'aluminium', amount: 3 },
    { itemid: 'steel', amount: 1 },
    //{ itemid: 'copper', amount: 1 },
    //{ itemid: 'scrapmetal', amount: 1 },
    //{ itemid: 'rubber', amount: 1 },
    //{ itemid: 'plastic', amount: 1 },
    //{ itemid: 'glass', amount: 1 },
    //{ itemid: 'electronics', amount: 1 },
  ],
  price: 10,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_transmission_parts_b.png',
  information: 'New gear sets, shafts, converters and clutch packs',
  deg: true,
};

itemList['bfixelectronics'] = {
  fullyDegrades: true,
  decayrate: 2,
  displayname: 'Vehicle Electronics (B)',
  craft: [
    //{ itemid: 'aluminium', amount: 1 },
    //{ itemid: 'steel', amount: 1 },
    //{ itemid: 'copper', amount: 1 },
    //{ itemid: 'scrapmetal', amount: 1 },
    //{ itemid: 'rubber', amount: 1 },
    //{ itemid: 'plastic', amount: 1 },
    //{ itemid: 'glass', amount: 1 },
    { itemid: 'electronics', amount: 4 },
  ],
  price: 10,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_electronic_parts_b.png',
  information: 'Various vehicle electrical components',
  deg: true,
};

itemList['bfixinjector'] = {
  fullyDegrades: true,
  decayrate: 2,
  displayname: 'Fuel Injectors (B)',
  craft: [
    //{ itemid: 'aluminium', amount: 1 },
    //{ itemid: 'steel', amount: 1 },
    //{ itemid: 'copper', amount: 1 },
    //{ itemid: 'scrapmetal', amount: 1 },
    { itemid: 'rubber', amount: 2 },
    { itemid: 'plastic', amount: 1 },
    //{ itemid: 'glass', amount: 1 },
    { itemid: 'electronics', amount: 1 },
  ],
  price: 10,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_fuel_injectors_b.png',
  information: 'New fuel injectors',
  deg: true,
};

itemList['bfixtire'] = {
  fullyDegrades: true,
  decayrate: 2,
  displayname: 'Tire Repair Kit (B)',
  craft: [
    //{ itemid: 'aluminium', amount: 1 },
    { itemid: 'steel', amount: 1 },
    //{ itemid: 'copper', amount: 1 },
    //{ itemid: 'scrapmetal', amount: 1 },
    { itemid: 'rubber', amount: 3 },
    //{ itemid: 'plastic', amount: 1 },
    //{ itemid: 'glass', amount: 1 },
    //{ itemid: 'electronics', amount: 1 },
  ],
  price: 10,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_tire_kit_b.png',
  information: 'For swapping and repairing worn or damaged tires',
  deg: true,
};

itemList['bfixbody'] = {
  fullyDegrades: true,
  decayrate: 2,
  displayname: 'Body Panels (B)',
  craft: [
    //{ itemid: 'aluminium', amount: 1 },
    //{ itemid: 'steel', amount: 1 },
    //{ itemid: 'copper', amount: 1 },
    //{ itemid: 'scrapmetal', amount: 1 },
    //{ itemid: 'rubber', amount: 1 },
    { itemid: 'plastic', amount: 1 },
    { itemid: 'glass', amount: 3 },
    //{ itemid: 'electronics', amount: 1 },
  ],
  price: 10,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_body_panels_b.png',
  information: 'New vehicle body panels',
  deg: true,
};

itemList['bfixengine'] = {
  fullyDegrades: true,
  decayrate: 2,
  displayname: 'Engine Parts (B)',
  craft: [
    //{ itemid: 'aluminium', amount: 1 },
    { itemid: 'steel', amount: 1 },
    //{ itemid: 'copper', amount: 1 },
    { itemid: 'scrapmetal', amount: 3 },
    //{ itemid: 'rubber', amount: 1 },
    //{ itemid: 'plastic', amount: 1 },
    //{ itemid: 'glass', amount: 1 },
    //{ itemid: 'electronics', amount: 1 },
  ],
  price: 10,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_engine_parts_b.png',
  information: 'New engine parts',
  deg: true,
};

//C CLASS REPAIR PARTS

itemList['cfixbrake'] = {
  fullyDegrades: true,
  decayrate: 2,
  displayname: 'Brake Parts (C)',
  craft: [
    //{ itemid: 'aluminium', amount: 1 },
    { itemid: 'steel', amount: 1 },
    { itemid: 'copper', amount: 1 },
    //{ itemid: 'scrapmetal', amount: 1 },
    { itemid: 'rubber', amount: 1 },
    //{ itemid: 'plastic', amount: 1 },
    //{ itemid: 'glass', amount: 1 },
    //{ itemid: 'electronics', amount: 1 },
  ],
  price: 10,
  weight: 1,
  nonStack: false,
  model: '',
  image:  'np_brake_parts_c.png',
  information: 'New brake discs, pads, calipers, hubs & accessories',
  deg: true,
};

itemList['cfixaxle'] = {
  fullyDegrades: true,
  decayrate: 2,
  displayname: 'Axle Parts (C)',
  craft: [
    { itemid: 'aluminium', amount: 1 },
    { itemid: 'steel', amount: 1 },
    //{ itemid: 'copper', amount: 1 },
    //{ itemid: 'scrapmetal', amount: 1 },
    //{ itemid: 'rubber', amount: 1 },
    //{ itemid: 'plastic', amount: 1 },
    //{ itemid: 'glass', amount: 1 },
    //{ itemid: 'electronics', amount: 1 },
  ],
  price: 10,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_axle_parts_c.png',
  information: 'New axle components',
  deg: true,
};

itemList['cfixradiator'] = {
  fullyDegrades: true,
  decayrate: 2,
  displayname: 'Radiator Parts (C)',
  craft: [
    //{ itemid: 'aluminium', amount: 1 },
    //{ itemid: 'steel', amount: 1 },
    //{ itemid: 'copper', amount: 1 },
    { itemid: 'scrapmetal', amount: 1 },
    { itemid: 'rubber', amount: 1 },
    { itemid: 'plastic', amount: 1 },
    //{ itemid: 'glass', amount: 1 },
    //{ itemid: 'electronics', amount: 1 },
  ],
  price: 10,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_cooling_parts_c.png',
  information: 'New radiator and cooling parts',
  deg: true,
};

itemList['cfixclutch'] = {
  fullyDegrades: true,
  decayrate: 2,
  displayname: 'Clutch Parts (C)',
  craft: [
    //{ itemid: 'aluminium', amount: 1 },
    //{ itemid: 'steel', amount: 1 },
    { itemid: 'copper', amount: 3 },
    //{ itemid: 'scrapmetal', amount: 1 },
    //{ itemid: 'rubber', amount: 1 },
    //{ itemid: 'plastic', amount: 1 },
    //{ itemid: 'glass', amount: 1 },
    //{ itemid: 'electronics', amount: 1 },
  ],
  price: 10,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_clutch_parts_c.png',
  information: 'New clutch disc and pressure plate',
  deg: true,
};

itemList['cfixtransmission'] = {
  fullyDegrades: true,
  decayrate: 2,
  displayname: 'Transmission Parts (C)',
  craft: [
    //{ itemid: 'aluminium', amount: 1 },
    { itemid: 'steel', amount: 1 },
    { itemid: 'copper', amount: 1 },
    { itemid: 'scrapmetal', amount: 1 },
    //{ itemid: 'rubber', amount: 1 },
    //{ itemid: 'plastic', amount: 1 },
    //{ itemid: 'glass', amount: 1 },
    //{ itemid: 'electronics', amount: 1 },
  ],
  price: 10,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_transmission_parts_c.png',
  information: 'New gear sets, shafts, converters and clutch packs',
  deg: true,
};

itemList['cfixelectronics'] = {
  fullyDegrades: true,
  decayrate: 2,
  displayname: 'Vehicle Electronics (C)',
  craft: [
    //{ itemid: 'aluminium', amount: 1 },
    //{ itemid: 'steel', amount: 1 },
    //{ itemid: 'copper', amount: 1 },
    //{ itemid: 'scrapmetal', amount: 1 },
    //{ itemid: 'rubber', amount: 1 },
    //{ itemid: 'plastic', amount: 1 },
    //{ itemid: 'glass', amount: 1 },
    { itemid: 'electronics', amount: 3 },
  ],
  price: 10,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_electronic_parts_c.png',
  information: 'Various vehicle electrical components',
  deg: true,
};

itemList['cfixinjector'] = {
  fullyDegrades: true,
  decayrate: 2,
  displayname: 'Fuel Injectors (C)',
  craft: [
    //{ itemid: 'aluminium', amount: 1 },
    //{ itemid: 'steel', amount: 1 },
    //{ itemid: 'copper', amount: 1 },
    { itemid: 'scrapmetal', amount: 2 },
    //{ itemid: 'rubber', amount: 1 },
    { itemid: 'plastic', amount: 1 },
    //{ itemid: 'glass', amount: 1 },
    //{ itemid: 'electronics', amount: 1 },
  ],
  price: 10,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_fuel_injectors_c.png',
  information: 'New fuel injectors',
  deg: true,
};

itemList['cfixtire'] = {
  fullyDegrades: true,
  decayrate: 2,
  displayname: 'Tire Repair Kit (C)',
  craft: [
    //{ itemid: 'aluminium', amount: 1 },
    //{ itemid: 'steel', amount: 1 },
    //{ itemid: 'copper', amount: 1 },
    //{ itemid: 'scrapmetal', amount: 1 },
    { itemid: 'rubber', amount: 3 },
    //{ itemid: 'plastic', amount: 1 },
    //{ itemid: 'glass', amount: 1 },
    //{ itemid: 'electronics', amount: 1 },
  ],
  price: 10,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_tire_kit_c.png',
  information: 'For swapping and repairing worn or damaged tires',
  deg: true,
};

itemList['cfixbody'] = {
  fullyDegrades: true,
  decayrate: 2,
  displayname: 'Body Panels (C)',
  craft: [
    //{ itemid: 'aluminium', amount: 1 },
    //{ itemid: 'steel', amount: 1 },
    //{ itemid: 'copper', amount: 1 },
    //{ itemid: 'scrapmetal', amount: 1 },
    //{ itemid: 'rubber', amount: 1 },
    { itemid: 'plastic', amount: 1 },
    { itemid: 'glass', amount: 2 },
    //{ itemid: 'electronics', amount: 1 },
  ],
  price: 10,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_body_panels_c.png',
  information: 'New vehicle body panels',
  deg: true,
};

itemList['cfixengine'] = {
  fullyDegrades: true,
  decayrate: 2,
  displayname: 'Engine Parts (C)',
  craft: [
    //{ itemid: 'aluminium', amount: 1 },
    { itemid: 'steel', amount: 1 },
    //{ itemid: 'copper', amount: 1 },
    { itemid: 'scrapmetal', amount: 2 },
    //{ itemid: 'rubber', amount: 1 },
    //{ itemid: 'plastic', amount: 1 },
    //{ itemid: 'glass', amount: 1 },
    //{ itemid: 'electronics', amount: 1 },
  ],
  price: 10,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_engine_parts_c.png',
  information: 'New engine parts',
  deg: true,
};

//D CLASS REPAIR PARTS

itemList['dfixbrake'] = {
  fullyDegrades: true,
  decayrate: 2,
  displayname: 'Brake Parts (D)',
  craft: [
    //{ itemid: 'aluminium', amount: 1 },
    //{ itemid: 'steel', amount: 1 },
    { itemid: 'copper', amount: 1 },
    { itemid: 'scrapmetal', amount: 1 },
    //{ itemid: 'rubber', amount: 1 },
    //{ itemid: 'plastic', amount: 1 },
    //{ itemid: 'glass', amount: 1 },
    //{ itemid: 'electronics', amount: 1 },
  ],
  price: 10,
  weight: 1,
  nonStack: false,
  model: '',
  image:  'np_brake_parts_d.png',
  information: 'New brake discs, pads, calipers, hubs & accessories',
  deg: true,
};

itemList['dfixaxle'] = {
  fullyDegrades: true,
  decayrate: 2,
  displayname: 'Axle Parts (D)',
  craft: [
    //{ itemid: 'aluminium', amount: 1 },
    //{ itemid: 'steel', amount: 1 },
    //{ itemid: 'copper', amount: 1 },
    { itemid: 'scrapmetal', amount: 2 },
    //{ itemid: 'rubber', amount: 1 },
    //{ itemid: 'plastic', amount: 1 },
    //{ itemid: 'glass', amount: 1 },
    //{ itemid: 'electronics', amount: 1 },
  ],
  price: 10,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_axle_parts_d.png',
  information: 'New axle components',
  deg: true,
};

itemList['dfixradiator'] = {
  fullyDegrades: true,
  decayrate: 2,
  displayname: 'Radiator Parts (D)',
  craft: [
    //{ itemid: 'aluminium', amount: 1 },
    //{ itemid: 'steel', amount: 1 },
    //{ itemid: 'copper', amount: 1 },
    { itemid: 'scrapmetal', amount: 2 },
    //{ itemid: 'rubber', amount: 1 },
    //{ itemid: 'plastic', amount: 1 },
    //{ itemid: 'glass', amount: 1 },
    //{ itemid: 'electronics', amount: 1 },
  ],
  price: 10,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_cooling_parts_d.png',
  information: 'New radiator and cooling parts',
  deg: true,
};

itemList['dfixclutch'] = {
  fullyDegrades: true,
  decayrate: 2,
  displayname: 'Clutch Parts (D)',
  craft: [
    //{ itemid: 'aluminium', amount: 1 },
    //{ itemid: 'steel', amount: 1 },
    { itemid: 'copper', amount: 1 },
    { itemid: 'scrapmetal', amount: 1 },
    //{ itemid: 'rubber', amount: 1 },
    //{ itemid: 'plastic', amount: 1 },
    //{ itemid: 'glass', amount: 1 },
    //{ itemid: 'electronics', amount: 1 },
  ],
  price: 10,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_clutch_parts_d.png',
  information: 'New clutch disc and pressure plate',
  deg: true,
};

itemList['dfixtransmission'] = {
  fullyDegrades: true,
  decayrate: 2,
  displayname: 'Transmission Parts (D)',
  craft: [
    //{ itemid: 'aluminium', amount: 1 },
    { itemid: 'steel', amount: 1 },
    //{ itemid: 'copper', amount: 1 },
    { itemid: 'scrapmetal', amount: 1 },
    //{ itemid: 'rubber', amount: 1 },
    //{ itemid: 'plastic', amount: 1 },
    //{ itemid: 'glass', amount: 1 },
    //{ itemid: 'electronics', amount: 1 },
  ],
  price: 10,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_transmission_parts_d.png',
  information: 'New gear sets, shafts, converters and clutch packs',
  deg: true,
};

itemList['dfixelectronics'] = {
  fullyDegrades: true,
  decayrate: 2,
  displayname: 'Vehicle Electronics (D)',
  craft: [
    //{ itemid: 'aluminium', amount: 1 },
    //{ itemid: 'steel', amount: 1 },
    //{ itemid: 'copper', amount: 1 },
    //{ itemid: 'scrapmetal', amount: 1 },
    //{ itemid: 'rubber', amount: 1 },
    //{ itemid: 'plastic', amount: 1 },
    //{ itemid: 'glass', amount: 1 },
    { itemid: 'electronics', amount: 2 },
  ],
  price: 10,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_electronic_parts_d.png',
  information: 'Various vehicle electrical components',
  deg: true,
};

itemList['dfixinjector'] = {
  fullyDegrades: true,
  decayrate: 2,
  displayname: 'Fuel Injectors (D)',
  craft: [
    //{ itemid: 'aluminium', amount: 1 },
    //{ itemid: 'steel', amount: 1 },
    //{ itemid: 'copper', amount: 1 },
    { itemid: 'scrapmetal', amount: 2 },
    //{ itemid: 'rubber', amount: 1 },
    //{ itemid: 'plastic', amount: 1 },
    //{ itemid: 'glass', amount: 1 },
    //{ itemid: 'electronics', amount: 1 },
  ],
  price: 10,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_fuel_injectors_d.png',
  information: 'New fuel injectors',
  deg: true,
};

itemList['dfixtire'] = {
  fullyDegrades: true,
  decayrate: 2,
  displayname: 'Tire Repair Kit (D)',
  craft: [
    //{ itemid: 'aluminium', amount: 1 },
    //{ itemid: 'steel', amount: 1 },
    //{ itemid: 'copper', amount: 1 },
    //{ itemid: 'scrapmetal', amount: 1 },
    { itemid: 'rubber', amount: 2 },
    //{ itemid: 'plastic', amount: 1 },
    //{ itemid: 'glass', amount: 1 },
    //{ itemid: 'electronics', amount: 1 },
  ],
  price: 10,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_tire_kit_d.png',
  information: 'For swapping and repairing worn or damaged tires',
  deg: true,
};

itemList['dfixbody'] = {
  fullyDegrades: true,
  decayrate: 2,
  displayname: 'Body Panels (D)',
  craft: [
    //{ itemid: 'aluminium', amount: 1 },
    //{ itemid: 'steel', amount: 1 },
    //{ itemid: 'copper', amount: 1 },
    //{ itemid: 'scrapmetal', amount: 1 },
    //{ itemid: 'rubber', amount: 1 },
    //{ itemid: 'plastic', amount: 1 },
    { itemid: 'glass', amount: 2 },
    //{ itemid: 'electronics', amount: 1 },
  ],
  price: 10,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_body_panels_d.png',
  information: 'New vehicle body panels',
  deg: true,
};

itemList['dfixengine'] = {
  fullyDegrades: true,
  decayrate: 2,
  displayname: 'Engine Parts (D)',
  craft: [
    //{ itemid: 'aluminium', amount: 1 },
    //{ itemid: 'steel', amount: 1 },
    //{ itemid: 'copper', amount: 1 },
    { itemid: 'scrapmetal', amount: 2 },
    //{ itemid: 'rubber', amount: 1 },
    //{ itemid: 'plastic', amount: 1 },
    //{ itemid: 'glass', amount: 1 },
    //{ itemid: 'electronics', amount: 1 },
  ],
  price: 10,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_engine_parts_d.png',
  information: 'New engine parts',
  deg: true,
};

// MECHANIC REPAIR SHOPS END
itemList['gallery1star'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: '1 Star Contract',
  price: 1,
  weight: 0,
  nonStack: true,
  model: '',
  image: 'np_gallery_1star.png',
  information: '1 Star Contract',
  deg: false,
};
itemList['gallery2star'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: '2 Star Contract',
  price: 1,
  weight: 0,
  nonStack: true,
  model: '',
  image: 'np_gallery_2star.png',
  information: '2 Star Contract',
  deg: false,
};
itemList['gallery3star'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: '3 Star Contract',
  price: 1,
  weight: 0,
  nonStack: true,
  model: '',
  image: 'np_gallery_3star.png',
  information: '3 Star Contract',
  deg: false,
};
itemList['gallery4star'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: '4 Star Contract',
  price: 1,
  weight: 0,
  nonStack: true,
  model: '',
  image: 'np_gallery_4star.png',
  information: '4 Star Contract',
  deg: false,
};
itemList['gallery5star'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: '5 Star Contract',
  price: 1,
  weight: 0,
  nonStack: true,
  model: '',
  image: 'np_gallery_5star.png',
  information: '5 Star Contract',
  deg: false,
};
itemList['gallerypremium'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Membership Card',
  price: 1,
  weight: 0,
  nonStack: true,
  model: '',
  image: 'np_gallery_premium.png',
  information: 'Premiere Membership Card',
  deg: false,
};
itemList['galleryregular'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Membership Card',
  price: 1,
  weight: 0,
  nonStack: true,
  model: '',
  image: 'np_gallery_regular.png',
  information: 'Regular Membership Card',
  deg: false,
};
itemList['galleryvip'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Membership Card',
  price: 1,
  weight: 0,
  nonStack: true,
  model: '',
  image: 'np_gallery_vip.png',
  information: 'VIP Membership Card',
  deg: false,
};

itemList['curvyelephant'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Pet Elephant',
  price: 1,
  weight: 0,
  nonStack: true,
  model: '',
  image: 'np_pet-elephant.png',
  information: 'Pretty curvy',
  deg: false,
};

// Xmas stuff
itemList['xmasgiftcoal'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'A nicely wrapped present',
  price: 1,
  weight: 20,
  nonStack: true,
  model: '',
  image: 'np_christmas_present.png',
  information: 'Those on the nice list would be heartily rewarded :)',
  deg: false,
};
itemList['xmascoal'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'A lump of coal',
  price: 1,
  weight: 10,
  nonStack: true,
  model: '',
  image: 'np_christmas_coal.png',
  information: 'Guess you were on the naughty list. At least its got a ribbon?',
  deg: false,
};
// 126349499 - snowball

// Progression
itemList['godbook'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Dummies For Dummies',
  price: 1,
  weight: 0,
  nonStack: true,
  model: '',
  image: 'np_textbook-a.png',
  information: 'You look like you need knowlage',
  deg: false,
};

itemList['newaccountbox'] = {
  fullyDegrades: true,
  decayrate: 0.02,
  displayname: 'Presents',
  price: 350,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_box.png',
  information: 'Welcome to NoPixel!',
  deg: true,
};

itemList['pimpcane'] = {
  fullyDegrades: false,
  decayrate: 2.0,
  displayname: 'Cane',
  price: 350,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_pimp-cane.png',
  information: 'Walk with style.',
  deg: true,
};

itemList['burgerReceipt'] = {
  fullyDegrades: false,
  decayrate: 0.0,
  displayname: 'Work Receipt',
  price: 40,
  weight: 0,
  nonStack: false,
  model: '',
  image: 'np_receipt.png',
  information: 'BurgerShot - San Andreas & Prosperity',
  deg: false,
};

itemList['softdrink'] = {
  fullyDegrades: true,
  decayrate: 0.01,
  displayname: 'Soft Drink',
  price: 5,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_softdrink.png',
  information: 'Sates thirst and gives a sugar rush',
  deg: false,
};

itemList['bscoffee'] = {
  fullyDegrades: true,
  decayrate: 0.01,
  displayname: 'Cheap Coffee',
  price: 50,
  weight: 1,
  nonStack: false,
  model: '',
  image: 'np_bscoffee.png',
  information: 'Tastes like dirt, but has the caffeine you need',
  deg: false,
};