function varargout = AksaraSunda(varargin)
% AKSARASUNDA MATLAB code for AksaraSunda.fig
%      AKSARASUNDA, by itself, creates a new AKSARASUNDA or raises the existing
%      singleton*.
%
%      H = AKSARASUNDA returns the handle to a new AKSARASUNDA or the handle to
%      the existing singleton*.
%
%      AKSARASUNDA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in AKSARASUNDA.M with the given input arguments.
%
%      AKSARASUNDA('Property','Value',...) creates a new AKSARASUNDA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before AksaraSunda_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to AksaraSunda_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help AksaraSunda

% Last Modified by GUIDE v2.5 16-May-2020 19:23:02

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @AksaraSunda_OpeningFcn, ...
                   'gui_OutputFcn',  @AksaraSunda_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before AksaraSunda is made visible.
function AksaraSunda_OpeningFcn(hObject, ~, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to AksaraSunda (see VARARGIN)

% Choose default command line output for AksaraSunda
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes AksaraSunda wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = AksaraSunda_OutputFcn(~, ~, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, ~, handles)

%Proses RGB to Grayscale
open=guidata(gcbo);
g=get(open.axes1,'Userdata');
Igray=rgb2gray(g);
set(open.figure1,'CurrentAxes',open.axes2);
set(imshow(Igray));
set(open.figure1,'Userdata',Igray);
set(open.axes2,'Userdata',Igray);

%Proses Grayscale to Threeshold
open=guidata(gcbo);
Igray=get(open.axes2,'Userdata');
Ibw=im2bw(Igray);
set(open.figure1,'CurrentAxes',open.axes3);
set(imshow(Ibw));
set(open.figure1,'Userdata',Ibw);
set(open.axes3,'Userdata',Ibw);


%Proses Treeshold to Garis Tepi
open=guidata(gcbo);
tepi=get(open.axes3,'Userdata');
Itepi=tepibiner(tepi);
set(open.figure1,'CurrentAxes',open.axes4);
set(imshow(Itepi));
set(open.figure1,'Userdata',Itepi);
set(open.axes4,'Userdata',Itepi);

%Proses Mencari txt_hasil Objek
L=luas(Itepi);
handles.luas=L;
guidata(hObject,handles);
set(handles.txt_luas,'string',L);

% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% --- Executes on button press in pushbutton6.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Melakukan Testing
Y = get(handles.txt_luas,'string')

if (Y=='1852')
 set(handles.hasil,'string','ka')
 
elseif (Y=='1610')
 set(handles.hasil,'string','ga')
 
elseif (Y=='1494')
 set(handles.hasil,'string','nga')

elseif (Y=='2076')
 set(handles.hasil,'string','ca')
 
elseif (Y=='2171')
 set(handles.hasil,'string','ja')
 
elseif (Y=='2497')
 set(handles.hasil,'string','nya')
 
elseif (Y=='2092')
 set(handles.hasil,'string','ta')

elseif (Y=='1720')
 set(handles.hasil,'string','da')
 
elseif (Y=='1262')
 set(handles.hasil,'string','na')
 
 elseif (Y=='1956')
 set(handles.hasil,'string','pa')
 
elseif (Y=='2578')
 set(handles.hasil,'string','ba')

elseif (Y=='1756')
 set(handles.hasil,'string','ma')
 
elseif (Y=='2177')
 set(handles.hasil,'string','ya')
 
elseif (Y=='1602')
 set(handles.hasil,'string','ra')
 
elseif (Y=='2284')
 set(handles.hasil,'string','la')

elseif (Y=='1662')
 set(handles.hasil,'string','wa')
 
elseif (Y=='2168')
 set(handles.hasil,'string','sa')
 
elseif (Y=='2020')
 set(handles.hasil,'string','ha')
 
elseif (Y=='1808')
 set(handles.hasil,'string','fa')

elseif (Y=='2350')
 set(handles.hasil,'string','qa')
 
elseif (Y=='1641')
 set(handles.hasil,'string','va')
 
elseif (Y=='1976')
 set(handles.hasil,'string','xa')
 
elseif (Y=='1696')
 set(handles.hasil,'string','za')

elseif (Y=='2696')
 set(handles.hasil,'string','kha')
 
elseif (Y=='2760')
 set(handles.hasil,'string','sya')
 
else
 set(handles.hasil,'string','salah')
end


%MENAMPILKAN HURUF AKSARA SUNDA

% --- Executes during object creation, after setting all properties.
function axes5_CreateFcn(hObject, eventdata, handles)
x=imread('A_1.jpg');
imshow(x);
set(gca,'Tag','axes5');
% hObject    handle to axes17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes5

% --- Executes during object creation, after setting all properties.
function axes6_CreateFcn(hObject, eventdata, handles)
x=imread('A_2.jpg');
imshow(x);
set(gca,'Tag','axes6');
% hObject    handle to axes6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes6

% --- Executes during object creation, after setting all properties.
function axes7_CreateFcn(hObject, eventdata, handles)
x=imread('A_3.jpg');
imshow(x);
set(gca,'Tag','axes7');
% hObject    handle to axes7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes7

% --- Executes during object creation, after setting all properties.
function axes8_CreateFcn(hObject, eventdata, handles)
x=imread('A_4.jpg');
imshow(x);
set(gca,'Tag','axes8');
% hObject    handle to axes8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes8

% --- Executes during object creation, after setting all properties.
function axes9_CreateFcn(hObject, eventdata, handles)
x=imread('A_5.jpg');
imshow(x);
set(gca,'Tag','axes9');
% hObject    handle to axes9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes9


% --- Executes during object creation, after setting all properties.
function axes10_CreateFcn(hObject, eventdata, handles)
x=imread('A_6.jpg');
imshow(x);
set(gca,'Tag','axes10');
% hObject    handle to axes10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes10


% --- Executes during object creation, after setting all properties.
function axes11_CreateFcn(hObject, eventdata, handles)
x=imread('A_7.jpg');
imshow(x);
set(gca,'Tag','axes11');
% hObject    handle to axes11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes11


% --- Executes during object creation, after setting all properties.
function axes12_CreateFcn(hObject, eventdata, handles)
x=imread('A_8.jpg');
imshow(x);
set(gca,'Tag','axes12');
% hObject    handle to axes12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes12


% --- Executes during object creation, after setting all properties.
function axes13_CreateFcn(hObject, eventdata, handles)
x=imread('A_9.jpg');
imshow(x);
set(gca,'Tag','axes13');
% hObject    handle to axes13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes13



% --- Executes during object creation, after setting all properties.
function axes14_CreateFcn(hObject, eventdata, handles)
x=imread('A_10.jpg');
imshow(x);
set(gca,'Tag','axes14');
% hObject    handle to axes14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes14



% --- Executes during object creation, after setting all properties.
function axes15_CreateFcn(hObject, eventdata, handles)
x=imread('A_11.jpg');
imshow(x);
set(gca,'Tag','axes15');

% hObject    handle to axes15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes15


% --- Executes during object creation, after setting all properties.
function axes16_CreateFcn(hObject, eventdata, handles)
x=imread('A_12.jpg');
imshow(x);
set(gca,'Tag','axes16');

% hObject    handle to axes16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes16


% --- Executes during object creation, after setting all properties.
function axes17_CreateFcn(hObject, eventdata, handles)
x=imread('A_13.jpg');
imshow(x);
set(gca,'Tag','axes17');

% hObject    handle to axes17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes17



% --- Executes during object creation, after setting all properties.
function axes18_CreateFcn(hObject, eventdata, handles)
x=imread('A_14.jpg');
imshow(x);
set(gca,'Tag','axes18');

% hObject    handle to axes18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes18


% --- Executes during object creation, after setting all properties.
function axes19_CreateFcn(hObject, eventdata, handles)
x=imread('A_15.jpg');
imshow(x);
set(gca,'Tag','axes19');

% hObject    handle to axes19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes19



% --- Executes during object creation, after setting all properties.
function axes20_CreateFcn(hObject, eventdata, handles)
x=imread('A_16.jpg');
imshow(x);
set(gca,'Tag','axes20');

% hObject    handle to axes20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes20


% --- Executes during object creation, after setting all properties.
function axes21_CreateFcn(hObject, eventdata, handles)
x=imread('A_17.jpg');
imshow(x);
set(gca,'Tag','axes21');

% hObject    handle to axes21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes21


% --- Executes during object creation, after setting all properties.
function axes22_CreateFcn(hObject, eventdata, handles)
x=imread('A_18.jpg');
imshow(x);
set(gca,'Tag','axes22');

% hObject    handle to axes22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes22



% --- Executes during object creation, after setting all properties.
function axes23_CreateFcn(hObject, eventdata, handles)
x=imread('A_19.jpg');
imshow(x);
set(gca,'Tag','axes23');

% hObject    handle to axes23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes23



% --- Executes during object creation, after setting all properties.
function axes24_CreateFcn(hObject, eventdata, handles)
x=imread('A_20.jpg');
imshow(x);
set(gca,'Tag','axes24');

% hObject    handle to axes25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes25



% --- Executes during object creation, after setting all properties.
function axes25_CreateFcn(hObject, eventdata, handles)
x=imread('A_21.jpg');
imshow(x);
set(gca,'Tag','axes25');

% hObject    handle to axes25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes25



% --- Executes during object creation, after setting all properties.
function axes26_CreateFcn(hObject, eventdata, handles)
x=imread('A_22.jpg');
imshow(x);
set(gca,'Tag','axes26');

% hObject    handle to axes26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes26



% --- Executes during object creation, after setting all properties.
function axes27_CreateFcn(hObject, eventdata, handles)
x=imread('A_23.jpg');
imshow(x);
set(gca,'Tag','axes27');
% hObject    handle to axes27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes27



% --- Executes during object creation, after setting all properties.
function axes28_CreateFcn(hObject, eventdata, handles)
x=imread('A_24.jpg');
imshow(x);
set(gca,'Tag','axes28');

% hObject    handle to axes28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes28


% --- Executes during object creation, after setting all properties.
function axes29_CreateFcn(hObject, eventdata, handles)
x=imread('A_25.jpg');
imshow(x);
set(gca,'Tag','axes29');
% hObject    handle to axes29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes29



%TOMBOL PILIHAN HURUF AKSARA SUNDA


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)

