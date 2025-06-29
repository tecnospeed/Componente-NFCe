﻿## [10.1.85.76]

**Novidade**
- CLML-3072 - Ajustado as URL's de homologação e produção das UF's CE e GO

## [10.1.84.73]

**Novidades**

* 25.05.21 | DSML-1613 - Disponibilizado nova propriedade DiretorioLicense para que seja possível personalizar o caminho do arquivo de validação de licençaDisponibilizado nova propriedade DiretorioLicense para que seja possível personalizar o caminho do arquivo de validação de licença
* 25.05.21 | DSML-1713 - adequação a [NT 2025.001 QR code 3.0](https://blog.tecnospeed.com.br/nota-tecnica-2025-001-nfc-e-qr-code/)

**Correções**

* 25.05.21 | DSML-1749 - Ajustado validação da propriedade CNPJ para permitir cpf e cnpj e gerar o license normalmenteAjustado validação da propriedade CNPJ para permitir cpf e cnpj e gerar o license normalmente
* 25.05.21 | DSML-1733 - Adicionando o preenchimento do grupo I05G (gCred) no método ConverteXmlParaDataSet.Adicionando o preenchimento do grupo I05G (gCred) no método ConverteXmlParaDataSet.
* 25.05.21 | DSML-1703 - Foi realizada uma melhoria para permitir a impressão do CEAN do produto no campo "Código do Produto".Foi realizada uma melhoria para permitir a impressão do CEAN do produto no campo "Código do Produto". Para isso, foram adicionados dois novos parâmetros na rota: ExibirCodigoProduto: define que o código será impresso (valor padrão). ExibirCeanProduto: deve ser ativado para que o CEAN seja impresso no lugar do código.


## [10.1.83.68]

**Novidades**

* 25.04.28 | SaaS - NFCe | DSML-1702 - Foi realizada uma melhoria para permitir a impressão do CEAN do produto no campo "Código do Produto".Foi realizada uma melhoria para permitir a impressão do CEAN do produto no campo "Código do Produto". Para isso, foram adicionados dois novos parâmetros na rota: ExibirCodigoProduto: define que o código será impresso (valor padrão). ExibirCeanProduto: deve ser ativado para que o CEAN seja impresso no lugar do código.

**Correções**

* 25.04.28 | Comp - NFCe | DSML-1578 - BUG - [COMPONENTE] - [NFCE] - [Interno] - [PROBLEMA IMPRESSÃO]

* 25.04.28 | SaaS - NFCe | DSML-1701 - Implementando a impressão do protocolo de autorização na NFCe autorizada em contingência

## [10.1.82.1061]

**Correções**

* [DSML-1591]Correções para implementação do OAuth2 do componente NFCe.



## [10.1.80.1056]

**Novudades**

* DSP4G-1706 - Compatibilização com o novo método de validação de email oAuth2 dos provedores Microsfot e Google.
* DSP4G-1687 - Criar método "TestarEmailConfig" para validação de email
* DSP4G-1680 - Validação oAuth - Criar documentação do método
* DSP4G-1657 - Comp. NFCe - Compatibilizar para o novo método de validação OAuth

## [10.1.79.1052]

**Correções**

* DSML-1368 - Ajustes na geração da Assinatura para Responsável Técnico.

## [10.1.78.1048]

* DSML-1043 - Disponibilizado metodo para envio de Cancelamento do evento de Conciliação Financeira - ECONF
* DSML-1044 - Implementação da NT 2024.002 - ECONF - Evento de Conciliação Financeira

## [10.1.78.1044]

**Correções**

* DSML-1306 - Ajuste em erro genérico retornado da Sefaz SP.

## [10.1.78.1042]

**Correção**

**DSML-1029** - Correção para que a URL do QRCode não seja cortada em exportações .txt

## [10.1.77.1041]

**Correções**

* DEP-553 - (Nota Técnica 2024.001 V1.10) - Corrigido arquivos para aceitar dataset com CRT = 4 

## [10.1.77.1039]

**Novidades**

- DSML-1287 - Informe técnico 2024.002 V1.01
 

## [10.1.76.1036]

**Novidades**

* DSML-1052 - Atualização do link de QRCode da UF Rio de Janeiro

**Correções**

* DSML-998 - Ajustando a formatação do telefone

* DSML-1257 - Removido campo cAut da impressão da DANFECE

## [10.1.75.1035]

**Correções**

- DSML-1239 - correção da geração da tag comb na pl_009n e pl_009m;
- DSML-1254  Corrigida quantidade de caracteres na tag cAut de 20 para 128

## [10.1.74.1034]

**Correção**

- [DSML-1239] - Hotfix - correção da geração da tag comb na pl_009n e pl_009m;

## [10.1.74.1033]

**Novidades**

* DSML-1046 - compatibilizado componente com a [Nota Técnica 2023.004 v.1.10](https://blog.tecnospeed.com.br/nf-e-e-nfc-e-nota-tecnica-2023-004-evento-de-conciliacao-financeira-econf-outros-campos-e-regras);

* DSML-1183 - compatibilizado componente com a [Nota Técnica 2019.001 v.1.62](https://blog.tecnospeed.com.br/nt-2019-001-nfe) e nova versão de esquema pl009n;

* DSML-1082 - Nova versão de esquema pl009m, compatível com a Nota Técnica 2019.001 v.1.60, foi criado um novo grupo para as informações do crédito presumido e novo campo para as informações do [cbenef](https://blog.tecnospeed.com.br/cbenef/);

* DSML-1013 - Compatibilização do instalador para o Delphi 12 Athenas

## [10.1.73.1028]

**Novidades**

* DSP4G-771 - integração por arquivo no formato JSON para o metodo ConverterLoteParaXml[](https://atendimento.tecnospeed.com.br/hc/pt-br/articles/360005515913)

## [10.1.72.1024]

**Melhorias**
- DSML-994 - Disponibilizado o campo infAdProd no DataSetItens para impressão(RTM);

## [10.1.72.1022]

**Correções**

* DSML-937 - Correção da rejeição `codificação diferente de UTF-8` para SP, utilizando a propriedade `httpLibs` igual a `SBB`;

* DSML-960 - Correção do erro `O campo CNPJ: deve ser um número inteiro` ao utilizar um CPF como emitente;

* DSML-987 - Melhoria nas mensagens de retorno da Sefaz, apresentando somente as tags relevantes;

## [10.1.71.1017]

**Correção**
* DSML-932 - Realizado a correção na Exibição do cabeçalho aonde estava cortando o municipio.

## [10.1.70.1015]
 
**Correção**

* DSML-858 - Corrigido a formatação da impressão do RTM para não cortar a URL do QRCode.
* DSML-888 - Realizado a correção na visualização e impressão de nfce em A4 com descrições longas.

## [9.1.70.1012]

Correção - Hotfix

DSML-834 - Ajuste na visualização do nome do consumidor no modelo de impressão retrato_texto

## [9.1.70.1010]

* **Novidade**

  * DSML-721 NFC-e Componente - NT 2023.002 v1.00 [Publicada NT 2023.002 v.1.00](http://www.nfe.fazenda.gov.br/portal/informe.aspx?ehCTG=false&Informe=wuVuolIzJLs=&AspxAutoDetectCookieSupport=1)
  * DSML-810 NFC-e Componente - Criação do campo cAut nos modelos de impressão
  * DSML-834 NFC-e Componente - Ajuste na visualização do nome do consumidor no modelo de impressão retrato_texto


## [9.1.69.1004]

**Correção**
- DSML-743 - Problema de assinatura com certificado digital

## [9.1.68.2]

**Novidade**
- DSML-614 NFC-e Componente - NT 2023.001 v1.20


## [9.1.67.8869]

**Plugin NFCe**

**Correções**
* DSML-513 - Ajuste nos links de consulta por chave e QRCode SEFAZ MG
* DSML-514 - Ajuste no link de consulta QRCode SEFAZ TO
* DSML-522 - Corrigido a mensagem de erro de falha temporária de conexão.

**Novidades**
* DSP4G-953 - compatibilizando com NT2023.001 - para mais detalhes [consulte](https://blog.tecnospeed.com.br/nf-e-e-nfc-e-nota-tecnica-2023-001-tributacao-monofasica-sobre-combustiveis/)

## [9.1.67.8867]

#leiame

**Novidades**
* DSP4G-784 - Compatibilizado com atualizações do componente indy

## [9.1.67.8864]

**Correções**
* DSML-376 -  Ajuste no tamanho da fonte do código da nota no retrato.rtm

**Novidades**
* DSP4G-612 - Atualização do link QRCODE e Consulta chave para a UF de MG conforme adequação de [servidores](http://www.sped.fazenda.mg.gov.br/spedmg/nfce/)
* DSPG4-627 - Disponibilizado método [GerarXMLMenuFiscal](https://tecnospeed.zendesk.com/knowledge/articles/10092055551639/pt-br?brand_id=360000386474) conforme Ato Diat 15/2022 SC

## [9.1.67.8859]

**Novidades**
* Adicionado campos cBarra e cBarraTrib ao DatasetItens para que possam ser utilizados em personalização de DANFCE (.rtm).

## [9.1.67.8858]

**Novidades**

* DSP4G-120 - Disponibilizado propriedade UseSecureBlackBox para ser usada no componente e a mesma configuração pode ser feita diretamente pela TLB pela propriedade EmailUseSecureBlackBox segue link para mais detalhes https://atendimento.tecnospeed.com.br/hc/pt-br/articles/360006006773
* DSP4G-37 - Disponibilizado propriedade ImprimirFreteProduto permitindo assim exibir o valor do frete a cada item da nota. Segue link para mais detalhes https://atendimento.tecnospeed.com.br/hc/pt-br/articles/360005918634
* DSP4G-26 - Correção na validação de fuso horário das rotinas CancelarNF e CancelarNFSubstituicao.
* DSP4G-280 disponibilizado método ConsultarGTIN referente a NT2022.001 v1.0. Para mais detalhes de como utilizar [ConsultarGTIN](https://tecnospeed.zendesk.com/knowledge/articles/7062037355031/pt-br?brand_id=360000386474)
* DSP4G-335 - Disponibilizado propriedade ImprimirISSQNProduto permitindo assim exibir o valor do ISSQN a cada item da nota. Segue link para mais detalhes https://atendimento.tecnospeed.com.br/hc/pt-br/articles/360005918634
* DSP4G-143 - Adicionado no menu do Windows a opção de desinstalação do pacote de dependências.
* DSP4G-304 - Adicionado ao pacote de instalação do componente o arquivo "IDs_LIBs_NFCe.ini" contendo os ID´s das OCXs.
* DSP4G-387: Disponibilizado método GetNomeCertificadoViaCaminho para obter o nome do certificado informando o caminho e a senha dele. Para mais detalhes de como utilizar [GetNomeCertificadoViaCaminho](https://tecnospeed.zendesk.com/knowledge/articles/8021891755287/pt-br?brand_id=360000386474)

**Correções**
* DSML-330 - Alteração da url do qrcode em nfceServidoresHom e nfceServidoresProd do estado DF;
* DSML-308 - Corrigindo nome da dependencia tecnoaccount;

## [9.1.67.8855]

* Corre&ccedil;&otilde;es e melhorias diversos.

## [9.1.67.8850]

* Corre&ccedil;&otilde;es e melhorias diversos.

## [9.1.67.8847]

* Corre&ccedil;&otilde;es e melhorias diversos.

## [9.1.67.8845]

* Corre&ccedil;&otilde;es e melhorias diversos.

## [9.1.67.8840]

**Novidades**
* DSP4G-26 - Remover função em duplicidade ValidarFusoHorario
* DSP4G-280 - NT 2022.001 v 1.0

## [9.1.67.8838]

* Corre&ccedil;&otilde;es e melhorias diversos.

## [9.1.67.8837]

**Correções**

*  DSML-169 - Cabeçalho SOAP para estado Ceará.

## [9.1.67.8833]

- DSP4G-34 - Validação da propriedade ExibirAcrescimoEDesconto para a impressão no formato 58mm
- DSML-92 - Propriedades escPos.

## [9.1.67.8829]

**Novidades**

- DCEV-814 - Implementada nova propriedade "ImprimirFrete" para impressão do valor total do frete no layout da DANFCE.
  - Documentação: https://atendimento.tecnospeed.com.br/hc/pt-br/articles/360005918634
  
**Correções**

* DCEV-524 - ESCPOS travando ao liberar componente  

## [9.1.67.8828]

**Novidades**

* DCIT-1116 - Adicionadas as propriedades CnpjSoftwareHouse e TokenSoftwareHouse para configuração de SoftwareHouse via arquivo .ini ou propriedades. Adicionada a propriedade DiagnosticMode no arquivo ini
* DCEV-814 - FRETE DANFCE


**Correções**
* DCEV-819 - Links quebrados no arquivo "leiame.txt"

## [9.1.67.8824]

**Novidades**

* DCEV-765 - Alterando link do QRCode para Minas Gerais conforme alteração feita pelo estado.

## [9.1.67.8821]

**Novidades**

* DCEV-319 - Disponibilizando versão com TecnoAccount

## [9.1.67.8818]

**Correções**

* DCEV-662 - Correção do relatório de impressão 58mm que estava sobrepondo os itens
* DCEV-702 - Corrigindo link de QRCode para Piauí
* DCEV-620 - Melhorias na impressão para não sobrepor texto do campo xMsg no QRCode

## [9.1.67.8813]

**Correções**

* DCEV-500 - Correção da impressão por ESCPOS para limpar quaisquer notas em memória antes de cada impressão, para evitar que a mesma nota seja impressa múltiplas vezes.

* DCEV-422 - Correção na propriedade ExibirAcrescimoEDesconto para listar somente quando possuir valor maior que zero

## [9.1.67.8809]

**Novidades**

* DC-3525 - Disponibilização do método EncodeBase64 no componente e OCX 
* DC-3569 - Compatibilizado com as NTs 2020.005 v1.0, 2020.005 v1.10 e 2020.005 v1.20
            <BR>Maiores informações: https://blog.tecnospeed.com.br/nota-tecnica-2020-005-nfe-nfce/

## [9.1.67.8803]

**Novidades**
- DC-2420 - Incluindo marca d'água "SEM VALOR FISCAL" na previsão de DANFCE (não afeta impressão e visualização de nota autorizada ou em contingência).

**Correções**

- DC-2924: ajusta rotina que retorna os dígitos do campo vUnCom. Se há mais de 4 casas decimais significativas, respeita o valor passado pelo cliente, do contrário trunca em 4 casas.
- DC-2994 - Tratar xml em contingência sem assinatura nos métodos Imprimir, Exportar, Visualizar e Editar a DANFCe.
- DC-2565 - Compatibilizado componente com NT 2020/006 v1.20.
Documentação: https://blog.tecnospeed.com.br/nota-tecnica-2020-006-da-nfe-e-nfce/
- DC-3017 - Tratamento encoding para salvar o xml em utf8 no método EnviarNFSincrono

## [9.1.65.8794]

**Correções**

- DC-2267: Correção no retorno da data de vencimento do certificado ao utilizar usando caminho do .pfx e senha.

- DC-2205: Corrigindo campo de observações no RTM Retrato.

## [9.1.64.8791]

* Corre&ccedil;&otilde;es e melhorias diversos.

## [9.1.64.8790]

**Correções**

- DC-2369 - Correção para o preenchimento dos campos xPed_I60 e nItemPed_I61 da vm60.

## [9.1.63.8789]

**Novidades**

- DC-2333 - Exibir as novas formas de pagamentos na DANFCe, para ficar compatível com a NT 2020/006 v1.00.

**Correções**
- DC-2370 - Voltar a exibir a quantidade do item no DANFCe com até 4 casas.



## [9.1.62.8785]

**Novidades**

- DC-2181 - Compatibilizado o componente com a NT 2020/006 v1.00. 
- Maiores informações sobre a NT https://blog.tecnospeed.com.br/nota-tecnica-2020-006-da-nfe-e-nfce/
- Para quem preenche a nota via Dataset ou TX2, os campos adicionados foram indIntermed_B25c, CNPJ_YB02 e idCadIntTran_YB03.


## [9.1.61.8782]

**Novidades**

- DC-2066 - Atualização das urls de consulta e qrCode para SC.


## [8.1.61.8781]

* Corre&ccedil;&otilde;es e melhorias diversos.

## [8.1.61.8780]

**Novidades:**

* #DC-1708 - Tratamento para casas decimais no campo vUnCom passado na impressão. 
* #DC-1526 - Adicionando nova propriedade de impressão nos parametros avançados - DiretorioImpressao.
             [Documentação](https://atendimento.tecnospeed.com.br/hc/pt-br/articles/360009039373).
* #DC-1257 - Adicionando nova propriedade de impressão - ExibirAcrescimoEDesconto.
             [Documentação.](https://atendimento.tecnospeed.com.br/hc/pt-br/articles/360005918634)

## [8.1.60.8774]

**Novidades:**

* #DC-550 - Compatibilizado o componente com o novo Delphi 10.4 Sydney.

## [8.1.59.8771]

**Correções**

* #DC-1155 - Resolver problema no seguinte cenário:
- Sistema feito em Delphi, com componente dropado em tela.
- O componente não estava instalado.
- Ao abrir tela com componente dropado, levantava exceção mesmo sem ter executado o componente.

* #DC-1279 - Correções no preenchimento dos xmls de comunicação com Integrador do Ceará.

**Novidades**

* DC-1248 - Adicionada a propriedade infCplQuebrarLinhaAut para configuração quebra de linha automatica. Documentação: https://atendimento.tecnospeed.com.br/hc/pt-br/articles/360005918634

* DC-1257 - Adicionando nova propriedade de impressão - ExibirAcrescimoEDesconto. Documentação:  
https://atendimento.tecnospeed.com.br/hc/pt-br/articles/360005918634

## [8.1.58.8762]

**Novidades**

* DC-991 - Alteração no retorno da validação de senha do método GetVencimentoCertificado.

* DC-1178 - Removido integração do Nota Segura do componente NFCe.

## [8.1.57.8754]

**Novidades**

* DC-647 - Disponibilizado instalação manual do componente no pacote full sources.

## [8.1.56.8747]

**Novidades**

* DC-470 - Arquivos XML da pasta Templates foram incorporados ao fonte do componente, isto vai facilitar a instalação 
           nos clientes. A partir desta versão não serão mais enviados arquivos XML de Templates.

* DC-646 - Alterado o nome do documento enviado a impressora ao imprimir.

## [8.0.55.8736]

* Corre&ccedil;&otilde;es e melhorias diversos.

## [8.0.55.8735]

* Corre&ccedil;&otilde;es e melhorias diversos.

## [8.0.55.8733]

* Corre&ccedil;&otilde;es e melhorias diversos.

## [8.0.55.8730]

* Corre&ccedil;&otilde;es e melhorias diversos.


































































