# Microsoft Developer Studio Generated NMAKE File, Format Version 4.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Application" 0x0101

!IF "$(CFG)" == ""
CFG=eDM - Win32 Debug
!MESSAGE No configuration specified.  Defaulting to eDM - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "eDM - Win32 Release" && "$(CFG)" != "eDM - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE on this makefile
!MESSAGE by defining the macro CFG on the command line.  For example:
!MESSAGE 
!MESSAGE NMAKE /f "eDM.mak" CFG="eDM - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "eDM - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "eDM - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 
################################################################################
# Begin Project
# PROP Target_Last_Scanned "eDM - Win32 Debug"
CPP=cl.exe
RSC=rc.exe
MTL=mktyplib.exe

!IF  "$(CFG)" == "eDM - Win32 Release"

# PROP BASE Use_MFC 6
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 6
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Target_Dir ""
OUTDIR=.\Release
INTDIR=.\Release

ALL : "$(OUTDIR)\eDM.exe"

CLEAN : 
	-@erase ".\Release\eDM.exe"
	-@erase ".\Release\ChildFrm.obj"
	-@erase ".\Release\eDM.pch"
	-@erase ".\Release\eDMView.obj"
	-@erase ".\Release\StdAfx.obj"
	-@erase ".\Release\eDMDoc.obj"
	-@erase ".\Release\MainFrm.obj"
	-@erase ".\Release\eDM.obj"
	-@erase ".\Release\eDM.res"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

# ADD BASE CPP /nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Yu"stdafx.h" /c
# ADD CPP /nologo /MD /W3 /GX /O2 /I "..\cimage" /I "..\jpeg" /I "..\zlib" /I "..\png" /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Yu"stdafx.h" /c
CPP_PROJ=/nologo /MD /W3 /GX /O2 /I "..\cimage" /I "..\jpeg" /I "..\zlib" /I\
 "..\png" /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS"\
 /Fp"$(INTDIR)/eDM.pch" /Yu"stdafx.h" /Fo"$(INTDIR)/" /c 
CPP_OBJS=.\Release/
CPP_SBRS=
# ADD BASE MTL /nologo /D "NDEBUG" /win32
# ADD MTL /nologo /D "NDEBUG" /win32
MTL_PROJ=/nologo /D "NDEBUG" /win32 
# ADD BASE RSC /l 0x809 /d "NDEBUG" /d "_AFXDLL"
# ADD RSC /l 0x809 /d "NDEBUG" /d "_AFXDLL"
RSC_PROJ=/l 0x809 /fo"$(INTDIR)/eDM.res" /d "NDEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/eDM.bsc" 
BSC32_SBRS=
LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:windows /machine:I386
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib winmm.lib ../png/Release/png.lib ../jpeg/Release/jpeg.lib ../zlib/Release/zlib.lib ../cimage/Release/cimage.lib /nologo /subsystem:windows /machine:I386
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib\
 advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib winmm.lib\
 ../png/Release/png.lib ../jpeg/Release/jpeg.lib ../zlib/Release/zlib.lib\
 ../cimage/Release/cimage.lib /nologo /subsystem:windows /incremental:no\
 /pdb:"$(OUTDIR)/eDM.pdb" /machine:I386 /out:"$(OUTDIR)/eDM.exe" 
LINK32_OBJS= \
	"$(INTDIR)/ChildFrm.obj" \
	"$(INTDIR)/eDMView.obj" \
	"$(INTDIR)/StdAfx.obj" \
	"$(INTDIR)/eDMDoc.obj" \
	"$(INTDIR)/MainFrm.obj" \
	"$(INTDIR)/eDM.obj" \
	"$(INTDIR)/eDM.res"

"$(OUTDIR)\eDM.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "eDM - Win32 Debug"

# PROP BASE Use_MFC 6
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 6
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Target_Dir ""
OUTDIR=.\Debug
INTDIR=.\Debug

ALL : "$(OUTDIR)\eDM.exe"

CLEAN : 
	-@erase ".\Debug\vc40.pdb"
	-@erase ".\Debug\eDM.pch"
	-@erase ".\Debug\vc40.idb"
	-@erase ".\Debug\eDM.exe"
	-@erase ".\Debug\ChildFrm.obj"
	-@erase ".\Debug\MainFrm.obj"
	-@erase ".\Debug\eDM.obj"
	-@erase ".\Debug\eDMDoc.obj"
	-@erase ".\Debug\eDMView.obj"
	-@erase ".\Debug\StdAfx.obj"
	-@erase ".\Debug\eDM.res"
	-@erase ".\Debug\eDM.ilk"
	-@erase ".\Debug\eDM.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

