unit Formulario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uTransporte;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  Veiculo : Transporte;
  Carro : Carro;
  Aviao : Aviao;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;


implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Carro := Carro.Create('Porsche 911');
  Carro.Move('100');
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Aviao := Aviao.Create('Boeing 747');
  Aviao.Move('2500');
  Aviao.Destrua;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Veiculo := Transporte.Create('Teste1');
  Veiculo.Move('metros');
  Veiculo.Destrua;
end;
end.
