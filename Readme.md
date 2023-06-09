### SOBRE A EMPRESA

Com o slogan **"Declare sua independência. 3 Velocidades. 2 Rodas. 1 Destino: O seu"** a empresa Capital Bikeshare oferece aos residentes e visitantes uma opção de transporte conveniente, divertida e acessível, contando com mais de 5.000 bicicletas disponíveis em 600 estações distribuídas em sete jurisdições dos EUA: Washington, DC; Arlington, VA; Alexandria, VA; Condado de Montgomery, MD; Condado do Príncipe George, MD; Condado de Fairfax, VA; e a Igreja da Cidade de Falls, VA. Onde as bicicletas disponíveis podem ser destravadas de qualquer estação e devolvidas a qualquer estação do sistema, tornando-as ideais para viagens só de ida.

### SOBRE OS DADOS

Os dados utilizados no projeto correspondem aos empréstimos realizados no ano de 2022 e foram obtidos no site da empresa [Capital Bike Share](https://s3.amazonaws.com/capitalbikeshare-data/index.html)

### SOBRE O PROJETO

O objetivo deste projeto é extrair insights da base de dados sobre os aluguéis de bicicletas disponibilizada  pela empresa Capital Bikeshare utilizando linguagem SQL. Para isso as 5 perguntas abaixo foram respondidas:

**1) Qual tipo de bicicleta foi a mais utilizada e qual a menos utilizada?**
**2) Qual foi a quantidade de aluguéis realizadas em cada mês?**
**3) Qual foi o número de aluguéis e a média de tempo de uso das bicicletas por dia?**
**4) Quais são os horários de pico no empréstimo de bicicletas?**
**5)Qual foi a quantidade de aluguéis e a média de tempo de aluguel por tipo de membro?**

## INSIGHTS

A partir das análises utilizando SQL os seguintes insights foram obtidos:
* As bicicletas do tipo "clássicas" representam a maior parte dos empréstimos realizadas (78,55%)
* O maior número de empréstimos ocorre entre junho e setembro que corresponde ao verão e início do outono nos EUA, sendo que no inverno (dezembro e fevereiro) o número de empréstimos apresenta os menores resultados
* Os horários de pico no empréstimo das bicicletas ocorrem no fim da tarde entre as 17 e as 18 hs
* Os usuários registrados como **Membros** correspondem a maior quantidade dos empréstimos realizados (aproximadamente 59%)

>Obs: As queries SQL utilizadas para responder as perguntas, bem como os arquivos csv contendo as respostas estão em outros arquivos deste repositório