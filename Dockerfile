FROM cassandra:4.0



HEALTHCHECK --interval=5s --timeout=5s --retries=60 CMD ['cqlsh', '-e', 'describe keyspaces']


CMD ["cassandra", "-f"]