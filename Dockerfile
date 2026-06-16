# Base oficial com TeXLive completo (inclui suporte a português, fontes, etc.)
FROM texlive/texlive:latest

# Dependências do sistema
RUN apt-get update && apt-get install -y \
    sudo \
    curl \
    git \
    openssh-server \
    && rm -rf /var/lib/apt/lists/* \
    && mkdir -p /var/run/sshd

# Instala code-server (VS Code no browser)
RUN curl -fsSL https://code-server.dev/install.sh | sh

# Cria coder com UID 1000 (igual ao garcon no host) — evita conflito de ownership nos volumes
RUN (getent passwd 1000 | cut -d: -f1 | xargs -I{} userdel -r {} 2>/dev/null || true) \
    && useradd -u 1000 -m -s /bin/bash coder \
    && echo "coder ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/coder \
    && chown -R coder:coder /home/coder

# Copia e permissiona o entrypoint ainda como root
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

USER coder

# Pré-instala extensões: LaTeX Workshop + Continue.dev (IA)
RUN code-server --install-extension James-Yu.latex-workshop \
    && code-server --install-extension Continue.continue

WORKDIR /home/coder/workspace

EXPOSE 8080 22

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
