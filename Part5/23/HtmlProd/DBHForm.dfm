�
 TFORMPROD 0@  TPF0	TFormProdFormProdLeft� ToplWidth�Height|CaptionHtmlProcColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	PixelsPerInch`
TextHeight TLabelLabel3Left(Top|Width0HeightCaption
Continent:  TLabelLabel2Left(Top[Width#HeightCaptionCapital:  TLabelLabel1Left(Top8Width'HeightCaptionCountry:  TLabelLabel4LeftTop� WidthGHeightCaptionHTML Preview  TButtonBtnPrintAllLeft(TopZWidthYHeightCaption&Print TableTabOrder OnClickBtnPrintAllClick  TDBEditDBEdit3LefthTopxWidth� Height	DataField	Continent
DataSourceDataSource1TabOrder  TDBEditDBEdit2LefthTopVWidth� Height	DataFieldCapital
DataSourceDataSource1TabOrder  TDBEditDBEdit1LefthTop4Width� Height	DataFieldName
DataSourceDataSource1TabOrder  TDBNavigatorDBNavigator1Left Top Width�Height
DataSourceDataSource1VisibleButtonsnbFirstnbPriornbNextnbLastnbInsertnbEditnbPostnbCancel AlignalTopFlat	TabOrder  TMemoMemo1LeftTop� Width�Height� AnchorsakLeftakTopakRightakBottom 
ScrollBars
ssVerticalTabOrder  TButtonBtnSaveLeft(TopzWidthYHeightCaption
&Save HTMLEnabledTabOrderOnClickBtnSaveClick  	TCheckBox
CheckStartLeft(Top� WidthYHeightCaptionStart &BrowserChecked	State	cbCheckedTabOrder  TButtonBtnLineLeft(Top<WidthYHeightCaptionPrint &LineTabOrderOnClickBtnLineClick  TButtonBtnDemoLeft(Top WidthYHeightCaption
Demo &PageTabOrder	OnClickBtnDemoClick  TTableTable1Active	DatabaseNameDBDEMOS	TableName
COUNTRY.DBLeftTop0 TStringField
Table1Name	FieldNameNameSize  TStringFieldTable1Capital	FieldNameCapitalSize  TStringFieldTable1ContinentCustomConstraint*X = 'South America' OR X = 'North America'ConstraintErrorMessage(Country is not in the American ContinentDefaultExpression'South America'	FieldName	ContinentSize  TFloatField
Table1Area	FieldNameAreaDisplayFormat###,###,###  TFloatFieldTable1Population	FieldName
PopulationDisplayFormat###,###,###   TDataSourceDataSource1DataSetTable1LeftTop`  TSaveDialogSaveDialog1
DefaultExtHTMFilter*HTML file (*.htm)|*.htm|Any file (*.*)|*.*OptionsofOverwritePromptofPathMustExistofCreatePrompt Left  TPageProducerPageProducer1HTMLDoc.Strings<HTML><HEAD><TITLE>Producer Demo</TITLE></HEAD><BODY> <H1>Producer Demo</H1> <This is a demo of the page produced by the <b><#appname></b>!application on <b><#date></b>.<p><hr>.The prices in this catalog are valid until <b><#expiration days=21></b>.<p></BODY></HTML> 	OnHTMLTagPageProducer1HTMLTagLeft@Top�   TDataSetPageProducerDataSetPageProducer1HTMLDoc.Strings<HTML><HEAD><TITLE>Data for <#name></TITLE></HEAD><BODY>*<H1><CENTER>Data for <#name></CENTER></H1>Capital: <#capital><p>Continent: <#continent><p>Area: <#area><p>Population: <#population><p><HR>Last updated on <#date><br>,HTML file produced by the program <#program></BODY></HTML> 	OnHTMLTagDataSetPageProducer1HTMLTagDataSetTable1Left@Top�   TDataSetTableProducerDataSetTableProducer1Caption<h2>American Countries</h2>ColumnsBgColorSilver	FieldNameNameTitle.AlignhaLeftTitle.BgColorSilverTitle.CaptionCountry 	FieldNameCapital 	FieldName	Continent AlignhaRight	FieldNameArea AlignhaRight	FieldName
Population  Footer.Strings<hr><i>Produced by EmplProd</i></body></html> Header.Strings<html><head>(<title>DataSetTableProducer Demo</title></head><body>3<h1><center>DataSetTableProducer Demo</center></h1> MaxRows�DataSetTable1TableAttributes.BorderTableAttributes.CellPaddingOnFormatCellDataSetTableProducer1FormatCellLeft@Top    