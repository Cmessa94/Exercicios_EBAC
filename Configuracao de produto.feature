Language: Pt

Funcionalidade: Configuração de produto na EBAC-SHOP
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Cenário: Seleção obrigatória de cor, tamanho e quantidade
Dado que estou na página de um Produto 
Quando não seleciono cor, tamanho ou quantidade
E tento adicionar o produto ao carrinho
Então devo ver uma mensagem de erro informando que todos os campos são obrigatórios

Cenário: Limite máximo de 10 produtos por venda
Dado que estou na página de um Produto
Quando seleciono uma quantidade maior que 10
Então o sistema deve impedir a adição ao carrinho
E deve exibir uma mensagem informando que o limite é de 10 unidades por venda

Cenário: Botão “limpar” deve restaurar o estado original
Dado que selecionei cor, tamanho e quantidade para um Produto 
Quando clico no botão “limpar”
Então todas as seleções devem ser removidas
E os campos devem voltar ao seu estado inicial