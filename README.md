Sistema de HelpDesk - Chamados Prefeitura de Joaçaba

Este sistema foi desenvolvido, e ainda está numa fase beta (bemmmm beta), para que os chamados/solicitações ao setor de TI da prefeitura, fiquem centralizados em somente um local.
Como atualmente é feito em sistema terceiro, que não tem toda a qualidade necessária, este sistema vem a calhar, podendo ser cadastrado até equipamentos nele (ativos).
Como já dito, é bem simples, mas, o esboço a ser apresentado como trabalho de disciplina Pratica extensionista 4, bem como até mesmo aos gestores da prefeitura.

O sistema está hospedado em uma virtualização nos servidores da prefeitura de Joaçaba, cujo o link atualmente para acesso é https://suporte.joacaba.sc.gov.br.

Foi gerado certificado digital para o mesmo, visando utilizar-se da tecnologia HTTPS;

Aproveitou-se ainda, a possibilidade de criar aplicação do tipo PWA, onde é possível instalar em computadores e celulares, uma aplicação, que roda diretamente ao site de suporte, facilitando a solicitação a ser feita ao setor futuramente. 

O manifest encontra-se na pasta principal, como o APK de teste para android.
O service worker também encontra-se na pasta principal, assim como o arquivo BD.sql, do sistema em si.
Testado em maquina virtual android (Android Studio) (o APK).

Quanto a responsividade, foi elencada as tags para tal, e foi alterado, contudo, apresentou-se ainda "quebrada", o qual, será analisado o motivo do porque estar quebrado, ou na pior das hipóteses, será refeito do "zero" os CSS's.



