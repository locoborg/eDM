#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>

#include "tif_stecos.h"
#include "readpng.h"
#include "barcode.h"

int main(int argc, char** argv)
{
	int ret;
	
	SCImage			scanImg;
	SC_BarcodeDetector 	barScanner;
	SC_Barcode 		barCodes[50];
	int			iNumCodes;

		
	if(argc != 2)
	{
		fprintf( stderr, "usage: readbar filename.[tif|png]");
		exit(1);
	}
	
	if( ( strstr(argv[1], ".png" ) != NULL) || ( strstr(argv[1], ".PNG" ) != NULL) )
		ret =  SCLoadPNG(argv[1], &scanImg);
	else if( ( strstr(argv[1], ".tif" ) != NULL ) || ( strstr(argv[1], ".TIF" ) != NULL ) )
		ret =  SCLoadTiff(argv[1], &scanImg);
	else
	{
		fprintf( stderr, "Unknown image type");
		return -1;
	}

	if( ret)
	{
		fprintf( stderr, "Error while reading %s\n", argv[1] );
		return -1;
	}	
	
	Initialize_SC_BarcodeDetector(&barScanner);	

	barScanner.searchForTypes = 0xffffffff;
	barScanner.maxBarcodes = 50;
	barScanner.inkColor = UNKNOWN_BARS; 
	barScanner.orientation = ORIENTATION_BOTH;
	barScanner.init = 1; 
	barScanner.image = &scanImg;

	barScanner.xLeftROI = 0;
	barScanner.yUpROI = 0;
	barScanner.xRightROI = scanImg.width;
	barScanner.yDownROI = scanImg.height;
	strcpy( barScanner.registration, "12h-785-2GS-7rs") ; /* here goes your registration code */
				
	ret = SC_FindBarcodes(&barScanner, &scanImg, barCodes);
	if( ret)
	{
		fprintf( stdout, "%s\n", barScanner.message );
		return -1;
	}
	
	
	for(iNumCodes = 0; iNumCodes < barScanner.barcodesFound; iNumCodes++)
	{
		fprintf( stdout, "%s -> %s\n", barCodes[iNumCodes].codename, barCodes[iNumCodes].info);
	}
		
	return 0;
}
