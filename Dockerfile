FROM python:latest

WORKDIR /app

COPY requirements.txt requirements.txt

##RUN apk upgrade --no-cache

RUN pip3 install --trusted-host pypi.org --trusted-host pypi.python.org --trusted-host=files.pythonhosted.org --upgrade pip

RUN pip3 install --trusted-host pypi.org --trusted-host pypi.python.org --trusted-host=files.pythonhosted.org -r requirements.txt

COPY . .

COPY weather.py weather.py

CMD ["python", "-u", "weather.py"]