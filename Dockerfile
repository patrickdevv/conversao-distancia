FROM python:3.9.1
WORKDIR ./app
COPY ./requirements.txt requirements.txt
RUN python -m pip install -r requirements.txt
COPY . .
EXPOSE 5000
CMD ["gunicorn", "-w 3", "--bind", "0.0.0.0:5000", "app:app"]
