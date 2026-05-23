<img src="./images/docker-swarm.png" width="250" height="156" alt="Docker Swarm" />

# Docker Swarm - Ansible Deployment

A lightweight Ansible-based starter for bootstrapping a Docker Swarm environment on Ubuntu hosts.

## Status

- Version: `1.0`
- State: early release / proof of concept
- Target: Ubuntu-based hosts using a simple local inventory

## Structure

- `docker-swarm/`
  - `ansible.cfg` - project configuration for Ansible
  - `inventory/` - inventory source for managed hosts
  - `main.yml` - wrapper playbook that imports task files
  - `scripts/` - helper scripts for executing playbooks
  - `tasks/` - reusable task definitions
- `images/` - supporting visuals for the repository

## Usage

From `docker-swarm/docker-swarm`:

```bash
./scripts/ansible-execute.bash
```

Or run the playbook directly:

```bash
ansible-playbook main.yml -i inventory/inventory.ini
```

## Notes

- This repository is intentionally simple for the first release.
- The task set is designed to be included from a higher-level playbook.
- Inventory and host details should be adapted for your environment.

## Change Log

| Version | Date | Notes |
|---|---|---|
| 1.0 | 23/05/2026 | Initial release |
