FROM qfortier/mp2i-tex:2.0.0

USER root

RUN apt-get install texlive-luatex

USER ${NB_USER}
WORKDIR ${HOME}
