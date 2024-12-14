///////////////////////////////////////////////////////
// Defines for Hogs (= PigsPeople), just a rolf race //
///////////////////////////////////////////////////////


// see code/__DEFINES/mobs.dm
#define SPECIES_HOG "hog"
//#define BUTT_SPRITE_HOG "hog" // TODO

// see code/controllers/subsystem/sprite_accessories.dm
#define DEFAULT_SPRITE_LIST "default_sprites"

// see code/__DEFINES/DNA.dm
#define DNA_HOG_EARS_BLOCK DNA_FEATURE_BLOCKS + 1
#define DNA_HOG_SNOUT_BLOCK DNA_FEATURE_BLOCKS + 2
#define DNA_HOG_MARKINGS_BLOCK DNA_FEATURE_BLOCKS + 3

// ALL count dna features for hogs, main define with TG DNA is DNA_FEATURE_BLOCKS, not touched
#define DNA_MODULAR_BLOCKS_COUNT 3


// see code/__DEFINES/cleaning.dm
#define FOOTPRINT_SPRITE_HOOVES "hooves"

// see code/__DEFINES/is_helpers.dm
#define ishog(A) (is_species(A, /datum/species/hog))
