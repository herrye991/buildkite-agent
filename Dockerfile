FROM debian:stable-slim
ENV TERM=xterm
ENV DEBIAN_FRONTEND=noninteractive
ENV TOKEN="ec8b5b9fe145f8924cc23444798f1be320bd9046ad99a60807"
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install curl sudo -y
RUN bash -c "`curl -sL https://raw.githubusercontent.com/buildkite/agent/master/install.sh`"
CMD ["/bin/bash", "-c", "~/.buildkite-agent/bin/buildkite-agent start"]
