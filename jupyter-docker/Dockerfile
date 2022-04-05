FROM python:3.7.7

RUN pip3 install --upgrade pip && \
pip3 install --no-cache-dir jupyter && \
pip install jupyter_contrib_nbextensions && \
jupyter contrib nbextension install --user && \
pip install jupyter_nbextensions_configurator && \
jupyter nbextensions_configurator enable --user

ADD jupyter_notebook_config.py /root/.jupyter/jupyter_notebook_config.py

RUN mkdir -p /opt/notebooks

EXPOSE 8888

VOLUME /opt/notebooks

CMD jupyter notebook --allow-root --no-browser /opt/notebooks
