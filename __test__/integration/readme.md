/*test end to end

    Queremos a integração entre os componentes

    jest framework de teste

    rotas e recursos
    recursos são as partes que são responsavel por chamar os serviços externos

    quando se usa api api também pode ser um serviço externo como a api do github

    1 Usando o jest para fazer o mock das depedências externas, usa o axios para fazer request para o github,  usando o jest para mockar o axios e simular uma resposta que a gente espere. Em vez de chamar o github de verdade a gente chama um mock ou stub. Usa o superteste para fazer o request e usa o axios para simular a resposta. Mockar um modulo. Qual o problema disso, codigo acoplado, você não tem controle sobre o seu código. Tenta não fazer, com isso você tem um debito técnico. Nós não estamos testando de ponta a ponta. Quando usa o Jest para substituir o Axios.


    2 injeção de dependência, a minha arquitetura do código meu designer do código permite que eu substitua o axios por uma coisa fake, onde possa injetar uma resposta de volta

    3(mais indicado) Usa o nock que é um modulo  que permite inteceptar http e adicionar uma resposta que a gente queira de volta. Ele simula mais o mundo real. Cada url terá um interceptor por padrão. Você substitui o serviço externo por algo que você espera o nock.

    Banco para testes de integração, eu insiro a massa de dados pelo código e inicio o teste, depois eu deleto os dados da massa pelo código para o proximo teste ter o banco limpo. Teste que batemos no banco de dados.

*/