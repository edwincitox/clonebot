FROM python:alpine
LABEL name="edwincitox:clonebot" description="telegram bot for copy google drive" maintainer="niwde.2580@gmail.com"
ENV TZ=America/Guayaquil LANG=es_EC.UTF-8 LANGUAGE=es_EC.UTF-8 LC_ALL=es_EC.UTF-8
#RUN locale-gen es_EC.UTF-8
RUN echo "America/Guayaquil" >  /etc/timezone
WORKDIR /clonebot
ADD ./clonebot .
RUN pip3 install --no-cache-dir -r requirements.txt && chmod +x gclone
CMD ["python3", "clonebot.py"]
