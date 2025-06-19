# Usando uma imagem oficial do LaTeX
FROM texlive/texlive:latest

# Instalar pacotes essenciais
RUN apt-get update && apt-get install -y \
    texlive-latex-extra \
    texlive-fonts-recommended \
    texlive-lang-portuguese \
    sudo \
    gosu \
    && rm -rf /var/lib/apt/lists/*

# Criar diretório e definir workdir
WORKDIR /home/document_project/app

# Script corrigido para ajustar permissões
RUN echo '#!/bin/bash\n\
if [ -n "$LOCAL_USER_ID" ]; then\n\
    USER_ID=${LOCAL_USER_ID:-1000}\n\
    GROUP_ID=${LOCAL_GROUP_ID:-1000}\n\
    USER_NAME=${LOCAL_USER_NAME:-latex}\n\
    \n\
    # Criar usuário e grupo se não existirem\n\
    groupadd --gid $GROUP_ID $USER_NAME 2>/dev/null || true\n\
    useradd --uid $USER_ID --gid $GROUP_ID -m -s /bin/bash $USER_NAME 2>/dev/null || true\n\
    \n\
    # Configurar sudo\n\
    echo "$USER_NAME ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/$USER_NAME\n\
    \n\
    # Ajustar permissões ANTES de executar o comando\n\
    chown -R $USER_NAME:$USER_NAME /home/document_project\n\
    \n\
    # Executar comando como o usuário criado\n\
    exec gosu $USER_NAME "$@"\n\
else\n\
    # Fallback para usuário padrão\n\
    chown -R $(id -u):$(id -g) /home/document_project\n\
    exec "$@"\n\
fi' > /usr/local/bin/entrypoint.sh && chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
CMD ["pdflatex", "main.tex"]

