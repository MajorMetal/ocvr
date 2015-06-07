# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

exhibitors = Exhibitor.create([
	{ name: 'Monster VR', img: 'MonsterVR.png', site: '' },
	{ name: 'V', img: 'V.png', site: 'http://startwithv.com' },
	{ name: 'Warped Imagination', img: 'WarpedImagination.png', site: 'http://warpedimagination.com', is_featured: true },
	{ name: 'Otherworld Interactive', img: 'Otherworld.png', site: 'http://www.otherworldinteractive.com' },
	{ name: 'Vrideo', img: 'VRideo.png', site: 'http://www.vrideo.com', is_featured: true },
	{ name: 'Funktronic Labs', img: 'Funktronic.png', site: 'http://funktroniclabs.com/collider', is_featured: true },
	{ name: 'RocketSail', img: 'RocketSail.png', site: 'http://www.rocketsail.com' },
	{ name: 'New Deal Studios', img: 'NewDealStudios.png', site: 'http://www.newdealstudio.com/virtual-reality' },
	{ name: 'Labcoat Studios', img: 'Labcoat.png', site: 'http://vrjam.challangepost.com/submissions/36460-re-entry' },
	{ name: 'The Department of Silly Stuff', img: 'FacetedFlight.png', site: 'http://www.facetedflight.com' },
	{ name: 'Zenka', img: 'Zenka.png', site: 'http://www.zenka.org' },
	{ name: 'Freeform Labs', img: 'ElemenTerra.png', site: 'http://elementerravr.com' },
	{ name: 'Studio Transcendent', img: 'StudioTranscendent.png', site: 'http://studiotranscendent.com' },
	{ name: 'Dandelion VR', img: 'Dandelion.jpg', site: 'http://vrjam.challengepost.com/submissions/36441-dandelion' },
	{ name: 'Next VR', img: 'NextVR.png', site: 'http://nextvr.com', is_featured: true },
	{ name: 'Immersive Entertainment', img: 'IEI.png', site: 'http://www.immersiveent.com' },
	{ name: 'Sidekick VR', img: 'Sidekick.png', site: 'http://www.sidekickvrgames.com', is_featured: true },
	# { name: 'Really Big Pictures', img: 'ReallyBigPictures.png', site: 'http://www.reallybigpictures.com' },
	{ name: 'SubPac', img: 'SubPac.png', site: 'http://www,thesubpac.com' },
	# { name: 'Trillby Games LLC', img: 'Trillby.png', site: 'http://www.trillbygames.com' },
	{ name: 'Side Effects Software', img: 'Houdini.png', site: 'http://www.sidefx.com/' },
	# { name: 'WhiteHawk Software', img: 'WhiteHawk.png', site: 'https://www.facebook.com/PrecisionFlight' },
	{ name: 'Greenlight VR', img: 'GreenlightVR.png', site: 'http://www.greenlightvr.com' },
	{ name: 'Shape Space VR', img: 'ShapeSpace.jpg', site: 'http://www,ShapeSpaceVR.com' },
	{ name: 'Meta', img: 'Meta.png', site: 'http://getmeta.com' },
	{ name: 'Fish Bowl VR', img: 'Fishbowl.png', site: 'http://www.fishbowlvr.com/' },
	{ name: 'OTOY, Inc.', img: 'Otoy.png', site: 'http://www.otoy.com', is_featured: true },
	# { name: 'NanoVR', img: 'NanoVR.png', site: 'http://nanovr.io' },
	# { name: 'Blended Web Media', img: 'BlendedWebMedia.png', site: 'http://blendedwebmedia.com' },
	# { name: 'Sonic VR', img: 'SonicVR.png', site: 'http://www.sonicvr.com' },
	{ name: 'Audeze', img: 'Audeze.png', site: 'http://www.audeze.com' },
	{ name: 'Specular Theory, Inc.', img: 'SpecularTheory.png', site: 'http://www.speculartheory.com' },
	{ name: 'VRecover', img: 'VRecover.png', site: 'http://www.vrecover.com' }
	# { name: 'SELVZ', img: '', site: 'http://www.selvz.com' }
])

speakers = Speaker.create([
	{ name: 'Duncan Trussell', img: 'DuncanTrussel.jpg', title: 'Host of the Duncan Trussell Family Hour Podcast, Comdeian, VR Evangelist' },
	{ name: 'Dave Taylor', img: 'DaveTaylor.jpg', title: 'Game Producer, Developer on Doom and Quake' },
	{ name: 'Jonnie Ross', img: 'JonnieRoss.jpg', title: 'Co-Founder at VRLA' },
	{ name: 'Mike Armstrong', img: 'MikeArmstrong.jpg', title: 'Founder & Developer at Riftmax' },
	{ name: 'Matthew Gratzner', img: 'MatthewGratzner.jpg', title: 'Director, Designer, VR, VFX & Co-Founder at NewDealStudios' },
	{ name: 'Alex Rosenfeld', img: 'AlexRosenfeld.jpg', title: 'Founder & CEO at Vrideo' },
	{ name: 'Brad Allen', img: 'BradAllen.jpg', title: 'Executive Chairman at NextVR' },
	{ name: 'Bruce Wooden', img: 'BruceWooden.jpg', title: 'Head of Development & Community Relations at AltspaceVR' },
	{ name: 'James Jensen', img: 'JamesJensen.jpg', title: 'CTO at The Void' },
	{ name: 'Mike Murdock', img: 'MikeMurdock.jpg', title: 'Co-Founder & Creative Director at Otherworld Interactive' },
	{ name: 'E McNeil', img: 'EMcNeil.jpg', title: 'Creator of Darknet' },
	{ name: 'Demetrius Wren', img: 'DemetriusWren.jpg', title: 'Film Maker' },
	{ name: 'Robert Hernandez', img: 'RobertHernandez.jpg', title: 'Associate Professor of Professional Practice at USC Annenberg' },
	{ name: 'Matthew Terndrup', img: 'MatthewTerndrup.jpg', title: 'VR Journalist' },
	{ name: 'Ivan Blaustein', img: 'IvanBlaustein.jpg', title: 'Director, Product Integration at VRCade' },
	{ name: 'Cris Miranda', img: 'CrisMiranda.jpg', title: 'Founder at EnterVR' },
	{ name: 'Christina Heller', img: 'ChristinaHeller.jpg', title: 'CEO at VR Playhouse' }
])

sponsors = Sponsor.create([
	{ name: 'Duncan Trussell', rank: 'Other', img: 'DuncanTrussellFH.png' },
	{ name: 'Next VR', rank: 'Diamond', img: 'NextVR.png' },
	{ name: 'Fast Start Studios', rank: 'Ruby', img: 'FastStart.png' },
	{ name: 'Voices of VR', rank: 'Media', img: 'VoicesOfVR.jpg' },
	{ name: 'Upload', rank: 'Media', img: 'Upload.png' },
	{ name: 'Qgits', rank: 'Media', img: 'Qgits.png' },
	{ name: 'Inner Rift', rank: 'Media', img: 'InnerRift.jpg' }
])


