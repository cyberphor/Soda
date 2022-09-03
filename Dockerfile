FROM ghcr.io/security-onion-solutions/python:3-slim

RUN pip3 install netmiko

RUN mkdir /opt/so2ban

COPY so2ban.py /opt/so2ban

RUN python3 /opt/so2ban/so2ban.py --install

RUN python3 /opt/so2ban/so2ban.py --start