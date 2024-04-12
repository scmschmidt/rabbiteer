# rabbiteer

CLI tool to interact with Wanda using its API (https://www.trento-project.io/wanda/).

## Installation

- Clone this repo.

- Install the Python modules either via `pip` or distribution packages: 
    - argparse
    - requests

## Usage

`rabbiteer.py -h|--help` gives an overview how to use it. Therefore here just a few examples:


- Check the health of Wanda

  A healthy Wanda:  
  ```
  ./rabbiteer.py http://localhost:4000 Health
  database: pass
  ```

  Wanda is not running:     
  ```
  ./rabbiteer.py http://localhost:4000 Health
  Error connecting to "http://localhost:4000/api/healthz": HTTPConnectionPool(host='localhost', port=4000): Max retries exceeded with url: /api/healthz (Caused by NewConnectionError('<urllib3.connection.HTTPConnection object at 0x7f9ee76c5860>: Failed to establish a new connection: [Errno 111] Connection refused',))
  ```

- List all available checks

  In a human-readable form:
  ```
  ./rabbiteer.py http://localhost:4000 ListChecks
  00081D - Check Corosync max_messages during runtime (Corosync)
  0B6DB2 - SBD_PACEMAKER (SBD)
  156F64 - Check Corosync token_timeout value (Corosync)
  ...
  DC5429 - supported corosync version (OS and package versions)
  F50AF5 - supported python3 version (OS and package versions)
  FB0E0D - Check Corosync consensus timeout during runtime (Corosync)

  38 check(s) found.
  ```  

  If a JSON string is required:
  ```
  ./rabbiteer.py -r http://localhost:4000 ListChecks
  {"items": [{"id": "00081D", "name": "Check Corosync max_messages during runtime", "values": [{"def...
  ```

- Execute a check

  Running 156F64 for an Azure host (human-readable summary):
  ```
  ./rabbiteer.py http://localhost:4000 ExecuteCheck -e provider=azure -c 156F64 -t b651491b-904d-5448-9350-fe817c1f2c6e

  check=156F64 agent_id=b651491b-904d-5448-9350-fe817c1f2c6e result=critical execution_id=f248f923-2c88-4a19-8f57-52691fb72615
  ```

  Running 156F64 for an Azure host (full WANDA JSON response):
  ```
  ./rabbiteer.py -r http://localhost:4000 ExecuteCheck -e provider=azure -c 156F64 -t b651491b-904d-5448-9350-fe817c1f2c6e

  {"timeout": [], "status": "completed", "started_at": "2024-04-12T12:08:17.738589Z", "result": "critical", ...
  ```

