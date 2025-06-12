            Language: pt

            Funcionalidade: Login na plataforma EBAC-SHOP
            Como cliente da EBAC-SHOP
            Quero fazer o login na plataforma
            Para visualizar meus pedidos

            Cenário: Login com dados válidos
            Dado que estou na página de login da EBAC-SHOP
            Quando eu insiro um e-mail e senha válidos
            E clico no botão "Entrar"
            Então o sistema deve redirecionar o usuário para a tela de checkout

            Cenário: Login com dados inválidos
            Dado que estou na página de login da EBAC-SHOP
            Quando insiro um e-mail ou senha inválidos
            E clico no botão "Entrar"
            Então o sistema deve mostra uma mensagem de alerta dizendo "Usuário ou senha inválidos"

            Esquema do Cenário: Tentativa de login com diferentes combinações de e-mail e senha
            Dado que estou na página de login da EBAC-SHOP
            Quando eu insiro o e-mail <"email"> e a <"senha"> 
            E clico no botão "Entrar"
            Então o sistema deve mostrar uma <"mensagem">

            Exemplos:
            | "email"                | "senha"         | "mensagem"|   
            | "cliente@ebac.com"    | "senha123"      | "Bem vindo de volta Cliente"|
            | "cliente@ebac.com"    | "senhaErrada"   | "Usuário ou senha inválidos" |
            
