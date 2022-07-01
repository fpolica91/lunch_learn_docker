FROM baseImage

# base structure and flow of a dockerfile

WORKDIR /app
ENV FLASK_APP app.py
ENV FLASK_ENV production

COPY source dest

RUN command

COPY source dest

CMD [ "executable" ]