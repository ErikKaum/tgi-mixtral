FROM ghcr.io/huggingface/text-generation-inference:1.3

RUN text-generation-server download-weights TheBloke/dolphin-2.5-mixtral-8x7b-GPTQ

ADD requirements.txt .
RUN pip3 install -r requirements.txt

ADD app.py .

ENTRYPOINT python3 -u app.py