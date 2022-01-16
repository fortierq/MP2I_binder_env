FROM qfortier/mp2i-tex:2.0.0

USER root

RUN apt-get install texlive-luatex build-essential imagemagick

RUN chown -R vscode /workspace; \
    grep -v PDF /etc/ImageMagick-6/policy.xml > /tmp/policy.xml; \
    sudo rm /etc/ImageMagick-6/policy.xml; \
    sudo mv /tmp/policy.xml /etc/ImageMagick-6/policy.xml

USER ${NB_USER}
WORKDIR ${HOME}
