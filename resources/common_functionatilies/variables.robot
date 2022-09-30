*** Variables ***

${browser}   Edge
${browser_headless}              headlesschrome

${localpath}               /Users/Jasso/Desktop/FCS
${screenshots-folder}      ${localpath}/results/screenShots





${url_fcs_main}   https://www.fcs-monitoreo.com
${url_fcs_home}   https://www.fcs-monitoreo.com/home.html

${clave_ingreso}   carso123

${usuario_an}    jasso.q15@outlook.com
${pass_an}    Claro123
${oxim}     92

${usuario_al}    s_tamezaa@globalhitss.com
${pass_al}       123456
${oxim}     92




*** Settings ***
Variables     ${localpath}/resources/fcs-POM/registro_pom/elementos_log.py
Variables     ${localpath}/resources/fcs-POM/registro_pom/clave_ini.py
Variables     ${localpath}/resources/fcs-POM/registro_pom/Home.py
Variables     ${localpath}/resources/fcs-POM/registro_pom/Sntms.py
Variables     ${localpath}/resources/fcs-POM/registro_pom/EndPage.py