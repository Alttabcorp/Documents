# Repositório de Documentação - Docker com Texlive

Este repositório utiliza Docker e Texlive para gerenciar a documentação dos nossos projetos. Cada branch deste repositório representa um documento de projeto distinto, permitindo um controle de versão eficiente e a possibilidade de trabalhar em diferentes versões de documentação simultaneamente.

## Estrutura do Repositório

- **Dockerfile**: Arquivo de configuração que define a imagem Docker com Texlive e suas dependências, garantindo um ambiente consistente para a compilação de documentos.
- **Branches**: Cada branch é dedicado a um projeto específico, contendo a documentação correspondente em LaTeX. Isso facilita o gerenciamento e a colaboração em diferentes versões de documentos.
- **Documentos**: Cada branch contém arquivos `.tex`, imagens e bibliografias necessárias para a documentação do projeto.

## Como Usar

1. **Clone o Repositório**:
   ```bash
   git clone https://github.com/Alttabcorp/Documents.git
   cd Documents
   ```

2. **Escolha um Branch**:
   ```bash
   git checkout nome-do-branch
   ```

3. **Construir a Imagem Docker**:
   ```bash
   docker build -t texlive-docs .
   ```

4. **Executar o Contêiner**:
   ```bash
   docker run -it --rm -v $(pwd):/docs texlive-docs
   ```

5. **Compilar Documentos**: Acesse a pasta `/docs` dentro do contêiner para compilar seus arquivos LaTeX.

## Vantagens da Estratégia

- **Controle de Versão**: Utilizar branches para cada documento de projeto permite um controle de versão claro e facilita a colaboração entre diferentes membros da equipe.
- **Isolamento**: Cada branch pode ter suas próprias dependências e configurações, evitando conflitos entre projetos.
- **Facilidade de Uso**: O uso de Docker garante que todos os colaboradores tenham um ambiente de desenvolvimento consistente, reduzindo problemas de compatibilidade.

## Contribuições

Convidamos todos a contribuir com melhorias, sugestões ou novos exemplos de documentação. Este repositório é um espaço colaborativo para todos que desejam manter suas documentações organizadas e acessíveis.

## Contato

Para dúvidas ou sugestões, entre em contato através do e-mail [seu-email@exemplo.com].

Agradeço pela sua visita e espero que este repositório seja útil para a documentação dos seus projetos!
