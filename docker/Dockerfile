FROM pandoc/latex:3.1.1.0-ubuntu
RUN tlmgr update --self \
    && tlmgr install ctex footnotebackref mdframed zref needspace sourcesanspro sourcecodepro titling pagecolor fvextra koma-script lineno hardwrap catchfile\
    && rm -rf /opt/texlive/texdir/tlpkg/backups

RUN apt-get update \
    && apt-get install fonts-noto-cjk \
    && rm -rf /var/lib/apt/lists/*

# Templates are installed in '/.pandoc'.
ARG TEMPLATES_DIR=/.pandoc/templates

RUN mkdir -p ${TEMPLATES_DIR} && \
    # Links for the root user
    ln -s /.pandoc /root/.pandoc
COPY eisvogel-2.4.1.latex ${TEMPLATES_DIR}/eisvogel-2.4.1.latex
