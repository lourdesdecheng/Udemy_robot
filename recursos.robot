*** Setting ***
Resource     recursos.robot
Library     String

*** Variables ***
${Browser}      chrome
${HomePage}      http://www.winstoncastillo.com/udemy/

*** Keywords ***
Open Homepage
    Open Browser    ${HomePage}      ${Browser}