            Language: pt

            Funcionalidade: Cadastro de cliente na EBAC-SHOP
            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra

            Cenário: Cadastro com todos os dados obrigatórios marcados por * preenchidos corretamente
            Dado que estou na página de cadastro da EBAC-SHOP
            Quando eu preencho todos os campos obrigatórios nome, sobrenome, cpf, data de nascimento marcados com * com dados válidos
            E clico no botão "Cadastrar"
            Então o sistema deve concluir o cadastro deve com sucesso

            Cenário: Cadastro com e-mail em formato inválido
            Dado que estou na página de cadastro da EBAC-SHOP
            Quando eu preencho os campos obrigatórios nome, sobrenome, cpf, data de nascimento marcados com * e insiro um e-mail com formato inválido
            E clico no botão "Cadastrar"
            Então o sistema deve mostrar uma mensagem de erro informando "Confira seus dados Formato de e-mail inválido"

            Cenário: Cadastro com campos obrigatórios vazios
            Dado que estou na página de cadastro da EBAC-SHOP
            Quando eu deixo campos obrigatórios nome, sobrenome, cpf, data de nascimento vazios
            E clico no botão "Cadastrar"
            Então o sistema deve mostrar uma mensagem de alerta informando "Todos os campos obrigatórios devem ser preenchidos"

            Esquema do Cenário: Tentativa de cadastro com diferentes combinações de dados

            Dado que estou na página de cadastro da EBAC-SHOP
            Quando eu insiro os seguintes campos obrigatorios: <"nome"> <"sobrenome"> <"cpf"> <"data de nascimento"> <"email"> com dados validos
            E clico no botão "Cadastrar"
            Então O sistema deve mostrar uma <mensagem>

            Exemplos:
            | "nome" | "sobrenome" | "cpf"            | "data de nascimento" | "email"            | "mensagem"                                           |
            | "João" | "Silva"     | "021.250.555-32" | "01.05.1998"         | "joao@ebac.com.br" | "Cadastro concluido com sucesso"                     |
            | "João" | "Silva"     | "021.250.555-32" | -                    | "joao@ebac.com.br" | "Todos os campos obrigatórios devem ser preenchidos" |
            | "João" | "Silva"     | "021.250.555-32" | "01.05.1998"         | -                  | "Confira seus dados Formato de e-mail inválido"      |