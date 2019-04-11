#!/usr/bin/env python 

from ansible.module_utils.basic import AnsibleModule 
import os

class Service(): # Simple User class for validating if a user exists
    def __init__ (self, service`):
        self.service = service

    def service_running(self):
        stat = os.system('service sshd status')
        if stat == 0
            success = True 
            ret_msg = 'Service: ' + self.service + ' running'
        except KeyError: 
            success = False 
            ret_msg = 'Service: ' + self.service + ' not running'
        return success, ret_msg


def main(): 
    module = AnsibleModule( 
        argument_spec = dict( 
            service = dict(required=True) 
        ) 
    ) 

    service = Service(module.params.get('service'))
    success, ret_msg = service.service_running()

    if success: 
        module.exit_json(msg=ret_msg) 
    else: 
        module.fail_json(msg=ret_msg) 

if __name__ == "__main__": 
    main() 