# ADD BASE CPP /nologo /MDd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Yu"stdafx.h" /c
# ADD CPP /nologo /MDd /W3 /Gm /GX /Zi /Od /I "..\cimage" /I "..\jpeg" /I "..\zlib" /I "..\png" /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Yu"stdafx.h" /c
CPP_PROJ=/nologo /MDd /W3 /Gm /GX /Zi /Od /I "..\cimage" /I "..\jpeg" /I\
 "..\zlib" /I "..\png" /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D\
 "_MBCS" /Fp"$(INTDIR)/eDM.pch" /Yu"stdafx.h" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/"\
 /c 
CPP_OBJS=.\Debug/
CPP_SBRS=
# ADD BASE MTL /nologo /D "_DEBUG" /win32
# ADD MTL /nologo /D "_DEBUG" /win32
MTL_PROJ=/nologo /D "_DEBUG" /win32 
# ADD BASE RSC /l 0x809 /d "_DEBUG" /d "_AFXDLL"
# ADD RSC /l 0x809 /d "_DEBUG" /d "_AFXDLL"
RSC_PROJ=/l 0x809 /fo"$(INTDIR)/eDM.res" /d "_DEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/eDM.bsc" 
BSC32_SBRS=
LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:windows /debug /machine:I386
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib winmm.lib ../png/Debug/png.lib ../jpeg/Debug/jpeg.lib ../zlib/Debug/zlib.lib ../cimage/Debug/cimage.lib /nologo /subsystem:windows /debug /machine:I386
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib\
 advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib winmm.lib\
 ../png/Debug/png.lib ../jpeg/Debug/jpeg.lib ../zlib/Debug/zlib.lib\
 ../cimage/Debug/cimage.lib /nologo /subsystem:windows /incremental:yes\
 /pdb:"$(OUTDIR)/eDM.pdb" /debug /machine:I386 /out:"$(OUTDIR)/eDM.exe" 
LINK32_OBJS= \
	"$(INTDIR)/ChildFrm.obj" \
	"$(INTDIR)/MainFrm.obj" \
	"$(INTDIR)/eDM.obj" \
	"$(INTDIR)/eDMDoc.obj" \
	"$(INTDIR)/eDMView.obj" \
	"$(INTDIR)/StdAfx.obj" \
	"$(INTDIR)/eDM.res"

"$(OUTDIR)\eDM.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 

