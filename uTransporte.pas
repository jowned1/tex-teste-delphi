unit uTransporte;

interface

uses
Forms, Dialogs, Classes, Controls, StdCtrls, Messages;

type Transporte = class
 Public
 nome : string;
 metros : string;

 Constructor Create(nome : String);

  procedure Move(metros : string);

  function getMove : string;
  function getNome : string;

  destructor Destrua;
end;

type Carro = class(Transporte)
  Public
  Constructor Create(nome : string); overload;
  procedure Move(metros : string); overload;
end;

type Aviao = class(Transporte)
  Public
  Constructor Create(nome : string); overload;
  procedure Move(metros : string); overload;
end;

implementation

constructor Transporte.Create(nome : string);
begin
  self.nome := nome;
  metros := 'metros';
end;

constructor Carro.Create(nome: string);
begin
  self.nome := nome;
end;

constructor Aviao.Create(nome: string);
begin
  self.nome := nome;
end;

destructor Transporte.Destrua;
begin
end;

function Transporte.getMove: string;
begin
  result := metros;
end;

function Transporte.getNome: string;
begin
  result := nome;
end;

procedure Transporte.Move(metros: string);
begin
 metros := metros;
 ShowMessage(self.getNome +' moveu '+ metros);
end;

procedure Carro.Move(metros : string);
begin
  self.metros := metros;
  showMessage(self.nome +' moveu '+ metros);
end;

procedure Aviao.Move(metros: string);
begin
  self.metros := metros;
  showMessage(self.nome +' moveu '+ metros);
end;

end.
