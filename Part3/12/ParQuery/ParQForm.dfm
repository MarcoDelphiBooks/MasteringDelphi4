�
 TQUERYFORM 0�  TPF0
TQueryForm	QueryFormLeft>Top� Width�HeightCaptionParameterized QueryColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	Visible	OnCreate
FormCreate	OnDestroyFormDestroyPixelsPerInch`
TextHeight 	TSplitter	Splitter1Left� TopWidthHeight� CursorcrHSplit  TListBoxListBox1Left TopWidth� Height� AlignalLeft
ItemHeightTabOrder OnClickListBox1Click  TDBGridDBGrid1Left� TopWidth7Height� AlignalClient
DataSourceDataSource1TabOrderTitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclBlackTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.Style   TDBNavigatorDBNavigator1Left Top Width�Height
DataSourceDataSource1AlignalTopTabOrder  TDataSourceDataSource1DataSetQuery1Left Top@  TQueryQuery1
BeforePostQuery1BeforePostDatabaseNameDBDEMOSRequestLive	SQL.Stringsselect * from Country where Continent = :Continent Left Top	ParamDataDataTypeftStringName	Continent	ParamType	ptUnknownValueNorth America    TQueryQuery2DatabaseNameDBDEMOSSQL.Stringsselect distinct Continent from Country Left Topx	ParamData    