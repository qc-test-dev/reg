*** Settings ***
Documentation     registro automatico de fcs
Resource     ../resources/common_functionatilies/test_keywords.robot
Test Setup      -CONFIGURAR TESTCASE-
Test Teardown       -TERMINAR CONFIGURACIÓN TESTCASE-
*** Test Cases ***

-Registro FCS Andres-

    -Abrir URL-   ${url_fcs_main}    ${browser}
    -VALIDAR ELEMENTOS-   ${clave_ini}
    -CLICK ELEMENTO-    ${clave_ini['boton_ingresar']}

    -VALIDAR ELEMENTOS-    ${elementos_log}
    - Ingresar Texto -     ${elementos_log['input_correo']}     ${usuario_an}
    - Ingresar Texto -     ${elementos_log['input_password']}     ${pass_an}
    -CLICK ELEMENTO-       ${elementos_log['boton_ingresar']}

    -VALIDAR ELEMENTOS-    ${Home}
    -CLICK ELEMENTO-       ${Home['boton_RM']}

    -VALIDAR ELEMENTOS-    ${Sntms}
    - Ingresar Texto -     ${Sntms['input_oxim']}     ${oxim}
    -CLICK ELEMENTO-       ${Sntms['boton_Continue']}

    -VALIDAR ELEMENTOS-    ${EndPage}
    #select from list by label  whyIsolation     Estoy en home office (trabajo en casa), por política de la empresa
    select from list by index  whyIsolation     3
    -CLICK ELEMENTO-       ${EndPage['boton_Continue']}
    Sleep  4s

#00000
-Registro FCS Alberto-
  -Abrir URL-   ${url_fcs_main}    ${browser}
    -VALIDAR ELEMENTOS-   ${clave_ini}
    -CLICK ELEMENTO-    ${clave_ini['boton_ingresar']}

    -VALIDAR ELEMENTOS-    ${elementos_log}
    - Ingresar Texto -     ${elementos_log['input_correo']}     ${usuario_al}
    - Ingresar Texto -     ${elementos_log['input_password']}     ${pass_al}
    -CLICK ELEMENTO-       ${elementos_log['boton_ingresar']}

    -VALIDAR ELEMENTOS-    ${Home}
    -CLICK ELEMENTO-       ${Home['boton_RM']}

    -VALIDAR ELEMENTOS-    ${Sntms}
    - Ingresar Texto -     ${Sntms['input_oxim']}     ${oxim}
    -CLICK ELEMENTO-       ${Sntms['boton_Continue']}

    -VALIDAR ELEMENTOS-    ${EndPage}
    #select from list by label  whyIsolation     Estoy en home office (trabajo en casa), por política de la empresa
    select from list by index  whyIsolation     3
    -CLICK ELEMENTO-       ${EndPage['boton_Continue']}
    Sleep  3s
    -CERRAR TODOS LOS NAVEGADORES-

