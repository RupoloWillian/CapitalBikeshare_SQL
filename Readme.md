### SOBRE A EMPRESA

Com o slogan **"Declare sua independência. 3 Velocidades. 2 Rodas. 1 Destino: O seu"** a empresa [Capital Bikeshare](https://capitalbikeshare.com/) oferece aos residentes e visitantes uma opção de transporte conveniente, divertida e acessível, contando com mais de 5.000 bicicletas, elétricas e clássicas, disponíveis em 600 estações distribuídas em sete jurisdições dos EUA: Washington, DC., Condado de Arlington, VA, Alexandria, VA, Condado de Montgomery, MD, Condado de Prince George's, MD, Condado de Fairfax, VA e a cidade de Falls Church, VA. Onde as bicicletas disponíveis podem ser emprestadas de qualquer estação e devolvidas a qualquer estação do sistema.
	Atualmente a empresa oferece aos seus clientes 4 tipos de planos:
- **“Single Trip”**: Ideal para quem quer realizar apenas uma viagem, tendo um custo de $ 1 para desbloquear e $ 0,05/min em uma bicicleta clássica ou $ 0,15/min em uma bicicleta elétrica.
- **“Day Pass”**: Ideal para turistas. Com estes plano, por apenas 8$, você poderá desfrutar de viagens de até 45 minutos em uma bicicleta clássica sem pagar nenhuma taxa adicional, porém, caso queira pedalar por mais tempo será necessário pagar US$ 0,05/minuto. Para desfrutar de uma bicicleta elétrica a taxa é de $ 0,10/min. Neste plano não é cobrado taxa para desbloquear as bicicletas.
- **“30 Days Membership”**: Ideal para turistas ou pessoas que ficarão na cidade por alguns dias. Com este plano, por apenas 20$, você poderá desfrutar de viagens de até 45 minutos em uma bicicleta clássica sem pagar nenhuma taxa adicional, porém, caso queira pedalar por mais tempo será necessário pagar US$ 0,05/minuto. Para desfrutar de uma bicicleta elétrica a taxa é de $ 0,10/min. Neste plano não é cobrado taxa para desbloquear as bicicletas.
- **“Anual Membership”**: Ideal para moradores área metropolitana de DC e outros usuários frequentes. Este plano conta com os mesmos benefícios do plano “30 Days Membership” porém com um preço de $7,92/mês.

### SOBRE OS DADOS

Os dados utilizados no projeto correspondem aos empréstimos realizados no ano de 2022 e foram obtidos no site da empresa [Capital Bike Share](https://s3.amazonaws.com/capitalbikeshare-data/index.html)

### SOBRE O PROJETO

O objetivo deste projeto é extrair insights da base de dados sobre os aluguéis de bicicletas disponibilizada  pela empresa Capital Bikeshare utilizando linguagem SQL. Para isso as 5 perguntas abaixo foram respondidas:

**1) Qual tipo de bicicleta foi a mais utilizada?

2) Quais meses foram responsáveis pelos maiores e menores números de empréstimos? 

3) Qual foi o número de aluguéis e a média de tempo de uso das bicicletas por dia?

4) Quais são os horários de pico no empréstimo de bicicletas?

5) Qual foi a quantidade de aluguéis e a média de tempo de aluguel por tipo de membro?

6) Qual foi a quantidade de aluguéis realizadas em cada mês? Qual foi a variação em relação ao mês anterior?**


## INSIGHTS

A partir das análises utilizando SQL os seguintes insights foram obtidos:
* Nos meses de junho a agosto tivemos os meses com a maior quantidade de empréstimos, sendo este período correspondente ao verão e início do outono nos EUA, enquanto nos meses de dezembro, janeiro e fevereiro tivemos o menor número de empréstimos, período correspondente ao inverno nos EUA
* Para ambos os tipos de membros temos que o horário de pico no empréstimo das bicicletas ocorreu no período das 17 hs, o que pode indicar que as bicicletas estão sendo utilizadas para lazer de fim de tarde ou locomoção do trabalho para casa após o fim do expediente.
* As bicicletas clássicas são responsáveis por aproximadamente 78,55% dos empréstimos no ano de 2022 (2.731.020 empréstimos).
* Os usuários do tipo "membro" são responsáveis pela maior parte dos empréstimos realizados no ano de 2022 (2.045.105 empréstimos representando 58,82%).
* É possível observar que no final do inverno (fevereiro) e início da primavera (março) temos um crescimento mais acentuado nos empréstimos em relação ao mês anterior, tendo a manter uma estabilidade nos meses de junho a setembro (período correspondente ao verão) e tende a diminuir novamente no final do ano (período correspondente ao outono e início do inverno).


>Obs: As queries SQL utilizadas para tratamento dos dados e responder as perguntas, bem como os arquivos csv contendo as respostas estão em outros arquivos deste repositório
