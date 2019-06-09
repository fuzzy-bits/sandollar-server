FROM python:3.5.4-alpine
ENV FLASK_RUN_HOST 0.0.0.0
RUN apk add --no-cache gcc musl-dev linux-headers
RUN pip install pipenv
COPY . .
RUN pipenv install --system --deploy
CMD ["flask", "run"]