open=guidata(gcbo);
I=imread('A_1.jpg');
set(open.figure1,'CurrentAxes',open.axes1);
set(imagesc(I));
set(open.axes1,'Userdata',I);
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)

open=guidata(gcbo);
I=imread('A_2.jpg');
set(open.figure1,'CurrentAxes',open.axes1);
set(imagesc(I));
set(open.axes1,'Userdata',I);
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)

open=guidata(gcbo);
I=imread('A_3.jpg');
set(open.figure1,'CurrentAxes',open.axes1);
set(imagesc(I));
set(open.axes1,'Userdata',I);
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)

open=guidata(gcbo);
I=imread('A_4.jpg');
set(open.figure1,'CurrentAxes',open.axes1);
set(imagesc(I));
set(open.axes1,'Userdata',I);
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
open=guidata(gcbo);
I=imread('A_5.jpg');
set(open.figure1,'CurrentAxes',open.axes1);
set(imagesc(I));
set(open.axes1,'Userdata',I);
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)

open=guidata(gcbo);
I=imread('A_6.jpg');
set(open.figure1,'CurrentAxes',open.axes1);
set(imagesc(I));
set(open.axes1,'Userdata',I);
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)

open=guidata(gcbo);
I=imread('A_7.jpg');
set(open.figure1,'CurrentAxes',open.axes1);
set(imagesc(I));
set(open.axes1,'Userdata',I);
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)

