
// define distinct values, counting from 1:
#define GRAY_CHANNEL 1
#define ROTATION_CHANNEL 2
#define GREEN_CHANNEL 3
#define BLUE_CHANNEL 4
#define SHAKE_CHANNEL 5
#define BLUR_CHANNEL 6
#define GOGGLES_CHANNEL 7

/*
signature:
 ADD_MARKER(channel, green, alpha, op, rate)
*/
// append different marker definitions
#define LIST_MARKERS ADD_MARKER(GRAY_CHANNEL, 253, 251, 1, 0.4) ADD_MARKER(ROTATION_CHANNEL, 252, 251, 0, 0.0) ADD_MARKER(GREEN_CHANNEL, 251, 251, 1, 1) ADD_MARKER(BLUE_CHANNEL, 250, 251, 1, 1) ADD_MARKER(SHAKE_CHANNEL, 249, 251, 1, 0.0001) ADD_MARKER(BLUR_CHANNEL, 248, 251, 1, 0.5) ADD_MARKER(GOGGLES_CHANNEL, 247, 251, 1, 2)


// GRAY_CHANNEL     : particle minecraft:entity_effect{color:[0.996078431372549, 0.9921568627450981, 1.0, 0.984313725490196],scale:1f}
// ROTATION_CHANNEL : particle minecraft:entity_effect{color:[0.996078431372549, 0.9882352941176471, 1.0, 0.984313725490196],scale:1f}
// GREEN_CHANNEL    : particle minecraft:entity_effect{color:[0.996078431372549, 0.984313725490196, 1.0, 0.984313725490196],scale:1f}
// BLUE_CHANNEL     : particle minecraft:entity_effect{color:[0.996078431372549, 0.9803921568627451, 1.0, 0.984313725490196],scale:1f}
// SHAKE_CHANNEL    : particle minecraft:entity_effect{color:[0.996078431372549, 0.9764705882352941, 1.0, 0.984313725490196],scale:1f}
// BLUR_CHANNEL     : particle minecraft:entity_effect{color:[0.996078431372549, 0.9725490196078431, 1.0, 0.984313725490196],scale:1f}
// GOGGLES_CHANNEL  : particle minecraft:entity_effect{color:[0.996078431372549, 0.9686274509803922, 1.0, 0.984313725490196],scale:1f}


#define MARKER_RED 254



// Screen pixel that the marker ends up on if it uses channel k:
// Mapping follows structure that is like an inverted cantor pairing (but only producing coordinates with an even sum)
#define MARKER_POS(k) (ivec2(2*int(ceil(sqrt(float(k))) - 1.0),0) + (k - int((ceil(sqrt(float(k))) - 1.0)*(ceil(sqrt(float(k))) - 1.0)) - 1)*ivec2(-1, 1))
