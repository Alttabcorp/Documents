# Usando uma imagem oficial do LaTeX
FROM texlive/texlive:latest

# Instalar pacotes essenciais
RUN apt-get update && apt-get install -y \
    texlive-latex-extra \
    texlive-fonts-recommended \
    texlive-lang-portuguese \
    sudo \
    && rm -rf /var/lib/apt/lists/*

# Criar diretório e definir workdir
WORKDIR /home/document_project/app

# Configurar sudo para o usuário texlive
RUN echo "texlive ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/texlive

# Ajustar permissões do diretório do projeto
RUN chown -R texlive:texlive /home/document_project

# Mudar para o usuário texlive
USER texlive

CMD ["bash"]
#pdflatex main.tex

