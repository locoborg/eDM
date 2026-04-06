// eDM.h : main header file for the eDM application
//

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"       // main symbols

/////////////////////////////////////////////////////////////////////////////
// CeDMApp:
// See eDM.cpp for the implementation of this class
//

class CeDMApp : public CWinApp
{
public:
	CeDMApp();

	// Attributes
	int m_nDocCount;	//number of documents
	CMultiDocTemplate *eDMTemplate;

	// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CeDMApp)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Operations
	BOOL PromptForFileName(CString& fileName, UINT nIDSTitle, 
		DWORD dwFlags, BOOL bOpenFileDialog, int* pType=NULL);
	int GetIndexFromType(int nDocType, BOOL bOpenFileDialog);
	int GetTypeFromIndex(int nIndex, BOOL bOpenFileDialog);
	CString GetExtFromType(int nDocType);
	CString GetFileTypes(BOOL bOpenFileDialog);
	BOOL GetWritableType(int nDocType);

// Implementation

	//{{AFX_MSG(CeDMApp)
	afx_msg void OnAppAbout();
	afx_msg void OnFileOpen() ;
	afx_msg void OnImageFromBitmap();
	afx_msg void OnCximageLoadjpegresource();
	afx_msg void OnCximageLoadiconresource();
	afx_msg void OnCximageLoadgifresource();
	afx_msg void OnCximageLoadpngresource();
	afx_msg void OnCximageLoadtifresource();
	afx_msg void OnWindowCloseall();
	afx_msg void OnCximageeDMsavemultipagetiff();
	afx_msg void OnCximageeDMsaveanimatedgif();
	afx_msg void OnCximageDownloadfromurl();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

extern CeDMApp theApp;

struct DocType
{
public:
	int nID;
	BOOL bRead;
	BOOL bWrite;
	const char* description;
	const char* ext;
};

/////////////////////////////////////////////////////////////////////////////
