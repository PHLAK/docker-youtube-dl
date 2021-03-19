docker-youtube-dl
=================

<p align="center">
    <a href="https://spectrum.chat/phlaknet"><img src="https://img.shields.io/badge/Join_the-Community-7b16ff.svg?style=for-the-badge" alt="Join our Community"></a>
    <a href="https://github.com/users/PHLAK/sponsorship"><img src="https://img.shields.io/badge/Become_a-Sponsor-cc4195.svg?style=for-the-badge" alt="Become a Sponsor"></a>
    <a href="https://paypal.me/ChrisKankiewicz"><img src="https://img.shields.io/badge/Make_a-Donation-006bb6.svg?style=for-the-badge" alt="One-time Donation"></a>
    <br>
    <a href="https://hub.docker.com/repository/docker/phlak/youtube-dl/tags"><img alt="Docker Image Version" src="https://img.shields.io/docker/v/phlak/youtube-dl?style=flat-square&sort=semver"></a>
    <a href="https://hub.docker.com/repository/docker/phlak/youtube-dl"><img alt="Docker Pulls" src="https://img.shields.io/docker/pulls/phlak/youtube-dl?style=flat-square"></a>
    <a href="https://github.com/PHLAK/docker-youtube-dl/blob/master/LICENSE"><img src="https://img.shields.io/github/license/PHLAK/docker-youtube-dl?style=flat-square" alt="License"></a>
    <a href="https://hub.docker.com/repository/docker/phlak/youtube-dl/builds"><img alt="Docker Build Status" src="https://img.shields.io/docker/build/phlak/youtube-dl?style=flat-square"></a>
</p>

<p align="center">
    Docker image for <a href="https://ytdl-org.github.io/youtube-dl/">youtube-dl</a> client.
</p>

---

Running the Container
---------------------

    docker run -it --rm -v "${PWD}:/vol/output phlak/youtube-dl" [options] <url>

Bash Alias
----------

For convinience you may add the following bash alias. This will allow you to run
`youtube-dl` from the command line without all the docker fluff.

    alias youtube-dl='docker run -it --rm -v "${PWD}:/vol/output" phlak/youtube-dl'

Troubleshooting
---------------

For general help and support join our [Spectrum Community](https://spectrum.chat/phlaknet) or reach out on [Twitter](https://twitter.com/PHLAK).

Please report bugs to the [GitHub Issue Tracker](https://github.com/PHLAK/docker-youtube-dl/issues).

Copyright
---------

This project is licensed under the [MIT License](https://github.com/PHLAK/docker-youtube-dl/blob/master/LICENSE).
