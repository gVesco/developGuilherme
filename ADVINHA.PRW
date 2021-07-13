#INCLUDE "PROTHEUS.CH"


User Function ADVINHA()
    Local nNum := 50
    Local nChute := 0

    While nChute != nNum
    nChute := Val(FWInputBox("Escolha um numero [1 - 100]","")) //Funcao converte para valor numero inserido
        If nChute == nNum
            MsgInfo("Voce acertou - <b>" + cValToChar(nChute) + "</b>","Fim de Jogo")
        ElseIf nChute > nNum
            MsgAlert("Valor muito alto, tente novamente")
        Else
            MsgAlert("Valor muito baixo, tente novamente")
        EndIf
    End
    
    

Return
