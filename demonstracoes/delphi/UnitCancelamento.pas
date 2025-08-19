unit UnitCancelamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, UnitDemonstracao;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    lblChave: TLabel;
    edtChaveCanc: TEdit;
    lblProtocoloCanc: TLabel;
    edtProtocoloCanc: TEdit;
    edtJustificativaCanc: TEdit;
    lblJustificativa: TLabel;
    edtDatahora: TEdit;
    lbDatahora: TLabel;
    cbbSequenciaCanc: TComboBox;
    lblSequencia: TLabel;
    cbbFusoHorario: TComboBox;
    lblFuso: TLabel;
    btnDataHora: TButton;
    mmoXmlCanc: TMemo;
    btnEnviarCancelamento: TButton;
    procedure btnDataHoraClick(Sender: TObject);
    procedure btnEnviarCancelamentoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btnDataHoraClick(Sender: TObject);
begin
edtDatahora.Text :=  FormatDateTime('YYYY-MM-DD"T"HH:NN:SS', Now);

end;

procedure TForm2.btnEnviarCancelamentoClick(Sender: TObject);
begin
  mmoXmlCanc.Text :=  Form1.NFCe.CancelarNF(edtChaveCanc.Text,edtProtocoloCanc.Text, edtJustificativaCanc.Text, edtDatahora.Text, cbbSequenciaCanc.ItemIndex,cbbFusoHorario.Text) ;
end;

end.

