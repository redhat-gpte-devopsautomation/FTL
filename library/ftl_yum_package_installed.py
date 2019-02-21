#!/usr/bin/env python 

from ansible.module_utils.basic import AnsibleModule 
import yum

def main(): 
    # Parsing argument file 
    module = AnsibleModule( 
        argument_spec = dict( 
            package = dict(required=True) 
        ) 
    ) 

    package = module.params.get('package') 

    yb = yum.YumBase()
    # Error handling and JSON return 

    if yb.rpmdb.searchNevra(name=package):
        module.exit_json(msg=ret_msg) 
    else: 
        module.fail_json(msg=ret_msg) 

if __name__ == "__main__": 
    main() 
