# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

exhibitors = Exhibitor.create([
	{ name: 'Monster VR', img: 'MonsterVR.png' },
	{ name: 'V', img: 'V.png' },
	{ name: 'Warped Imagination', img: 'WarpedImagination.png' },
	{ name: 'Vrideo', img: 'VRideo.jpg' },
	{ name: 'Funktronic Labs', img: 'Collider.png' },
	{ name: 'RocketSail', img: 'RocketSail.png' },
	{ name: 'New Deal Studios', img: 'NewDealStudios.png' },
	{ name: 'Labcoat Studios', img: 'Labcoat.png' },
	{ name: 'The Department of Silly Stuff', img: 'FacetedFlight.png' },
	{ name: 'Zenka', img: 'Zenka.png' },
	{ name: 'Freeform Labs', img: 'ElemenTerra.png' },
	{ name: 'Studio Transcendent', img: 'StudioTranscendnt.png' },
	{ name: 'Dandelion VR', img: 'Dandelion.jpg' },
	{ name: 'Immersive Entertainment', img: 'IEI.png' },
	{ name: 'Sidekick VR', img: 'Sidekick.png' },
	{ name: 'Side Effects Software', img: 'Houdini.png' },
	{ name: 'Greenlight VR', img: 'GreenlightVR.png' },
	{ name: 'Fish Bowl VR', img: 'Fishbowl.png' },
	{ name: 'OTOY, Inc.', img: 'Otoy.png' },
	{ name: 'Audeze', img: 'Audeze.png' },
	{ name: 'Specular Theory, Inc.', img: 'SpecularTheory.png' },
	{ name: 'VRecover', img: 'VRecover.png' },
	{ name: 'Air Dropper', img: 'AirDropper.jpg' }
])

speakers = Speaker.create([
	{ name: 'Duncan Trussell', img: 'DuncanTrussel.jpg' },
	{ name: 'Dave Taylor', img: 'DaveTaylor.jpeg' }
])

sponsors = Sponsor.create([
	{ name: 'Next VR', rank: 'Diamond', img: 'NextVR.png' },
	{ name: 'Voices of VR', rank: 'Media', img: 'VoicesOfVR.jpeg' },
	{ name: 'Upload', rank: 'Media', img: 'Upload.png' },
	{ name: 'Qgits', rank: 'Media', img: 'Qgits.png' },
	{ name: 'Inner Rift', rank: 'Media', img: 'InnerRift.jpeg' },
	{ name: 'Duncan Trussell', rank: 'Media', img: 'DuncanTrussel.png' }
])