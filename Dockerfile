FROM rastasheep/ubuntu-sshd:18.04

RUN apt update && apt install sshpass lsyncd -y

EXPOSE 22

CMD ["/usr/sbin/sshd"]

