## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![TODO: Update the path with the name of your diagram](Images/diagram_filename.png)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the _____ file may be used to install only certain pieces of it, such as Filebeat.

  - _TODO: Enter the playbook file._

This document contains the following details:
- Description of the Topologu
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly reduntand and available, in addition to restricting users to the network.
- What aspect of security do load balancers protect? What is the advantage of a jump box?_
- Load balancer offer protection to the network through reduntacy. This allwos the system to be available at all time. 
- Jump box provisioners allow a second gate way after the firewall to filter trafic through to ensure access to the network is being monitored for safety. 

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the files and system logs.
- What does Filebeat watch for?
- filebeat watches for changes, transfers, and execution of packets from individuals on the network. 
- What does Metricbeat record?
- metricbeat records what happens on the network with TCP and other packets crossing in and out of the network. 

The configuration details of each machine may be found below.
_Note: Use of the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables)

| Name                 | Function   | IP Address     | OS    |   |
|----------------------|------------|----------------|-------|---|
| Jump Box Provisioner | Gateway    | 10.0.0.4       | Linux |   |
| Web-1                | Web Server | 13.88.47.45    | Linux |   |
| Web-2                | Web Server | 13.88.47.45    | Linux |   |
| Elk-Server           | Web Server | 20.115.130.158 | Linux |   |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the host machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- | Whitelist IP Addresses |
- |------------------------|
- | 13.88.47.45            |
- | 10.1.0.0/16            |
- | 73.98.156.165          |
- | 10.1.0.7               |
- | 10.0.0.4               |

Machines within the network can only be accessed by other machines within the network.

A summary of the access policies in place can be found in the table below.

| Name       | Publicly Accessible | Allowed IP Addresses                   |
|------------|---------------------|----------------------------------------|
| Jump Box   | No                  | 10.0.0.1 10.0.0.2                      |
| Web-1      | No                  | 10.0.0.4 73.98.156.165 10.1.0.7        |
| Web-2      | No                  | 10.0.0.4 73.98.156.165 10.1.0.7        |
| Elk-Server | No                  | 73.98.156.165. 10.1.0.0/16 13.88.47.15 |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
- The main advantage to automated configuration of the ELK machine is, becuase it can be done quickly through a .yml script. 

The playbook implements the following tasks:
- Install and attack docker
- Download of required programs or scripts such as pip3
- Run such programs 

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

(~/Pictures/Project 1/Project 1 SC1)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- 13.88.47.45


We have installed the following Beats on these machines:
- Filebeat
- Metricbeat

These Beats allow us to collect the following information from each machine:

- Filebeat collects file such as zip, gzip, and rpm
- Metricbeat collects data such as IP Adresses and byte usage.
 
### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the /etc/ansible/roles file to /etc/ansible.
- Update the host file to include webservers and Elk
- Run the playbook, and navigate to http://20.115.130.158:5601/app/kibana to check that the installation worked as expected.


