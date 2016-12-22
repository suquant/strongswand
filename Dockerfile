FROM alpine:edge

# install common packages
RUN apk add --no-cache linux-headers linux-grsec strongswan iptables openssl bash curl

ENTRYPOINT ["ipsec"]
CMD ["start", "--nofork"]


EXPOSE 1812/udp 1813/udp 3799/udp

# Usage: starter [--nofork] [--auto-update <sec>]
#                [--debug|--debug-more|--debug-all|--nolog]
#                [--attach-gdb] [--daemon <name>]
#                [--conf <path to ipsec.conf>]