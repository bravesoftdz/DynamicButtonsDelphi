unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    SpeedButton1: TSpeedButton;
    Panel1: TPanel;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;
  Botoes : array of TButton;
  altura,largura :integer;
  index : integer;


implementation

{$R *.dfm}

procedure TfrmPrincipal.SpeedButton1Click(Sender: TObject);
begin
  if((altura + 210) >= Panel1.Height) then
  begin
    Panel1.Height := Panel1.Height + 110;
    frmPrincipal.Height := frmPrincipal.Height + 110;
  end;
  if((altura + 210) >= frmPrincipal.VertScrollBar.Range) then
  begin
    frmPrincipal.VertScrollBar.Range := frmPrincipal.VertScrollBar.Range + 110;
  end;
   Botoes[index] := TButton.Create(Application);
   Botoes[index].Parent := Panel1;
   Botoes[index].name:='btnBotao'+inttostr(index);
   Botoes[index].Width := 100;
   Botoes[index].Height := 100;
   Botoes[index].Caption:='Bot�o '+inttostr(index);
   Botoes[index].Left := largura;
   Botoes[index].Top := altura;
   largura := largura + 110;
   inc(index);
   if((largura + 110) >= Panel1.Width) then
   begin
     altura := altura + 110 ;
     largura := 10;
   end;
   SetLength(Botoes,index + 1);

end;

initialization
  index:= 0;
  setLength(Botoes,1);
  largura :=10;
  altura := 10;
end.
