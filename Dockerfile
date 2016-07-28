FROM scratch

COPY ./registry/registry /bin/registry
COPY ./registry/config-example.yml /etc/docker/registry/config.yml

VOLUME ["/var/lib/registry"]
EXPOSE 5000

ENTRYPOINT ["/bin/registry"]
CMD ["serve", "/etc/docker/registry/config.yml"]
