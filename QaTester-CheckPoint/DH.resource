*** Variables ***
${SITE}                                      https://www.digitalhouse.com/br
${NAVEGADOR}                                 Chrome
${IFRAME_COOKIES}                            xpath=/html/body/iframe[4]
${ACEITAR_COOKIES}                           xpath=/html/body/div/div/div[1]/div[1]/div[2]/div[1]/div[2]
${DATA_ANALYTICS}                            xpath=//*[@id="__next"]/div/main/section[2]/div/div/div[3]/a
${INSCREVER_DATA_ANALYTICS}                  xpath=//*[@id="__next"]/div/main/section/div/div/div[1]/div/div[2]/div[1]/a
${INSCREVER_SE_CURSO_DATA_ANALYTICS}         xpath=//*[@id="proximas-turmas"]/div/div[2]/div[2]/div/a
${DATA_SCIENCE}                              xpath=//*[@id="__next"]/div/main/section[2]/div/div/div[4]/a
${INSCREVER_SCIENCE}                         xpath=//*[@id="__next"]/div/main/section/div/div/div[1]/div/div[2]/div[1]/a
${INSCREVER_SE_CURSO_SCIENCE}                xpath=//*[@id="proximas-turmas"]/div/div[2]/div[2]/div/a
${MARKETING_DIGITAL}                         xpath=//*[@id="__next"]/div/main/section[2]/div/div/div[8]/a
${INSCREVER_MKTDIGITAL}                      xpath=//*[@id="__next"]/div/main/section/div/div/div[1]/div/div[2]/div[1]/a
${INSCREVER_SE_CURSO_MKTDIGITAL}             xpath=//*[@id="proximas-turmas"]/div/div[2]/div[2]/div/a
${CERTIFIED_TECH_DEVELOPER}                  xpath=//*[@id="__next"]/div/main/section[2]/div/div/div[1]/a
${INSCREVER_NO_CTD}                          xpath=//*[@id="__next"]/div/main/section[1]/div/div/div[1]/div/div[2]/div[1]/a
${INSCREVER_SE_CURSO_CTD}                    xpath=//*[@id="proximas-turmas"]/div/div[2]/div[2]/div/a
${QUERO_BOLSA}                               xpath=//*[@id="__next"]/div/main/div[1]/div/div/div[2]/div/a
${BOTAO_PREENCHER_FORMS_BOLSA}               xpath=//*[@id="S6I9mVUafA1bbD5Bqc0xkFaqOMcdCRbf"]/div[1]
${NOME_BOLSA}                                xpath=//*[@id="CzpXMe7EhpI6diDHrN8Oa1GHrhEPfIsA"]
${SOBRENOME_BOLSA}                           xpath=//*[@id="f02RR9bt0eNTrF0fJuC2azUMkD7TRX7M"]
${EMAIL_BOLSA}                               xpath=//*[@id="f02RR9bt0eNTrF0fJuC2azUMkD7TRX7M"]
${CELULAR_BOLSA}                             xpath=//*[@id="IIqCGDME1hJVbZz5duh3TgaPEzSbSd6G"]
${ACEITAR_TERMOS_BOLSA}                      xpath=//*[@id="nB2kF0hw2IEBSJmBHz1NbqnG9XylORio"]
${NOME_CTD}                                  xpath=//*[@id="name"]
${SOBRENOME_CTD}                             xpath=//*[@id="lastname"]
${EMAIL_CTD}                                 xpath=//*[@id="email"]
${DDD_CTD}                                   xpath=//*[@id="phonecode"]
${CELULAR_CTD}                               xpath=//*[@id="phone"]
${ACEITAR_TERMOS_CTD}                        xpath=//*[@id="tyc"]



${NOME_INPUT_CTD}                      Bruno
${SOBRENOME_INPUT_CTD}                 Henrique
${EMAIL_INPUT_CTD}                     teste1234@gmail.com
${DDD_INPUT_CTD}                       11
${CELULAR_INPUT_CTD}                   123456789


${NOME_INPUT_BOLSA}                     Bruno
${SOBRENOME_INPUT_BOLSA}                Henrique
${EMAIL_INPUT_BOLSA}                    teste1234@gmail.com
${CELULAR_INPUT_BOLSA}                  11123456789



*** keywords ***
Abrir o Navegador
  Open Browser   ${SITE}   ${NAVEGADOR}
  Maximize Browser Window