open=guidata(gcbo);
I=imread('A_8.jpg');
set(open.figure1,'CurrentAxes',open.axes1);
set(imagesc(I));
set(open.axes1,'Userdata',I);
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)

open=guidata(gcbo);
I=imread('A_9.jpg');
set(open.figure1,'CurrentAxes',open.axes1);
set(imagesc(I));
set(open.axes1,'Userdata',I);
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)

open=guidata(gcbo);
I=imread('A_10.jpg');
set(open.figure1,'CurrentAxes',open.axes1);
set(imagesc(I));
set(open.axes1,'Userdata',I);
% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton15.
function pushbutton15_Callback(hObject, eventdata, handles)

open=guidata(gcbo);
I=imread('A_11.jpg');
set(open.figure1,'CurrentAxes',open.axes1);
set(imagesc(I));
set(open.axes1,'Userdata',I);
% hObject    handle to pushbutton15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton16.
function pushbutton16_Callback(hObject, eventdata, handles)

open=guidata(gcbo);
I=imread('A_12.jpg');
set(open.figure1,'CurrentAxes',open.axes1);
set(imagesc(I));
set(open.axes1,'Userdata',I);
% hObject    handle to pushbutton16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% --- Executes on button press in pushbutton17.
function pushbutton17_Callback(hObject, eventdata, handles)

