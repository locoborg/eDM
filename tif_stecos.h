#ifndef __SCIMAGE_H__
#define __SCIMAGE_H__

typedef struct tagIMG
{
	int width;
	int height;
	int pitch;
	int size;	
	unsigned char *bitMap;
	
	unsigned short compression;
	unsigned short photometric;
	
} SCImage;

#ifdef __cplusplus
extern "C" {
#endif

int SCLoadTiff(char*, SCImage*);
int SCWriteTiff(char*, SCImage*);
int FreeImage(SCImage*);

#ifdef __cplusplus
}
#endif

#endif
