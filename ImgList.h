#if !defined(AFX_IMGLIST_H__7977B707_6E64_449C_A696_0E68800BC454__INCLUDED_)
#define AFX_IMGLIST_H__7977B707_6E64_449C_A696_0E68800BC454__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// ImgList.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CImgList dialog

class CImgList : public CDialog
{
// Construction
public:
	CImgList(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CImgList)
	enum { IDD = IDD_IMGLIST };
	CListCtrl	m_imgList;
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CImgList)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CImgList)
	afx_msg void OnSize(UINT nType, int cx, int cy);
	virtual void OnOK();
	afx_msg void OnDblclkImgList(NMHDR* pNMHDR, LRESULT* pResult);
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_IMGLIST_H__7977B707_6E64_449C_A696_0E68800BC454__INCLUDED_)