open=guidata(gcbo);
I=imread('A_13.jpg');
set(open.figure1,'CurrentAxes',open.axes1);
set(imagesc(I));
set(open.axes1,'Userdata',I);
% hObject    handle to pushbutton17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton18.
function pushbutton18_Callback(hObject, eventdata, handles)

open=guidata(gcbo);
I=imread('A_14.jpg');
set(open.figure1,'CurrentAxes',open.axes1);
set(imagesc(I));
set(open.axes1,'Userdata',I);
% hObject    handle to pushbutton18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton19.
function pushbutton19_Callback(hObject, eventdata, handles)

open=guidata(gcbo);
I=imread('A_15.jpg');
set(open.figure1,'CurrentAxes',open.axes1);
set(imagesc(I));
set(open.axes1,'Userdata',I);
% hObject    handle to pushbutton19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton20.
function pushbutton20_Callback(hObject, eventdata, handles)

open=guidata(gcbo);
I=imread('A_16.jpg');
set(open.figure1,'CurrentAxes',open.axes1);
set(imagesc(I));
set(open.axes1,'Userdata',I);
% hObject    handle to pushbutton20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton21.
function pushbutton21_Callback(hObject, eventdata, handles)

open=guidata(gcbo);
I=imread('A_17.jpg');
set(open.figure1,'CurrentAxes',open.axes1);
set(imagesc(I));
set(open.axes1,'Userdata',I);
% hObject    handle to pushbutton21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton22.
function pushbutton22_Callback(hObject, eventdata, handles)

open=guidata(gcbo);
I=imread('A_18.jpg');
set(open.figure1,'CurrentAxes',open.axes1);
set(imagesc(I));
set(open.axes1,'Userdata',I);
% hObject    handle to pushbutton22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton23.
function pushbutton23_Callback(hObject, eventdata, handles)

open=guidata(gcbo);
I=imread('A_19.jpg');
set(open.figure1,'CurrentAxes',open.axes1);
set(imagesc(I));
set(open.axes1,'Userdata',I);
% hObject    handle to pushbutton23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton24.
function pushbutton24_Callback(hObject, eventdata, handles)

open=guidata(gcbo);
I=imread('A_20.jpg');
set(open.figure1,'CurrentAxes',open.axes1);
set(imagesc(I));
set(open.axes1,'Userdata',I);
% hObject    handle to pushbutton24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton25.
function pushbutton25_Callback(hObject, eventdata, handles)

open=guidata(gcbo);
I=imread('A_21.jpg');
set(open.figure1,'CurrentAxes',open.axes1);
set(imagesc(I));
set(open.axes1,'Userdata',I);
% hObject    handle to pushbutton25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton26.
function pushbutton26_Callback(hObject, eventdata, handles)

open=guidata(gcbo);
I=imread('A_22.jpg');
set(open.figure1,'CurrentAxes',open.axes1);
set(imagesc(I));
set(open.axes1,'Userdata',I);
% hObject    handle to pushbutton26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton27.
function pushbutton27_Callback(hObject, eventdata, handles)

open=guidata(gcbo);
I=imread('A_23.jpg');
set(open.figure1,'CurrentAxes',open.axes1);
set(imagesc(I));
set(open.axes1,'Userdata',I);
% hObject    handle to pushbutton27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton28.
function pushbutton28_Callback(hObject, eventdata, handles)

open=guidata(gcbo);
I=imread('A_24.jpg');
set(open.figure1,'CurrentAxes',open.axes1);
set(imagesc(I));
set(open.axes1,'Userdata',I);
% hObject    handle to pushbutton28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton29.
function pushbutton29_Callback(hObject, eventdata, handles)

open=guidata(gcbo);
I=imread('A_25.jpg');
set(open.figure1,'CurrentAxes',open.axes1);
set(imagesc(I));
set(open.axes1,'Userdata',I);
% hObject    handle to pushbutton29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    


% --- Executes on button press in pushbutton30.
function pushbutton30_Callback(hObject, eventdata, handles)
clc
close
% hObject    handle to pushbutton30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
