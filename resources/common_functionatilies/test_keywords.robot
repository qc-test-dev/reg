*** Settings ***
Library   Selenium2Library   implicit_wait=10s
Library   OperatingSystem
Resource     ../common_functionatilies/variables.robot

*** Keywords ***

-CLICK ELEMENTO-
    [Arguments]   ${elemento}
    click element     ${elemento}

-Abrir URL-
     [Arguments]   ${url_togo}   ${naveg}
    open browser    ${url_togo}   ${naveg}
    Set Window Size    1200 1200

-Ir a url-
   [Arguments]   ${url_go}
    go to     ${url_go}

- Ingresar Texto -
   [Arguments]    ${ubicador}   ${text}
    sleep   3s
    input text   ${ubicador}   ${text}

-CONFIGURAR TESTCASE-
    -CONFIGURAR DIRECTORIO SCREENSHOTS-

-TERMINAR CONFIGURACIÓN TESTCASE-
    close all browsers

-CERRAR TODOS LOS NAVEGADORES-
    close all browsers

-CONFIGURAR DIRECTORIO SCREENSHOTS-
    set screenshot directory         ${screenshots-folder}

-CONFIGURACION INICIAL-


-CONFIGURACION FINAL-
    -CERRAR TODOS LOS NAVEGADORES-


-VALIDAR ELEMENTOS-
  [Arguments]    ${a1}
   FOR  ${element}   IN   @{a1}
      Scroll Element Into View   ${a1['${element}']}
      Run Keyword And Continue On Failure   Wait Until Element is Visible      ${a1['${element}']}
      Run Keyword And Continue On Failure   capture page screenshot     ${a1['${element}']}
   END

-VALIDAR TEXTOS Y ELEMENTOS-
  [Arguments]    ${a1}    ${a2}
   FOR  ${element}   IN   @{a1}
      Scroll Element Into View   ${a1['${element}']}
      Run Keyword And Continue On Failure   Wait Until Element is Visible      ${a1['${element}']}
      Run Keyword And Continue On Failure   element text should be      ${a1['${element}']}    ${a2['${element}']}
      Run Keyword And Continue On Failure   capture element screenshot    ${a1['${element}']}
   END