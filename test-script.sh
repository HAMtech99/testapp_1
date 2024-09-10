            #!/bin/bash
            #Update system
            sudo dnf update -y

            #start and enable docker
            sudo systemctl start docker
            sudo systemctl enable docker

            # Pull docker image
            sudo docker pull cloudkid99/testapp_1

            # Run the docker container and expose port 80
            sudo docker run -d -p 80:80 cloudkid99/testapp_1
Outputs:
   InstancePublicIP:
     Description: "Public IP of the instance"
     Value: !GetAtt
MYEC2Instance.PublicIP
