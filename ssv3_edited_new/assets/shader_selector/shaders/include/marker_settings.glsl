
// define distinct values, counting from 1:
#define GRAY_CHANNEL 1
#define ROTATION_CHANNEL 2
#define GREEN_CHANNEL 3
#define BLUE_CHANNEL 4
#define SHAKE_CHANNEL 5
#define BLUR_CHANNEL 6
#define GOGGLES_CHANNEL 7
#define BRIGHTNESS_CHANNEL 8
#define SATURATION_CHANNEL 9
#define TRAIL_CHANNEL 10
#define GASMASK_CHANNEL 11
#define ZOOM_CHANNEL 12
#define MOTIONBLUR_CHANNEL 13


/*
signature:
 ADD_MARKER(channel, green, alpha, op, rate)
*/
// append different marker definitions
#define LIST_MARKERS ADD_MARKER(GRAY_CHANNEL, 253, 251, 1, 0.4) ADD_MARKER(ROTATION_CHANNEL, 252, 251, 0, 0.0) ADD_MARKER(GREEN_CHANNEL, 251, 251, 1, 1) ADD_MARKER(BLUE_CHANNEL, 250, 251, 1, 1) ADD_MARKER(SHAKE_CHANNEL, 249, 251, 1, 0.0001) ADD_MARKER(BLUR_CHANNEL, 248, 251, 1, 0.5) ADD_MARKER(GOGGLES_CHANNEL, 247, 251, 1, 10) ADD_MARKER(BRIGHTNESS_CHANNEL, 246, 251, 1, 2) ADD_MARKER(SATURATION_CHANNEL, 245, 251, 1, 2) ADD_MARKER(TRAIL_CHANNEL, 244, 251, 1, 0.001) ADD_MARKER(GASMASK_CHANNEL, 243, 251, 1, 10) ADD_MARKER(ZOOM_CHANNEL, 242, 251, 1, 0.01) ADD_MARKER(MOTIONBLUR_CHANNEL, 241, 251, 1, 4)


// GRAY_CHANNEL       : particle minecraft:entity_effect{color:[0.996078431372549, 0.9921568627450981, 1.0, 0.984313725490196],scale:1f}
// ROTATION_CHANNEL   : particle minecraft:entity_effect{color:[0.996078431372549, 0.9882352941176471, 1.0, 0.984313725490196],scale:1f}
// GREEN_CHANNEL      : particle minecraft:entity_effect{color:[0.996078431372549, 0.984313725490196, 1.0, 0.984313725490196],scale:1f}
// BLUE_CHANNEL       : particle minecraft:entity_effect{color:[0.996078431372549, 0.9803921568627451, 1.0, 0.984313725490196],scale:1f}
// SHAKE_CHANNEL      : particle minecraft:entity_effect{color:[0.996078431372549, 0.9764705882352941, 1.0, 0.984313725490196],scale:1f}
// BLUR_CHANNEL       : particle minecraft:entity_effect{color:[0.996078431372549, 0.9725490196078431, 1.0, 0.984313725490196],scale:1f}
// GOGGLES_CHANNEL    : particle minecraft:entity_effect{color:[0.996078431372549, 0.9686274509803922, 1.0, 0.984313725490196],scale:1f}
// BRIGHTNESS_CHANNEL : particle minecraft:entity_effect{color:[0.996078431372549, 0.9647058823529412, 1.0, 0.984313725490196],scale:1f}
// SATURATION_CHANNEL : particle minecraft:entity_effect{color:[0.996078431372549, 0.9607843137254902, 1.0, 0.984313725490196],scale:1f}
// TRAIL_CHANNEL      : particle minecraft:entity_effect{color:[0.996078431372549, 0.9568627450980393, 1.0, 0.984313725490196],scale:1f}
// ZOOM_CHANNEL       : particle minecraft:entity_effect{color:[0.996078431372549, 0.9490196078431372, 1.0, 0.984313725490196],scale:1f}
// MOTIONBLUR_CHANNEL : particle minecraft:entity_effect{color:[0.996078431372549, 0.9450980392156862, 1.0, 0.984313725490196],scale:1f}


#define MARKER_RED 254



// Screen pixel that the marker ends up on if it uses channel k:
// Mapping follows structure that is like an inverted cantor pairing (but only producing coordinates with an even sum)
#define MARKER_POS(k) (ivec2(2*int(ceil(sqrt(float(k))) - 1.0),0) + (k - int((ceil(sqrt(float(k))) - 1.0)*(ceil(sqrt(float(k))) - 1.0)) - 1)*ivec2(-1, 1))
