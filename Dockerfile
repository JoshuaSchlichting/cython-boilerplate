FROM python:3.10.4 as base

WORKDIR /app
COPY *.py *.pyx requirements.txt ./
RUN pip install -r requirements.txt

RUN python setup.py build_ext --inplace
ENTRYPOINT [ "python", "app.py" ]