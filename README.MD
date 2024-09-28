# Terraform AWS Security Group
    This module is going to create the security group resource.

## Inputs

* project_name(Mandatory)- user must provide their project_name

* environment (Mandatory)-user must provide their environment information.

* sg_name(Mandatory)- user must supply their security group name

* vpc_id(Mandatory)- User must provide vpc_id

* common_tags(Optional)- Default is empty.User can supply tags in map format

* sg_tags(Optional)- Default is empty.User can supply tags in map format