.c{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.c{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

################################################################################
# Begin Target

# Name "eDM - Win32 Release"
# Name "eDM - Win32 Debug"

!IF  "$(CFG)" == "eDM - Win32 Release"

!ELSEIF  "$(CFG)" == "eDM - Win32 Debug"

!ENDIF 

################################################################################
# Begin Source File

SOURCE=.\ReadMe.txt

!IF  "$(CFG)" == "eDM - Win32 Release"

!ELSEIF  "$(CFG)" == "eDM - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\eDM.cpp

!IF  "$(CFG)" == "eDM - Win32 Release"

DEP_CPP_eDM_=\
	".\StdAfx.h"\
	".\eDM.h"\
	".\MainFrm.h"\
	".\ChildFrm.h"\
	".\eDMDoc.h"\
	".\eDMView.h"\
	".\..\cimage\cimage.h"\
	".\..\cimage\cimageb.h"\
	".\..\cimage\stdafx.h"\
	".\..\cimage\cmap.h"\
	
NODEP_CPP_eDM_=\
	".\nIndex"\
	

"$(INTDIR)\eDM.obj" : $(SOURCE) $(DEP_CPP_eDM_) "$(INTDIR)"\
 "$(INTDIR)\eDM.pch"


!ELSEIF  "$(CFG)" == "eDM - Win32 Debug"

DEP_CPP_eDM_=\
	".\StdAfx.h"\
	".\eDM.h"\
	".\MainFrm.h"\
	".\ChildFrm.h"\
	".\eDMDoc.h"\
	".\eDMView.h"\
	".\..\cimage\cimage.h"\
	".\..\cimage\cimageb.h"\
	".\..\cimage\stdafx.h"\
	".\..\cimage\cmap.h"\
	

"$(INTDIR)\eDM.obj" : $(SOURCE) $(DEP_CPP_eDM_) "$(INTDIR)"\
 "$(INTDIR)\eDM.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\StdAfx.cpp
DEP_CPP_STDAF=\
	".\StdAfx.h"\
	

!IF  "$(CFG)" == "eDM - Win32 Release"

# ADD CPP /Yc"stdafx.h"

BuildCmds= \
	$(CPP) /nologo /MD /W3 /GX /O2 /I "..\cimage" /I "..\jpeg" /I "..\zlib" /I\
 "..\png" /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS"\
 /Fp"$(INTDIR)/eDM.pch" /Yc"stdafx.h" /Fo"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\StdAfx.obj" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

"$(INTDIR)\eDM.pch" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "eDM - Win32 Debug"

# ADD CPP /Yc"stdafx.h"

BuildCmds= \
	$(CPP) /nologo /MDd /W3 /Gm /GX /Zi /Od /I "..\cimage" /I "..\jpeg" /I\
 "..\zlib" /I "..\png" /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D\
 "_MBCS" /Fp"$(INTDIR)/eDM.pch" /Yc"stdafx.h" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/"\
 /c $(SOURCE) \
	

"$(INTDIR)\StdAfx.obj" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

"$(INTDIR)\eDM.pch" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\MainFrm.cpp
DEP_CPP_MAINF=\
	".\StdAfx.h"\
	".\eDM.h"\
	".\MainFrm.h"\
	

"$(INTDIR)\MainFrm.obj" : $(SOURCE) $(DEP_CPP_MAINF) "$(INTDIR)"\
 "$(INTDIR)\eDM.pch"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\ChildFrm.cpp
DEP_CPP_CHILD=\
	".\StdAfx.h"\
	".\eDM.h"\
	".\ChildFrm.h"\
	

"$(INTDIR)\ChildFrm.obj" : $(SOURCE) $(DEP_CPP_CHILD) "$(INTDIR)"\
 "$(INTDIR)\eDM.pch"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\eDMDoc.cpp

!IF  "$(CFG)" == "eDM - Win32 Release"

DEP_CPP_eDMD=\
	".\StdAfx.h"\
	".\eDM.h"\
	".\eDMDoc.h"\
	".\..\cimage\cimage.h"\
	".\..\cimage\cimageb.h"\
	".\..\cimage\stdafx.h"\
	".\..\cimage\cmap.h"\
	
NODEP_CPP_eDMD=\
	".\return"\
	

"$(INTDIR)\eDMDoc.obj" : $(SOURCE) $(DEP_CPP_eDMD) "$(INTDIR)"\
 "$(INTDIR)\eDM.pch"


!ELSEIF  "$(CFG)" == "eDM - Win32 Debug"

DEP_CPP_eDMD=\
	".\StdAfx.h"\
	".\eDM.h"\
	".\eDMDoc.h"\
	".\..\cimage\cimage.h"\
	".\..\cimage\cimageb.h"\
	".\..\cimage\stdafx.h"\
	".\..\cimage\cmap.h"\
	

"$(INTDIR)\eDMDoc.obj" : $(SOURCE) $(DEP_CPP_eDMD) "$(INTDIR)"\
 "$(INTDIR)\eDM.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\eDMView.cpp
DEP_CPP_eDMV=\
	".\StdAfx.h"\
	".\..\cimage\cimage.h"\
	".\MainFrm.h"\
	".\eDM.h"\
	".\eDMDoc.h"\
	".\eDMView.h"\
	".\..\cimage\cimageb.h"\
	".\..\cimage\stdafx.h"\
	".\..\cimage\cmap.h"\
	

"$(INTDIR)\eDMView.obj" : $(SOURCE) $(DEP_CPP_eDMV) "$(INTDIR)"\
 "$(INTDIR)\eDM.pch"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\eDM.rc
DEP_RSC_eDM_R=\
	".\res\eDM.ico"\
	".\res\eDMDoc.ico"\
	".\res\Toolbar.bmp"\
	".\res\eDM.rc2"\
	

"$(INTDIR)\eDM.res" : $(SOURCE) $(DEP_RSC_eDM_R) "$(INTDIR)"
   $(RSC) $(RSC_PROJ) $(SOURCE)


# End Source File
# End Target
# End Project
################################################################################
