# Dialog Boxes for Delphi Projects
![Delphi Supported Versions](https://img.shields.io/badge/Delphi%20Supported%20Versions-XE3..10.3%20Rio-blue.svg)
![Platforms](https://img.shields.io/badge/Platforms-Win32%20and%20Win64-red.svg)
![Compatibility](https://img.shields.io/badge/Compatibility-VCL%20and%20uniGUI-brightgreen.svg)

This component is a dialog factory for Delphi projects (VCL and uniGUI). It uses native resources to create dialogues. Uses native build directives to identify the project type (VCL / uniGUI).

Why use? Allows use the same code for desktop application (VCL) and web applications (uniGUI).

## Prerequisites
 * [**Boss**](https://github.com/HashLoad/boss) - Dependency Manager for Delphi
 * **VCL Projects**
   * [**BlockUI-VCL**](https://github.com/viniciussanchez/blockui-vcl) - Block User Interface for VCL Projects (Delphi)
 * **uniGUI Projects**
   * [**uniGUI**](http://www.unigui.com/) - Web Application Framework for Embarcadero Delphi
 
### Installation 
```
boss install github.com/viniciussanchez/dialogs4delphi
```

### Getting Started
You need to use Dialogs4D.Factory
```
uses Dialogs4D.Factory;
```

#### Success dialog box
```
begin
  TDialogs.Info('Information');
end;
``` 
![dialogs-vcl](img/Screenshot_1.png)

#### Error dialog box
```
begin
  TDialogs.Error('Error');
end;
``` 
![dialogs-vcl](img/Screenshot_3.png)

#### Warning dialog box
```
begin
  TDialogs.Warning('Warning');
end;
``` 
![dialogs-vcl](img/Screenshot_2.png)

#### Confirm dialog box
```
begin
  if TDialogs.Confirm('Warning') then
    Continue;
end;
``` 
![dialogs-vcl](img/Screenshot_4.png)

#### Input dialog box
```
var
  Name: string;
begin
  Name := TDialogs.Input('Your name:', 'Default value');
end;
``` 
![dialogs-vcl](img/Screenshot_5.png)
