# 📚 AlttabCorp - Template de Documentação

<div align="center">

![AlttabCorp Logo](https://avatars.githubusercontent.com/u/89790306?s=96&v=4)

[![License](https://img.shields.io/github/license/Alttabcorp/Documents)](LICENSE)
[![Docker](https://img.shields.io/badge/Docker-Ready-blue)](Dockerfile)
[![Template](https://img.shields.io/badge/Template-Ready-green)](templates/)

</div>

## 🎯 Sobre este Repositório

Este repositório serve como um template de documentação para projetos da AlttabCorp. Ele pode ser utilizado de duas maneiras:

1. **Como Submódulo**: Incorporado em outros projetos para manter a documentação
2. **Como Repositório Central**: Para gerenciar a documentação de todos os projetos da empresa

Utilizamos Docker com Texlive para garantir consistência e qualidade na geração de documentação.

## 🌟 Características

- **Template Padronizado**: Estrutura base para todos os projetos da empresa
- **Suporte Multi-formato**: LaTeX, Markdown e outros formatos de documentação
- **Ambiente Dockerizado**: Garantia de consistência na geração de documentos
- **Integração Contínua**: Pipelines automatizadas para validação de documentação
- **Versionamento**: Controle de versão eficiente por projeto
- **Flexibilidade**: Pode ser usado como submódulo ou repositório central

## 🗂️ Estrutura do Repositório

```
Documents/
├── .github/          # Configurações do GitHub e workflows
├── .devcontainer/    # Configurações para desenvolvimento
├── templates/        # Templates de documentação
│   ├── latex/       # Templates LaTeX
│   └── markdown/    # Templates Markdown
├── src/             # Suas documentações e projetos em LaTeX/Markdown
└── docker-compose.yml # Orquestração do ambiente Docker
```

## 🚀 Como Usar

### Opção 1: Como Submódulo

1. **Adicione como Submódulo**:
   ```bash
   git submodule add https://github.com/Alttabcorp/Documents.git docs
   ```

2. **Inicialize e Atualize**:
   ```bash
   git submodule update --init --recursive
   ```

3. **Crie os Links Simbólicos Necessários**:
   ```bash
   # Crie links simbólicos para os arquivos de configuração necessários
   ln -s docs/.devcontainer .devcontainer
   ln -s docs/Dockerfile Dockerfile
   ```

4. **Configure o Ambiente**:
   - Abra o projeto no VSCode
   - Instale a extensão "Remote - Containers" se ainda não tiver
   - Quando solicitado, clique em "Reopen in Container" ou use o comando "Remote-Containers: Reopen in Container"
   - O VSCode irá automaticamente configurar o ambiente usando o devcontainer

   > **Nota**: Os links simbólicos são necessários para que o ambiente de desenvolvimento e o Docker funcionem corretamente no projeto principal.

### Opção 2: Como Repositório Central

1. **Clone o Repositório**:
   ```bash
   git clone https://github.com/Alttabcorp/Documents.git
   cd Documents
   ```

2. **Configure o Ambiente**:
   - Abra o projeto no VSCode
   - Instale a extensão "Remote - Containers" se ainda não tiver
   - Quando solicitado, clique em "Reopen in Container" ou use o comando "Remote-Containers: Reopen in Container"
   - O VSCode irá automaticamente configurar o ambiente usando o devcontainer

### Uso do Template

1. Copie o template apropriado da pasta `templates/` para a pasta `src/`
2. Renomeie e edite conforme seu projeto
3. Gere o PDF ou outro formato desejado usando o ambiente Docker
4. Commit e push das alterações

## 📝 Guia de Contribuição

1. **Fork** do repositório
2. Crie uma **branch** para sua feature (`git checkout -b feature/nome-da-feature`)
3. Commit suas alterações (`git commit -m 'Adiciona nova feature'`)
4. Push para a branch (`git push origin feature/nome-da-feature`)
5. Abra um **Pull Request**

## 🔍 Boas Práticas

- Mantenha a documentação atualizada
- Siga os padrões de formatação estabelecidos
- Use nomes descritivos para arquivos e pastas
- Inclua exemplos quando possível
- Mantenha a estrutura do template
- Ao usar como submódulo, mantenha-o atualizado regularmente

## 🛠️ Ferramentas Recomendadas

- VSCode com extensões:
   - LaTeX Workshop
   - Docker
   - Markdown All in One
   - GitLens
   - Remote - Containers

## 📄 Licença

Este projeto está sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.

## 📞 Contato e Suporte

- Email: alttabcorp@gmail.com
- GitHub: [@AlttabCorp](https://github.com/Alttabcorp)
- Website: [alttabcorp.com.br](https://alttabcorp.github.io/Alttab_web/)

---

<div align="center">

**Made with ❤️ by AlttabCorp**

[Contribua com o Projeto](https://github.com/sponsors/bodescorp)

</div>
