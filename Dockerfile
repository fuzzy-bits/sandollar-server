FROM python:3.5.4
ENV FLASK_RUN_HOST 0.0.0.0
RUN pip install pipenv
COPY . .
RUN pipenv install --system --deploy
CMD ["pipenv", "run", "flask", "run"]
