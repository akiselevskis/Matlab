function varargout = mans_interfeiss(varargin)
% MANS_INTERFEISS MATLAB code for mans_interfeiss.fig
%      MANS_INTERFEISS, by itself, creates a new MANS_INTERFEISS or raises the existing
%      singleton*.
%
%      H = MANS_INTERFEISS returns the handle to a new MANS_INTERFEISS or the handle to
%      the existing singleton*.
%
%      MANS_INTERFEISS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MANS_INTERFEISS.M with the given input arguments.
%
%      MANS_INTERFEISS('Property','Value',...) creates a new MANS_INTERFEISS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before mans_interfeiss_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to mans_interfeiss_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help mans_interfeiss

% Last Modified by GUIDE v2.5 13-Dec-2023 19:10:32

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @mans_interfeiss_OpeningFcn, ...
                   'gui_OutputFcn',  @mans_interfeiss_OutputFcn, ...
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


% --- Executes just before mans_interfeiss is made visible.
function mans_interfeiss_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to mans_interfeiss (see VARARGIN)

% Choose default command line output for mans_interfeiss
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes mans_interfeiss wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = mans_interfeiss_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in plot_poga.
function plot_poga_Callback(hObject, eventdata, handles)
% hObject    handle to plot_poga (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
mans_grafiks(hObject,handles)

% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
%mans_grafiks(hObject,handles)


function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in stem_poga.
function stem_poga_Callback(hObject, eventdata, handles)
% hObject    handle to stem_poga (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
mans_grafiks(hObject,handles)

% --- Executes on button press in stairs_poga.
function stairs_poga_Callback(hObject, eventdata, handles)
% hObject    handle to stairs_poga (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
mans_grafiks(hObject,handles)

function mans_grafiks(hObject,handles)
t = 0:0.01:1;
%f = 3;
fstr = get(handles.edit1,'String');
f = str2double(fstr); %vai num?
saraksts = get(handles.popupmenu1, 'String');
izv_pozicija = get(handles.popupmenu1, 'Value');
if f == 0
    f = get(handles.slider1, 'Value')*50;
end
switch saraksts{izv_pozicija}
    case 'sin'
        y = sin(2*pi*f*t);
    case 'cos'
        y = cos(2*pi*f*t);
    otherwise
        y=0*t;
end
%plot(t,y)
str = get(hObject,'String');

feval(str,t,y);
