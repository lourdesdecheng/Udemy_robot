*** Setting ***
Library     String
Library     SeleniumLibrary
*** Variables ***
${browser}      chrome
${homepage}     automationpractice.com/index.php
${scheme}       http
${testUrl}      ${scheme}://${homepage}

*** Keywords ***
Open Homepage
    Open Browser    ${testUrl}      ${browser}

*** Test Cases ***
C001 Hacer Clic en Contenedores
    Open Homepage
    Set Global Variable     @{nombresDeContenedores}    //*[@id="homefeatured"]/li[1]/div/div[2]/h5/a       //*[@id="homefeatured"]/li[2]/div/div[2]/h5/a       //*[@id="homefeatured"]/li[3]/div/div[2]/h5/a
    :FOR    ${nombreDeContenedor}   IN      @{nombresDeContenedores}
    \   Run Keyword If      '${nombreDeContenedor}'=='//*[@id="homefeatured"]/li[3]/div/div[2]/h5/a'     Exit For Loop
    \   Click Element       xpath=${nombreDeContenedor}
    \   Wait Until Element Is Visible   xpath=//*[@id="bigpic"]
    \   Click Element       xpath=//*[@id="header_logo"]/a/img
    Close Browser