Validando o curso de Data Analytics
  Sleep   20
  Select frame          ${IFRAME_COOKIES}
  Click Element         ${ACEITAR_COOKIES}
  Unselect Frame        
  Click Element         ${OUTROS_CURSOS}
  Click Element         ${DATA_ANALYTICS} 
  Page Should Contain   voltado para qualquer pessoa que deseja ampliar suas capacidades analíticas
  Page Should Contain   pessoas interessadas em business intelligence
  Click Element         ${INSCREVER_DATA_ANALYTICS}
  Sleep   10
  Click Element         ${INSCREVER_SE_CURSO_DATA_ANALYTICS}
  Page Should Contain   R$10.315

Validando o curso de Data Science
  Sleep   20
  Select frame           ${IFRAME_COOKIES}
  Click Element          ${ACEITAR_COOKIES}
  Unselect Frame        
  Click Element          ${OUTROS_CURSOS}
  Click Element          ${DATA_SCIENCE}
  Page Should Contain    profissionais de diversas áreas que desejam melhorar sua comunicação como engenheiros de Big Data
  Page Should Contain   dquirir habilidades práticas com as ferramentas específicas para fazer análises
  Click Element          ${INSCREVER_SCIENCE}
  Sleep   10
  Click Element          ${INSCREVER_SE_CURSO_SCIENCE}
  Page Should Contain    R$11.878

Validando o curso de Marketing Digital
  Sleep   20      
  Select frame           ${IFRAME_COOKIES}
  Click Element          ${ACEITAR_COOKIES}
  Click Element          ${OUTROS_CURSOS}
  Click Element          ${MARKETING_DIGITAL}
  Page Should Contain    voltado para as pessoas que querem ingressar na carreira de marketing digital
  Page Should Contain    Empreendedores que desejam compreender os fundamentos da área e as principais estratégias de marketing digital
  Click Element          ${INSCREVER_MKTDIGITAL}
  Click                  ${INSCREVER_SE_CURSO_MKTDIGITAL}
  Page Should Contain    R$9.376

Validando o CTD
  Sleep   20
  Select frame           ${IFRAME_COOKIES}
  Click Element          ${ACEITAR_COOKIES}
  Unselect Frame         
  Click Element          ${OUTROS_CURSOS}
  Click Element          ${CERTIFIED_TECH_DEVELOPER}
  Page Should Contain    Uma carreira pensada e desenhada pela Digital House, Mercado Livre e Globant
  Page Should Contain    Se você deseja mergulhar no mundo da programação e no desenvolvimento de novos produtos digitais
  Click Element          ${INSCREVER_NO_CTD}
  Sleep  10
  Click Element          ${INSCREVER_SE_CURSO_CTD}
  Page Should Contain    a partir de R$ 289,00 mensais
  Input Text             ${NOME_CTD}        ${NOME_INPUT_BOLSA}
  Input Text             ${SOBRENOME_CTD}   ${SOBRENOME_INPUT_CTD}
  Input Text             ${EMAIL_CTD}       ${EMAIL_INPUT_CTD} 
  Input Text             ${DDD_CTD}         ${DDD_INPUT_CTD} 
  Ibput Text             ${CELULAR_CTD}     ${CELULAR_INPUT_CTD}
  Click Element          ${ACEITAR_TERMOS_CTD} 


Validando o programa de Bolsas
  Sleep   20
  Select frame           ${IFRAME_COOKIES}
  Click Element          ${ACEITAR_COOKIES}
  Unselect Frame         
  Click Element          ${QUERO_BOLSA}
  Page Should Contain    Uma carreira em Programação para mudar o seu futuro
  Page Should Contain    Confira os requisitos para a bolsa de estudo
  Page Should Contain    Valor das parcelas: a partir de R$88,00 mensais
  Click Element          ${BOTAO_PREENCHER_FORMS_BOLSA}
  Input Text             ${NOME_BOLSA}        ${NOME_INPUT_BOLSA}
  Input Text             ${SOBRENOME_BOLSA}   ${SOBRENOME_INPUT_BOLSA}
  Input Text             ${EMAIL_BOLSA}       ${EMAIL_INPUT_BOLSA}
  Input Text             ${CELULAR_BOLSA}     ${CELULAR_INPUT_BOLSA}
  Click Element          ${ACEITAR_TERMOS_BOLSA}