*** Setting ***
Resource     recursos.robot
Library     SeleniumLibrary

*** Test Cases ***
001 Ir al blog de Winston castillo
    Open HomePage
    Title Should Be     Hola Mundo!
    Set Focus To Element    xpath=/html/body/div[1]/div/div[2]/a[1]
    Click Link       xpath=/html/body/div[1]/div/div[2]/a[1]
    Wait Until Element is Visible   xpath=//*[@id="page-header"]/div[1]/div/div/div/a
    Title Should Be     Winston Castillo – Un sitio para comunicarse
    Close Browser

002 Abrir Ventana Modal
    Open HomePage
    Title Should Be     Hola Mundo!
    Set Focus To Element    xpath=/html/body/div[1]/div/div[2]/a[2]
    Click Link       xpath=/html/body/div[1]/div/div[2]/a[2]
    Wait Until Element is Visible   xpath=//*[@id="exampleModal"]/div/div/div[1]
    Title Should Be     Hola Mundo!
    Close Browser
