# Brightspot Cloud Development
A plugin for personal Brightspot instances to be run on AWS.

## System Requirements
- Vagrant v2.2.0 or greater

## AWS Configuration

If you haven't already done so, set your AWS access key ID and secret access key in `~/.aws/credentials`. More information on [AWS Security Credentials](https://docs.aws.amazon.com/general/latest/gr/aws-security-credentials.html).

### From your AWS console
- Create a EC2 security group and name it `vagrant`. Allow SSH on port 22 inbound and allow all outbound traffic on ports 80 and 443.
- Create a key-pair and move the downloaded private key to your project directory


## Vagrant Configuration

Due to a limitation in Vagrant, only one provider is allowed at a time for a given project, so clone a fresh copy of your Brightspot project if necessary.



Install the vagrant-aws plugin
```
$ vagrant plugin install vagrant-aws
```

Import the Brightspot-AWS Vagrant box file
```
$ vagrant box add brightspot-aws https://github.com/peaster/brightspot-vagrant-aws/raw/master/box/brightspot-aws.box
```


Copy the root Vagrantfile from this directory and modify the `keypair_name`, `security_group`, and `private_key_paths` fields


```
$ vagrant up
```

Current limitations

