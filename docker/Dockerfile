FROM pandoc/latex:2.19.2.0-ubuntu
RUN apt-get update && apt-get install fonts-noto-cjk
RUN tlmgr update --self && tlmgr install ctex footnotebackref mdframed zref needspace sourcesanspro sourcecodepro titling pagecolor fvextra koma-script lineno
# Templates are installed in '/.pandoc'.
ARG TEMPLATES_DIR=/.pandoc/templates

RUN mkdir -p ${TEMPLATES_DIR} && \
    # Links for the root user
    ln -s /.pandoc /root/.pandoc
COPY eisvogel-2.0.0.latex ${TEMPLATES_DIR}/eisvogel-2.0.0.latex
