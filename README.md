# terraformcontrol

A place to centralise Terraform changes within a given account.



DIRECTORY STRUCTURE

ACCOUNT_NAME/ENVIRONMENT/STACK

STACK = e.g. Network or Application stack

Application stack being any given resource needed to deploy a stack

Also in terraformcontrol/639240896779/dev/application-a/main.tf - the data block at the top is a good example of how to reference outputs in other state files.
https://github.com/willfarley/terraformcontrol/blob/master/639240896779/dev/application-a/main.tf#L19 is where an output is being used.
