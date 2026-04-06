// eDMView.h : interface of the CeDMView class
//
/////////////////////////////////////////////////////////////////////////////
#define CXIMAGE_eDM_SELECT 1

class CImgList;
class CeDMDoc;
class CxImage;

class CeDMView : public CScrollView
{
protected: // create from serialization only
	CeDMView();
	DECLARE_DYNCREATE(CeDMView)

// Attributes
public:
	CeDMDoc* GetDocument();

// Operations
public:

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CeDMView)
	public:
	virtual void OnDraw(CDC* pDC);  // overridden to draw this view
	virtual BOOL PreCreateWindow(CREATESTRUCT& cs);
	protected:
	virtual BOOL OnPreparePrinting(CPrintInfo* pInfo);
	virtual void OnBeginPrinting(CDC* pDC, CPrintInfo* pInfo);
	virtual void OnEndPrinting(CDC* pDC, CPrintInfo* pInfo);
	virtual void OnUpdate(CView* pSender, LPARAM lHint, CObject* pHint);
	virtual void OnActivateView(BOOL bActivate, CView* pActivateView, CView* pDeactiveView);
	//}}AFX_VIRTUAL

// Implementation
public:
	void GetImageXY(CeDMDoc *pDoc, CxImage *ima, long *x, long *y);
	virtual ~CeDMView();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

#if CXIMAGE_eDM_SELECT
	long m_SelCount;
	long m_SelShift;
	void DrawSelection();
	CPoint m_RefPoint,m_RefScroll;
#endif
protected:
	CBrush m_brHatch;
	CImgList *imgDlg;

// Generated message map functions
protected:
	//{{AFX_MSG(CeDMView)
	afx_msg void OnMouseMove(UINT nFlags, CPoint point);
	afx_msg BOOL OnEraseBkgnd(CDC* pDC);
	afx_msg void OnSetFocus(CWnd* pOldWnd);
	afx_msg void OnLButtonDown(UINT nFlags, CPoint point);
	afx_msg void OnContextMenu(CWnd* pWnd, CPoint point);
	afx_msg void OnLButtonUp(UINT nFlags, CPoint point);
	afx_msg void OnTimer(UINT nIDEvent);
	afx_msg void OnDestroy();
	afx_msg void OnChar(UINT nChar, UINT nRepCnt, UINT nFlags);
	afx_msg void OnRButtonDown(UINT nFlags, CPoint point);
	afx_msg void OnVScroll(UINT nSBCode, UINT nPos, CScrollBar* pScrollBar);
	afx_msg void OnHScroll(UINT nSBCode, UINT nPos, CScrollBar* pScrollBar);
	//}}AFX_MSG
	afx_msg LRESULT OnNewImage(WPARAM wParam, LPARAM lParam);
	afx_msg LRESULT OnNewProgress(WPARAM wParam, LPARAM lParam);
	DECLARE_MESSAGE_MAP()
};

#ifndef _DEBUG  // debug version in eDMView.cpp
inline CeDMDoc* CeDMView::GetDocument()
   { return (CeDMDoc*)m_pDocument; }
#endif

/////////////////////////////////////////////////////////////////////////////
