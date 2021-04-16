FROM pandoc/ubuntu-latex:2.13
RUN apt-get update && apt-get install fonts-noto-cjk
RUN tlmgr update --self && tlmgr install ctex footnotebackref mdframed zref needspace sourcesanspro sourcecodepro titling pagecolor fvextra
