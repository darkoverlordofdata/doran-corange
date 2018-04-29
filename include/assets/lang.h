#ifndef lang_h
#define lang_h

#include "data/dict.h"
#include "casset.h"

typedef struct {
  dict* map;
} lang;

lang* lang_load_file(const char* filename);
void lang_delete(lang* t);
char* lang_get(lang* t, char* id);

void set_language(asset_hndl t);
char* S(char* id);

// int SDL_RWreadline(SDL_RWops* file, char* buffer, int buffersize);
static int SDL_RWreadline(SDL_RWops* file, char* buffer, int buffersize) {
  
  char c;
  int status = 0;
  int i = 0;
  while(1) {
    
    status = SDL_RWread(file, &c, 1, 1);
    
    if (status == -1) return -1;
    if (i == buffersize-1) return -1;
    if (status == 0) break;
    
    buffer[i] = c;
    i++;
    
    if (c == '\n') {
      buffer[i] = '\0';
      return i;
    }
  }
  
  if(i > 0) {
    buffer[i] = '\0';
    return i;
  } else {
    return 0;
  }
  
}

#endif
