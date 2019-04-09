VERSION 5.00
Begin VB.Form FCancela 
   Caption         =   "Cancelamento"
   ClientHeight    =   4515
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4005
   LinkTopic       =   "Form1"
   ScaleHeight     =   4515
   ScaleWidth      =   4005
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox edtSeq 
      Height          =   375
      Left            =   0
      TabIndex        =   9
      Text            =   "1"
      Top             =   240
      Width           =   495
   End
   Begin VB.CommandButton btnOk 
      Caption         =   "Ok"
      Height          =   375
      Left            =   360
      TabIndex        =   4
      Top             =   4080
      Width           =   1695
   End
   Begin VB.CommandButton btnCancel 
      Cancel          =   -1  'True
      Caption         =   "Cancelar"
      Height          =   375
      Left            =   2160
      TabIndex        =   3
      Top             =   4080
      Width           =   1815
   End
   Begin VB.TextBox edtChave 
      Height          =   375
      Left            =   0
      TabIndex        =   2
      Top             =   960
      Width           =   3975
   End
   Begin VB.TextBox edtProtocolo 
      Height          =   375
      Left            =   0
      TabIndex        =   1
      Top             =   1680
      Width           =   3975
   End
   Begin VB.TextBox mJustificativa 
      Height          =   1695
      Left            =   0
      MultiLine       =   -1  'True
      TabIndex        =   0
      Top             =   2280
      Width           =   3975
   End
   Begin VB.Label Label1 
      Caption         =   "Sequência do Evento"
      Height          =   255
      Index           =   1
      Left            =   0
      TabIndex        =   8
      Top             =   0
      Width           =   3495
   End
   Begin VB.Label Label1 
      Caption         =   "Chave"
      Height          =   255
      Index           =   0
      Left            =   0
      TabIndex        =   7
      Top             =   720
      Width           =   2415
   End
   Begin VB.Label Label1 
      Caption         =   "Protocolo"
      Height          =   255
      Index           =   3
      Left            =   0
      TabIndex        =   6
      Top             =   1440
      Width           =   3495
   End
   Begin VB.Label Label1 
      Caption         =   "Cancelamento"
      Height          =   255
      Index           =   4
      Left            =   0
      TabIndex        =   5
      Top             =   2040
      Width           =   3255
   End
End
Attribute VB_Name = "FCancela"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub btnOk_Click()
  If Len(mJustificativa.Text) > 15 And Len(edtProtocolo) = 15 And Len(edtChave) = 44 And edtSeq.Text <> "" Then
    Hide
  Else
  MsgBox "Por gentileza, preencha todos os parâmetros do cancelamento antes de prosseguir."
  End If
End Sub

Private Sub btnCancel_Click()
Hide
End Sub
