# Kettle Load Balancing
> The PDI/Kettle code to Handle Load Balancing of Jobs across Slave Servers

- **Version**: 0.1 [Draft/POC]
- **Author**: Rishu Kumar Shrivastava
- **Email**: rishu.shrivastava@gmail.com

## Description:
This Pentaho DI code is built in order to handle Load balancing of Jobs across servers. If there are multiple jobs, then these jobs will be shared across the available slave servers. Now if no slaves are available, then the jobs will move into "Waiting" state. These waiting jobs will be executed once the slave servers are available. This code can also handle parallel jobs.

## Limitations:
- This code has been built to execute multiple Pentaho Transformations (.ktr) files across Slave Servers. The Pentaho Jobs (.kjb) will not be executed since it is not done as a part of this draft.
- There are concepts of Queue, Reading File Data, Maintaining Slave Server availability data,, which are built using relational database (PostgreSQL). Any other storage system can also be used, if required.
