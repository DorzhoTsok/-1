FROM debian
COPY ./script.sh ./script.sh
RUN touch kek && ln kek lol
RUN chmod ugo+x ./script.sh
CMD ./script.sh
