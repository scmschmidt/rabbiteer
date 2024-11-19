#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import json
import sys
import pprint


with open(sys.argv[1], 'r') as f:
    response =json.load(f)
    
# Walk trough `check_results` list (one element per check).
for check_result in response['check_results']:
    
    check_id = check_result['check_id'] 
    print(f'\n{check_id}')
    print('-' * len(check_id))
    
    # Walk through the agents list (one element per agent).
    for agent in check_result['agents_check_results']:
        print(f'''{agent['agent_id']}: {agent['expectation_evaluations'][0]['return_value']}''')
    
    
    #pprint.pprint(check_result)
    
  
  
  
  
    
#print(json.dumps(response['check_results']))