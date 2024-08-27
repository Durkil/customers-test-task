FROM python:3

COPY . /customer

WORKDIR /customer

RUN pip install --no-cache-dir -r requirements.txt

RUN pip install jupyter pandas

EXPOSE 8888

CMD ["jupyter", "notebook", "--ip=0.0.0.0","--port=8888", "--no-browser", "--allow-root"]

