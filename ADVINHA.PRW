#INCLUDE "PROTHEUS.CH"


User Function ADVINHA()
    Local nNum   := Randomize(1,100)
    Local nChute := 0
    Local nTent  := 0

    While nChute != nNum
    nChute := Val(FWInputBox("Escolha um numero [1 - 100]","")) //Funcao converte para valor numero inserido
        If nChute == nNum
            MsgInfo("Voce acertou - <b>" + cValToChar(nChute) + "</b><br>Você fez " + cValToChar(nTent) + " tentativas incorretas","Fim de Jogo")
        ElseIf nChute > nNum
            nTent += 1
            MsgAlert("Valor muito alto, tente novamente")
        Else
            nTent += 1
            MsgAlert("Valor muito baixo, tente novamente")
        EndIf
    End
    
    

Return
