FROM node:15.0.1

EXPOSE 9000

RUN npm install -g @iris/cli --unsafe-perm

WORKDIR /project

ENTRYPOINT [ "iris" ]
CMD [ "start" ]