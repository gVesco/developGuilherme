#include 'protheus.ch'
#include 'parmtype.ch'

user function BANCO001()

    Local aArea := SB1->(GetArea())
    Local cMsg := ""

    DbSelectArea("SB1")
    SB1->(DbSelectOrder(1))
    SB1->(DbGoTop())

    cMsg := Posicione('SB1' , 1 , FWXFilial('SB1')+'PENDRIVE001' , 'B1_DESC')
    Alert("Descricao do produto" + cMsg , "Aviso")

    RestArea(aArea)

/*
    If SB1->(dbSeek(FWXFilial("SB1") + "PENDRIVE001"))
        Alert(SB1->B1_DESC)
    EndIf

    RestArea(aArea)
*/
return
