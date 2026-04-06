// ImgList.cpp : implementation file
//

#include "stdafx.h"
#include "eDM.h"
#include "eDMView.h"
#include "eDMDoc.h"
#include "ImgList.h"


#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CImgList dialog


CImgList::CImgList(CWnd* pParent /*=NULL*/)
	: CDialog(CImgList::IDD, pParent)
{
	//{{AFX_DATA_INIT(CImgList)
		// NOTE: the ClassWizard will add member initialization here
	//}}AFX_DATA_INIT
}


void CImgList::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CImgList)
	DDX_Control(pDX, IDC_LIST1, m_imgList);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CImgList, CDialog)
	//{{AFX_MSG_MAP(CImgList)
	ON_WM_SIZE()
	ON_NOTIFY(NM_DBLCLK, IDC_LIST1, OnDblclkImgList)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CImgList message handlers

void CImgList::OnSize(UINT nType, int cx, int cy) 
{
	CDialog::OnSize(nType, cx, cy);
	
	// TODO: Add your message handler code here
	if(m_imgList) m_imgList.MoveWindow(1,1,cx-1,cy-1);
}

void CImgList::OnOK() 
{
	// TODO: Add extra validation here
	
	//CDialog::OnOK();
}

void CImgList::OnDblclkImgList(NMHDR* pNMHDR, LRESULT* pResult) 
{
	// TODO: Add your control notification handler code here
	CeDMDoc* pDoc = ((CeDMView*)GetParent())->GetDocument();
	if(pDoc){
		POSITION stPos=m_imgList.GetFirstSelectedItemPosition();
		int nSelImg=m_imgList.GetNextSelectedItem(stPos);
		if(nSelImg>=0)
			pDoc->OnChangeImage(nSelImg);
	}
	*pResult = 0;
}
