function varargout = bacacitra(varargin)
% BACACITRA MATLAB code for bacacitra.fig
%      BACACITRA, by itself, creates a new BACACITRA or raises the existing
%      singleton*.
%
%      H = BACACITRA returns the handle to a new BACACITRA or the handle to
%      the existing singleton*.
%
%      BACACITRA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BACACITRA.M with the given input arguments.
%
%      BACACITRA('Property','Value',...) creates a new BACACITRA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before bacacitra_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to bacacitra_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help bacacitra

% Last Modified by GUIDE v2.5 11-Oct-2016 10:52:41

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @bacacitra_OpeningFcn, ...
                   'gui_OutputFcn',  @bacacitra_OutputFcn, ...
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


% --- Executes just before bacacitra is made visible.
function bacacitra_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to bacacitra (see VARARGIN)

% Choose default command line output for bacacitra
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes bacacitra wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = bacacitra_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
open=guidata(gcbo);
[namafile,direktori]=uigetfile({'*.jpg;*.bmp;*.tif;*.png'},'Pilih Gambarnya');
if ~ischar(namafile)
   msgbox('Yakin Ngga Jadi Buka Gambar Lagi Nih?','Pesan');
else
    citraAsli=imread(namafile);
    set(open.figure1,'CurrentAxes',open.axes1);
    set(imagesc(citraAsli));
    set(open.axes1,'UserData',citraAsli);
end 


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
gray=guidata(gcbo);
modifCitra=get(gray.axes1,'UserData');
citraGray=rgb2gray(modifCitra);
set(gray.figure1,'CurrentAxes',gray.axes2);
set(imagesc(citraGray));colormap('gray');
set(gray.axes2,'UserData',citraGray);

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
R=guidata(gcbo);
modifCitra=get(R.axes1,'UserData');
citraR=modifCitra(:,:,1);
set(R.figure1,'CurrentAxes',R.axes2);
set(imagesc(citraR));colormap('gray');
set(R.axes2,'UserData',citraR);


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
G=guidata(gcbo);
modifCitra=get(G.axes1,'UserData');
citraG=modifCitra(:,:,2);
set(G.figure1,'CurrentAxes',G.axes2);
set(imagesc(citraG));colormap('gray');
set(G.axes2,'UserData',citraG);

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
B=guidata(gcbo);
modifCitra=get(B.axes1,'UserData');
citraB=modifCitra(:,:,3);
set(B.figure1,'CurrentAxes',B.axes2);
set(imagesc(citraB));colormap('gray');
set(B.axes2,'UserData',citraB);


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close all force;
