
// define distinct values, counting from 1:
#define EXAMPLE_GREYSCALE_CHANNEL 1
#define EXAMPLE_ROTATION_CHANNEL 2
#define COLOR_CHANNEL 3
#define SHAKE_CHANNEL 4
#define SHAKE_HELPER_CHANNEL 5
#define TRAUMA_BLUR_CHANNEL 6
#define RENDER_DISTANCE_CHANNEL 7

/*
signature:
 ADD_MARKER(channel, green, alpha, op, rate)
*/
// append different marker definitions
#define LIST_MARKERS ADD_MARKER(EXAMPLE_GREYSCALE_CHANNEL, 253, 251, 1, 0.4) ADD_MARKER(EXAMPLE_ROTATION_CHANNEL, 251, 251, 0, 0.0) ADD_MARKER(EXAMPLE_ROTATION_CHANNEL, 252, 251, 4, 0.4)  ADD_MARKER(COLOR_CHANNEL, 250, 251, 0, 0.1) ADD_MARKER(SHAKE_CHANNEL, 249, 251, 1, 0.0001) ADD_MARKER(SHAKE_HELPER_CHANNEL, 248, 251, 1, 0.0001) ADD_MARKER(TRAUMA_BLUR_CHANNEL, 247, 251, 1, 0.5) ADD_MARKER(RENDER_DISTANCE_CHANNEL, 246, 251, 1, 0.1)

#define MARKER_RED 254



// Screen pixel that the marker ends up on if it uses channel k:
// Mapping follows structure that is like an inverted cantor pairing (but only producing coordinates with an even sum)
#define MARKER_POS(k) (ivec2(2*int(ceil(sqrt(float(k))) - 1.0),0) + (k - int((ceil(sqrt(float(k))) - 1.0)*(ceil(sqrt(float(k))) - 1.0)) - 1)*ivec2(-1, 1))
