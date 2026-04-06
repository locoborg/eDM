#ifndef __SCBARC_H_
#define __SCBARC_H_

//#include <stecos/tif_stecos.h>
#include "tif_stecos.h"

#define SC_UNREGISTERED 	-500

#define WHITE_BARS	0x01
#define BLACK_BARS	0x02
#define UNKNOWN_BARS	0x03

#define HORIZONTAL		0x01
#define VERTICAL		0x02
#define ORIENTATION_BOTH	0x03

#define DEFAULT_INIT	0
#define USER_INIT 	1

/* codetypes */
/* 2-bar types*/
#define INDUSTRIAL2OF5		0x00000001
#define INVERTED2OF5		0x00000002
#define INTERLEAVED2OF5 	0x00000004
#define IATA2OF5		0x00000008
#define MATRIX2OF5		0x00000010
#define CODE32			0x00000020
#define CODE39			0x00000040
#define CODABAR			0x00000080
#define BCDMATRIX 		0x00000100
#define DATALOGIC2OF5		0x00000200

/* 4-bar types */
#define CODE128			0x00001000
#define EAN128			0x00002000
#define CODE93			0x00004000
#define EAN13			0x00008000
#define UPCA			0x00010000
#define EAN8			0x00020000
#define UPCE			0x00040000
#define ADD5			0x00080000
#define ADD2			0x00100000


typedef struct {
	
	/* corner coordinates of the barcode	*/
	int X1;
	int Y1;
	int X2;
	int Y2;
	int X3;
	int Y3;
	int X4;
	int Y4;

	/* skew angle in degree	*/
	int skew;

	/* flag if barcode is inverted - BLACK_BARS or WHITE_BARS	*/
	int barsColor;
	int checksum;
	unsigned short confidence;

	unsigned short codetype;
	char codename[30];
	char info[50];
	
} SC_Barcode;


typedef struct {

	/* search region, defaults are 0 = all image	*/
	int xLeftROI;
	int yUpROI;
	int xRightROI;
	int yDownROI;

	/* number of detected barcodes	*/
	int barcodesFound;

	/* maximal number of barcodes 	*/
	int maxBarcodes;

	/* color of the bars: BLACK_BARS, WHITE_BARS or UNKNOWN_BARS	*/
	unsigned short inkColor;

	unsigned short orientation;   	/* HORIZONTAL, VERTICAL, ORIENTATION_BOTH	*/
	unsigned short init;			/* !=0 -> initialization was perform	*/
	
	unsigned int searchForTypes;

	unsigned char registration[32];	
	SCImage *image;
	char message[200];  	/*error message */

} SC_BarcodeDetector;

/* functions */

#ifdef __cplusplus
extern "C" {
#endif

int	Initialize_SC_BarcodeDetector( SC_BarcodeDetector *bcd);
int   SC_FindBarcodes( SC_BarcodeDetector *scBarcDet, SCImage *image, SC_Barcode* scBarcArray);

#ifdef __cplusplus
}
#endif /* extern "C" */

#endif /* defined __SCBARC_H_ */
