unit CountWm;

interface

uses
  Windows, SysUtils, HTTPApp;

type
  TWebModule1 = class(TWebModule)
    procedure WebModule1WebActionItem1Action(Sender: TObject;
      Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
  end;

var
  WebModule1: TWebModule1;

implementation

{$R *.DFM}

uses
  Graphics, Jpeg, ExtCtrls, Classes;

procedure TWebModule1.WebModule1WebActionItem1Action(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
var
  Image: TImage;
  nHit: Integer;
  LogFile: Text;
  LogFileName: string;
  Jpeg1: TJpegImage;
  Stream: TMemoryStream;
begin
  LogFileName := 'WebCont.log';
  System.Assign (LogFile, LogFileName);
  try
    // read if the file exists
    if FileExists (LogFileName) then
    begin
      Reset (LogFile);
      Readln (LogFile, nHit);
      Inc (nHit);
    end
    else
      nHit := 0;
    // saves the new data
    Rewrite (LogFile);
    Writeln (LogFile, nHit);
  finally
    Close (LogFile);
  end;
//  Response.Content := IntToStr (nHit);

  // create a bitmap in memory
  Image := TImage.Create (nil);
  try
    Image.Picture.Bitmap.Width := 120;
    Image.Picture.Bitmap.Height := 25;
    // draw the digits
    Image.Canvas.Font.Name := 'Arial';
    Image.Canvas.Font.Size := 14;
    Image.Canvas.Font.Color := RGB (255, 127, 0);
    Image.Canvas.Font.Style := [fsBold];
    Image.Canvas.TextOut (1, 1, 'Hits: ' +
      FormatFloat ('###,###,###', Int (nHit)));
    // convert to JPEG and output
    Jpeg1 := TJpegImage.Create;
    try
      Jpeg1.CompressionQuality := 50;
      Jpeg1.Assign(Image.Picture.Bitmap);
      Stream := TMemoryStream.Create;
      try
        Jpeg1.SaveToStream (Stream);
        Stream.Position := 0;
        Response.ContentStream := Stream;
        Response.ContentType := 'image/jpeg';
        Response.SendResponse;
      finally
        Stream.Free;
      end;
    finally
      Jpeg1.Free;
    end;
  finally
    Image.Free;
  end;
end;

end.
