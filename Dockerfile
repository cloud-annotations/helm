FROM node:15.0.1

EXPOSE 9000

RUN git clone https://github.com/cloud-annotations/iris.git /iris
RUN cd /iris && make install build

WORKDIR /projects

ENV SPA_ROOT=/iris/packages/iris-app/build

ENTRYPOINT [ "node" ]
CMD [ "/iris/iris/dist/index.js" ]
