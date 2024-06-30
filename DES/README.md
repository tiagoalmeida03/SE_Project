# SOFTWARE DESIGN
This file explains the software design and file structure of the project.

## Table of Contents

- [SOFTWARE DESIGN](#software-design)
  - [Table of Contents](#table-of-contents)
  - [File Structure](#file-structure)
    - [Docker](#docker)
    - [Frontend](#frontend)
    - [Backend](#backend)
    - [Testing](#testing)


## File Structure

The file structure of the project is as follows:

| File/Folder | Description |
| ----------- | ----------- |
| [DEV/docker-compose.yml](#docker) | Contains the docker-compose file for the project. |
| [DEV/frontend](#frontend) | Contains the frontend code for the project. |
| [DEV/backend](#backend) | Contains the backend code for the project. |
| [DEV/testing](#testing) | Contains the testing code for the project. |

### Docker
The docker-compose file is used to run the project. It contains the backend the frontend and the database. The database is a SQLite database. The backend is a DJango server. The frontend is a React app running with vite.

For instructions on how to run the project see the [DEV/README.md](/DEV) file.

### Frontend
Frontend is a React app running with vite. It is located in the [DEV/frontend](/DEV/frontend/) folder.

### Backend
Backend is a DJango server. It is located in the [DEV/backend](/DEV/backend/) folder.


### Testing
