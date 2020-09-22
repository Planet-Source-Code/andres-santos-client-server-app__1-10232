VERSION 5.00
Begin VB.Form frmAbout 
   BackColor       =   &H00008080&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Sobre: Alien Hacker v2.5 - http://surf.to/andufo"
   ClientHeight    =   1755
   ClientLeft      =   2340
   ClientTop       =   1890
   ClientWidth     =   5205
   ClipControls    =   0   'False
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1211.332
   ScaleMode       =   0  'User
   ScaleWidth      =   4887.764
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdOK 
      Cancel          =   -1  'True
      Caption         =   "OK"
      Default         =   -1  'True
      Height          =   345
      Left            =   120
      TabIndex        =   0
      Top             =   1320
      Width           =   2580
   End
   Begin VB.Label lblSobre2 
      BackStyle       =   0  'Transparent
      Caption         =   $"frmAbout.frx":0000
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1335
      Left            =   2880
      TabIndex        =   2
      Top             =   360
      Width           =   2175
      WordWrap        =   -1  'True
   End
   Begin VB.Label lblSobre 
      BackStyle       =   0  'Transparent
      Caption         =   "Alien Hacker v2.5 (w95/98)"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   2880
      TabIndex        =   1
      Top             =   120
      Width           =   2175
      WordWrap        =   -1  'True
   End
   Begin VB.Image picLogo 
      BorderStyle     =   1  'Fixed Single
      Height          =   1065
      Left            =   120
      Picture         =   "frmAbout.frx":00AC
      Top             =   120
      Width           =   2595
   End
End
Attribute VB_Name = "frmAbout"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdOK_Click()
    Unload Me
End Sub
