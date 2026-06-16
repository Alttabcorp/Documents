# 📚 AlttabCorp - Template de Documentação

<div align="center">

![AlttabCorp Logo](https://avatars.githubusercontent.com/u/89790306?s=96&v=4)

[![License](https://img.shields.io/github/license/Alttabcorp/Documents)](LICENSE)
[![Docker](https://img.shields.io/badge/Docker-Ready-blue)](Dockerfile)
[![code-server](https://img.shields.io/badge/code--server-VS%20Code%20no%20browser-purple)](https://github.com/coder/code-server)

</div>

## 🎯 Sobre este Repositório

Template de documentação da AlttabCorp com ambiente self-hosted completo:
**VS Code no browser + LaTeX + IA + Git**, tudo em Docker.

```
Servidor local
└── Docker
    └── code-server (VS Code no browser)
        ├── LaTeX Workshop (compila + preview PDF)
        ├── Continue.dev (IA — Copilot local/API)
        └── Git integrado → GitHub
```

Acesse `http://ip-do-servidor:8080` de qualquer dispositivo na rede.

---

## 🚀 Setup inicial

### 1. Clone o repositório

```bash
git clone https://github.com/Alttabcorp/Documents.git
cd Documents
```

### 2. Configure as variáveis de ambiente

```bash
cp .env.example .env
```

Edite o `.env` com sua senha e dados do Git:

```env
CODE_SERVER_PASSWORD=minha_senha_segura
GIT_NAME=Seu Nome
GIT_EMAIL=seu@email.com
```

### 3. (Opcional) Configure SSH para push no GitHub

Descomente a linha do volume SSH no `docker-compose.yml`:

```yaml
- ~/.ssh:/home/coder/.ssh:ro
```

Isso monta sua chave SSH local dentro do container, permitindo `git push` sem senha.

### 4. Suba o container

```bash
docker compose up -d --build
```

A primeira build demora alguns minutos (TeXLive + code-server + extensões).

### 5. Acesse

Abra no browser: `http://localhost:8080` (ou o IP do servidor)

---

## 📁 Estrutura

```
Documents/
├── src/              # Seus arquivos .tex (montado no workspace do VS Code)
├── templates/
│   ├── latex/        # Templates LaTeX
│   └── markdown/     # Templates Markdown
├── Dockerfile        # texlive/texlive + code-server + extensões
├── docker-compose.yml
├── .env.example      # Modelo de variáveis de ambiente
└── .gitignore
```

---

## ✍️ Fluxo de trabalho diário

1. Acesse `http://ip-do-servidor:8080` no browser
2. Edite seu `.tex` — LaTeX Workshop compila automaticamente e mostra o PDF ao lado
3. Use o Continue.dev (ícone na barra lateral) para assistência de IA
4. Commit e push pelo terminal integrado:
   ```bash
   git add .
   git commit -m "atualiza artigo"
   git push
   ```

---

## 🔧 Comandos úteis

```bash
# Ver logs do container
docker compose logs -f

# Parar
docker compose down

# Rebuild após mudanças no Dockerfile
docker compose up -d --build

# Entrar no container via terminal
docker exec -it latex-codeserver bash
```

---

## 🛠️ Extensões pré-instaladas

| Extensão | Função |
|---|---|
| **LaTeX Workshop** | Compilação, preview PDF, syntax highlight |
| **Continue.dev** | IA integrada (suporta Ollama, OpenAI, Anthropic, etc.) |

Para instalar mais extensões: dentro do code-server use `Ctrl+Shift+X` normalmente, ou adicione ao `Dockerfile`:

```dockerfile
RUN code-server --install-extension <publisher.extension>
```

---

## 📄 Licença

MIT — veja [LICENSE](LICENSE).

---

<div align="center">

**Made with ❤️ by AlttabCorp**

[@AlttabCorp](https://github.com/Alttabcorp)

</div>
