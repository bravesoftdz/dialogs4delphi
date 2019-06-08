unit Dialogs4D.Input;

interface

uses Dialogs4D.Input.Intf;

type
  TDialogInput = class(TInterfacedObject, IDialogInput)
  private
    /// <summary>
    ///   Displays a dialog box for the user with an input box.
    /// </summary>
    /// <param name="Description">
    ///   Input box description.
    /// </param>
    /// <param name="Default">
    ///   Default value for the input box.
    /// </param>
    /// <returns>
    ///   User defined value.
    /// </returns>
    function Show(const Description, Default: string): string;
  end;

implementation

uses
{$IF Defined(UNIGUI_VCL) or Defined(UNIGUI_ISAPI)}
  UniGuiDialogs, UniGuiTypes,
{$ELSEIF Defined(MSWINDOWS)}
  Vcl.Dialogs, Vcl.Forms, Vcl.BlockUI.Intf, Vcl.BlockUI,
{$ENDIF}
  System.SysUtils;

{$IF Defined(UNIGUI_VCL) or Defined(UNIGUI_ISAPI)}
function TDialogInput.Show(const Description, Default: string): string;
var
  UserValue: string;
begin
  UserValue := Default;
  Prompt(Description, Default, mtInformation, [mbOk], UserValue, False);
  Result := UserValue;
end;
{$ELSEIF Defined(MSWINDOWS)}
function TDialogInput.Show(const Description, Default: string): string;
var
  BlockUI: IBlockUI;
begin
  BlockUI := TBlockUI.Create();
  Result := InputBox(PWideChar(Application.Title), PWideChar(Description), Default);
end;
{$ELSE}
function TDialogInput.Show(const Description, Default: string): string;
begin
  raise Exception.Create('Not implemented');
end;
{$ENDIF}

end.
