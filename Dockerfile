FROM alpine:3.15.0
LABEL maintainer="Chris Kankiewicz <Chris@ChrisKankiewicz.com>"

# Define youtube-dl version
ARG YTDL_VERSION=2021.12.17

# Create non-root user
RUN adduser -DHs /sbin/nologin youtube-dl

# Create youtube-dl directories
RUN mkdir -pv /vol/output && chown youtube-dl:youtube-dl /vol/output

# Set youtube-dl archive URL
ARG BINARY_URL=https://github.com/rg3/youtube-dl/releases/download/${YTDL_VERSION}/youtube-dl

# Download and extract youtube-dl and dependencies
RUN apk add --update ca-certificates ffmpeg python3 tzdata wget \
    && wget ${BINARY_URL} -O /usr/local/bin/youtube-dl \
    && chmod +x /usr/local/bin/youtube-dl \
    && apk del --purge wget && rm -rf /var/cache/apk/*

# Set running user
USER youtube-dl

# Define volumes
VOLUME /vol/output

# Set working directory
WORKDIR /vol/output

# Default command
ENTRYPOINT ["python3", "/usr/local/bin/youtube-dl"]
