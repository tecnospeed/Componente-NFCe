unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, NFCeGovX_TLB, NFCeX_TLB;

type
  TForm1 = class(TForm)
    btnRunConverter: TButton;
    mmoSaida: TMemo;
    btnEncode: TButton;
    btnDecode: TButton;
    procedure btnRunConverterClick(Sender: TObject);
    procedure btnEncodeClick(Sender: TObject);
    procedure btnDecodeClick(Sender: TObject);
  private
    { Private declarations }
    NFCeGovX: TspdGovX;
    NFCeX: TspdNFCeX;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  AxCtrls;

{$R *.dfm}

procedure TForm1.btnRunConverterClick(Sender: TObject);
var
  _conv: TspdGovX;
  _certificados: WideString;
begin
  _conv:= TspdGovX.Create(nil);
  try
    mmoSaida.Lines.Clear;
    mmoSaida.Lines.Add(_conv.Version);
  finally
    _conv.Free;
  end;
end;

procedure TForm1.btnDecodeClick(Sender: TObject);
var
 _conv2: TspdNFCeX;
 _decoded: string;
begin
   _conv2:= TspdNFCeX.Create(nil);
   try
     _decoded := _conv2.DecodeBase64(mmoSaida.Lines.Text);
     mmoSaida.Lines.Clear;
     mmoSaida.Lines.Add(_decoded);
   finally
     _conv2.Free;
   end;
end;

procedure TForm1.btnEncodeClick(Sender: TObject);
var
 _conv2: TspdNFCeX;
 _encoded: string;
begin
   _conv2:= TspdNFCeX.Create(nil);
   try
     _encoded := _conv2.EncodeBase64(mmoSaida.Lines.Text);
     mmoSaida.Lines.Clear;
     mmoSaida.Lines.Add(_encoded);
   finally
     _conv2.Free;
   end;
end;

end.
