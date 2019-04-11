#!/usr/bin/python


ANSIBLE_METADATA = {
            'metadata_version': '0.1',
            'status': ['preview'],
            'supported_by': 'community'
                    }
from ansible.module_utils.basic import *

# set registers to zero/null prior to checking a lab

def opentlc_init (module):
    facts = { 'rc_failure_messages' : []}
    return facts

def opentlc_log_failure(module):
    failure_message = ("[" + module.params['hostname']  + "]: "  + module.params['reason'])
    facts = {'rc_failure_messages': (module.params['failure_messages'] + [failure_message] ) }
    return facts

def main():
    module = AnsibleModule(
        argument_spec = dict(
            failure_messages=dict(required=True, type='list'),
            hostname=dict(required=False, type='str'),
            reason=dict(required=True, type='str'),
            init=dict(required=False, type='bool')
        )
    )
    
    if module.params['init']:          # initialize facts to zero/null
        facts = opentlc_init(module)
    else:    
        facts = opentlc_log_failure(module)


    module.exit_json(changed=True, failure_messages=module.params['failure_messages'], ansible_facts=facts)
    
if __name__ == '__main__':
    main()
