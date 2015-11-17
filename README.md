
<!-- THIS IS A GENERATED FILE, DO NOT EDIT -->

All things Build & Release. This role manages the provisioning of various B&R tools and services such as: code repositories, build environments, continuous integration services and package repositories. See the usage section for the exhaustive list of available components.
 Version 0.1.


## Supported Platforms

  * Ubuntu
  * Debian

## Variables

| Name | Value | Description |
|------|-------|-------------|
| `relkit_aptly_api_address` | _default_ `0.0.0.0` | API service address to bind |
| `relkit_aptly_api_port` | _default_ `8081` | API service port to bind |
| `relkit_aptly_autostart` | _default_ `True` | Boolean. If set, install the support script and manage the service status. |
| `relkit_aptly_dl_address` | _default_ `0.0.0.0` | Download service address to bind |
| `relkit_aptly_dl_port` | _default_ `8082` | Download service port to bind |
| `relkit_aptly_repositories` | _default_ `[{'distribution': 'latest', 'name': 'default'}]` | List of dict {'name', 'distribution'} |
| `relkit_aptly_state` | _default_ `ignored` | present, absent or ignored |
| `relkit_environment` | _default_ `{}` | Common environment variables, such as http_proxy |
| `relkit_gitd_autostart` | _default_ `True` | Boolean. If set, install the support script and manage the service status. |
| `relkit_gitd_repositories` | _default_ `[]` | Create/delete bare repositories. List of dict {'name', 'state'} |
| `relkit_gitd_state` | _default_ `ignored` | present, absent or ignored |
| `relkit_jenkins_autostart` | _default_ `True` | Boolean. If set, manage the service status. |
| `relkit_jenkins_http_address` | _default_ `0.0.0.0` | HTTP service address to bind |
| `relkit_jenkins_http_port` | _default_ `8080` | HTTP service port to bind |
| `relkit_jenkins_memory` | _default_ `512m` | How much memory the JVM can use |
| `relkit_jenkins_stable` | _default_ `True` | Boolean. If set, use Long Term Support (LTS) release (recommended.) |
| `relkit_jenkins_state` | _default_ `ignored` | present, absent or ignored |
| `relkit_pypiserver_allow_overwrite` | _default_ `False` | Boolean. If set, the same version of a package can be re-uploaded. |
| `relkit_pypiserver_autostart` | _default_ `True` | Boolean. If set, install the support script and manage the service status. |
| `relkit_pypiserver_disable_fallback` | _default_ `False` | Boolean. If not set, packages are fetched from PyPI on fallback. |
| `relkit_pypiserver_http_address` | _default_ `0.0.0.0` | HTTP service address to bind |
| `relkit_pypiserver_http_port` | _default_ `8083` | HTTP service port to bind |
| `relkit_pypiserver_state` | _default_ `ignored` | present, absent or ignored |
| `relkit_pypiserver_users` | _default_ `[]` | List of dict {'name', 'pass', 'state'} |
| `relkit_update` | _default_ `False` | Update packages when possible |



## Usage

To use this role from a **playbook**, 
register its ID in the project `requirements.{txt,yml}` file.
To add this role as another **role dependency**,
register its ID in the `dependencies` list of the role manifest `meta/main.yml`.
For further details,
please refer to the Ansible documentation at https://docs.ansible.com/playbooks_roles.html.

By default, this role does nothing as all `*_state` variables are set to `ignored`.
For the components you're interested in, set the `*_state` variables to `present` or `absent`.

The following components are available:
  * [PyPI Server](https://pypi.python.org/pypi/pypiserver), Python Repository.
    Variables: `relkit_pypiserver_*`.
    As the package doesn't not provide a service manifest,
    relkit ships the script `service_pypiserver.sh` to manage the service manually.
  * [Jenkins](http://jenkins-ci.org), Continuous Integration Service.
    Variables: `relkit_jenkins_*`.
  * [Aptly](http://www.aptly.info), Debian Repository.
    Variables: `relkit_aptly_*`.
    As the package doesn't not provide a service manifest,
    relkit ships the script `service_aptly.sh` to manage the service manually.
  * [Gitd](https://git-scm.com/book/en/v2/Git-on-the-Server-Git-Daemon), Code repository.
    Variables: `relkit_gitd_*`.
    As the package doesn't not provide a service manifest,
    relkit ships the script `service_gitd.sh` to manage the service manually.

**NOTICE:** Integration issues (firewalling, proxying…) are not managed by this role.
Check out [ansible-role-syskit](https://github.com/fclaerho/ansible-role-syskit) as an option for this.



## Maintenance

Install [ansible-universe](https://github.com/fclaerho/ansible-universe)
and run `ansible-universe check` to re-generate this distribution.

The following files are generated or updated based on various role assets:
  * tasks/main.yml
  * README.md


