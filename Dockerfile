#FROM resin/raspberry-pi-python:3-onbuild
FROM python:3-onbuild

CMD ["python", "-u", "start.py"]
