#language: pt

@full_smoke
Funcionalidade: Fazer a busca de empregados cadastrado


@get_employeds
Cenario: Validar resposta do endpoint employee
    Dado que eu queira fazer uma requisição da API /employee
    Quando realizar a chamada GET 
    Então deve ser listados todos os funcionarios


@get_employee
Cenario: Validar resposta do endpoint employee buscando por id
    Dado que eu queira fazer uma requisição da API /id
    Quando realizar a chamada GET com id especifico
    Então deve retornar o id selecionado com status 200


@post_create_employee
Cenario: Cadastrar um novo funcionario 
    Dado que eu fiz um novo cadastrado de um funcionario
    Quando realizar a chamada POST com os dados preenchidos
    Então deve retornar status code 200/201 com um novo funcionario criado


@put_alteration_employee
Cenario: Fazer a alteração de algum dado de funcionario cadastrado
    Dado que eu queira efetuar uma alteração de um funcionario
    Quando realizar a chamada PUT com os dados alterados
    Então deve retornar status code 200/201 com os dados alterados


@delete_employee
Cenario: Fazer a exclusão de um funcionario especifico
    Dado que eu queira efetuar e exclusão de um funcionario
    Quando realizar a chama DELETE com o id desejado
    Então deve retornar status code 200 confirmando a exclusão do id selecionado