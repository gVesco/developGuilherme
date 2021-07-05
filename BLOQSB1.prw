#INCLUDE "Protheus.ch"

/*/{Protheus.doc} BLOQSB1
Rotina para bloquear produtos na tabela SB1
Informar produtos separados por Vírgula (,)
Para todas empresas informar Quais empresas? = TODAS

@type		function
@author		Guilherme A. Vesco
@since 		03/07/2021
/*/

User Function BLOQSB1()

MsgAlert("Atencao, programa em fase de testes.","Atencao!")

Local aPergs      := {} //Perguntas da Tela do Parambox
Local aRet        := {} //Array com o Retorno padrão do Parambox
Private aArea     := GetArea()
Private aAreaSM0  := SM0->( GetArea() )
Private cQualProd := Space(250)

	//Adicionando Parametros na Tela do Parambox
	aAdd( aPergs ,{1,"Quais produtos serao bloqueados"    ,cQualProd,"@A","",     ,"",100,.T.})
	
    //Retorno ParamBox: aRet //Array contendo resposta dos parametros
	//ParamBox (aParamBox, cTitulo, aRet, bOk, aButtons, lCentered,; nPosx, nPosy, oMainDlg, cLoad, lCanSave, lUserSave) Retorno: lOK
	If ParamBox(aPergs ,"Bloqueio de Produtos SB1",aRet,/*bOk*/,/*aButtons*/,/*lCentered*/,/*nPosx*/,/*nPosy*/,/*oMainDlg*/,/*cLoad*/,.F.,.F.)
        cQualProd:= Alltrim(UPPER(aRet[1]))

	//Chama função que INCLUI o usuário nos parâmetros
	Processa({|| BLOQSB1Ini()}, "Aguarde... acessando e bloqueando produtos")
	Else
		//MsgAlert("Processo cancelado")
		Help(NIL,NIL, "BLOQSB1",NIL, "Processo cancelado pelo Usuário", 1, 0, NIL, NIL, NIL, NIL, NIL,"")
	EndIf

RestArea(aArea)
RestArea( aAreaSM0 )
Return

/*---------------------------------------------------*
 | Função:                                           |
 | Desc:                                             |
 *---------------------------------------------------*/

Static Function BLOQSB1Ini






Return
