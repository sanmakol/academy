# c02-network03

## Commands Execution Output

- Commands for creating a new VPC:
```
aws ec2 create-vpc --cidr-block 10.128.0.0/16 --tag-specifications 'ResourceType=vpc,Tags=[{Key=Name,Value=tk-dojo-vpc}]'
```

Output
```
{
    "Vpcs": [
        {
            "CidrBlock": "10.128.0.0/16",
            "DhcpOptionsId": "dopt-3f26dd58",
            "State": "available",
            "VpcId": "vpc-0437c9e5d4deb0d46",
            "OwnerId": "152848913167",
            "InstanceTenancy": "default",
            "CidrBlockAssociationSet": [
                {
                    "AssociationId": "vpc-cidr-assoc-0bb1cb6420cce2e74",
                    "CidrBlock": "10.128.0.0/16",
                    "CidrBlockState": {
                        "State": "associated"
                    }
                }
            ],
            "IsDefault": false,
            "Tags": [
                {
                    "Key": "Name",
                    "Value": "tk-dojo-vpc"
                }
            ]
        }
    ]
}
```

- Any extra challenges faced?

May need to ensure CIDR range is not conflicting with other VPCs

<!-- Don't change anything below this point-->
***
Answer for exercise [c02-network03](https://github.com/devopsacademyau/academy/blob/893381c6f0b69434d9e8597d3d4b1c17f9bc1371/classes/02class/exercises/c02-network03/README.md)