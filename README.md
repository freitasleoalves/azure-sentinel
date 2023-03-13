
# azure-sentinel

Projeto em terraform que visa o provisionamento da infraestrutura necessaria para o monitoramento da postura dasegurança em cloud com Azure Sentinel.


## Documentação

[Documentação](https://link-da-documentação)


## Uso/Exemplos

O projeto esta segregado em duas versões.

A v1 provisiona toda a infra necessaria para ativação do Sentinel.

A v2 utiliza de recursos ja provisionados para provisionamento do recurso.

O projeto tem a seguinte estrutura necessaria para funcionamento:

```
C:.
└───azure-sentinel
    │   .gitignore
    │   README.md
    │
    ├───.github
    │   └───workflows
    │           terraform.yml
    │
    ├───v1
    │   │   .gitignore
    │   │   .pre-commit-config.yaml
    │   │   .terraform-docs.yml
    │   │   .terraform.lock.hcl
    │   │   backend.tf
    │   │   locals.tf
    │   │   main.tf
    │   │   outputs.tf
    │   │   provider.tf
    │   │   README.md
    │   │   variables.tf
    │   │
    │   ├───config
    │   │       terraform.tfvars
    │   │
    │   └───modules
    │       ├───log-analytics
    │       ├───resource-groups
    │       ├───storage-account
    │       ├───vnet
    │       └───workspace
    │
    └───v2
        │   .gitignore
        │   .pre-commit-config.yaml
        │   .terraform-docs.yml
        │   .terraform.lock.hcl
        │   backend.tf
        │   data.tf
        │   locals.tf
        │   main.tf
        │   outputs.tf
        │   provider.tf
        │   README.md
        │   terraform.tfvars
        │   variables.tf
        │
        └───modules
            ├───log-analytics
            ├───resource-groups
            ├───storage-account
            └───workspace

```

