*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}                  https://robotizandotestes.blogspot.com/
${BROWSER}              chrome
${BTN_PESQUISAR}        css=button.search-expand.touch-icon-button
${INPUT_PESQUISAR}      name=q
${SUBMIT_PESQUISAR}     css=input.search-action.flat-button


*** Keywords ***
Acessar a página do blog
    Open Browser    url=${URL}  browser=${BROWSER}
    Title Should Be    Robotizando Testes

Pesquisar por um post com "${TEXTO_PESQUISA}"
    Click Button     ${BTN_PESQUISAR}
    Input Text       ${INPUT_PESQUISAR}     ${TEXTO_PESQUISA}
    Click Element    ${SUBMIT_PESQUISAR}

Conferir mensagem de pesquisa por "${MSG_DESEJADA}"
    Page Should Contain     text=${MSG_DESEJADA}

Fechar Navegador
    Close Browser
