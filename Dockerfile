FROM python:3.13.17-slim-trixie

WORKDIR /src/app/

COPY ./requirements.lock .

RUN pip install --no-cache-dir --require-hashes -r ./requirements.lock

COPY . .

RUN groupadd --system projects && useradd --system --no-create-home --gid projects projects
RUN chown -R projects:projects /src/app
USER projects
