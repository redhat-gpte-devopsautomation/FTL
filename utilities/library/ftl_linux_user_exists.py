#!/usr/bin/env python 

from ansible.module_utils.basic import AnsibleModule 
import pwd 

class User(): # Simple User class for validating if a user exists
    def __init__ (self, user):
        self.user = user

    def user_exists(self):
        try: 
            pwd.getpwnam(self.user) 
            success = True 
            msg = 'User %s exists' % self.user 
        except KeyError: 
            success = False 
            msg = 'User %s does not exists' % self.user 
        return success, msg


def main(): 
    module = AnsibleModule( 
        argument_spec = dict( 
            user = dict(required=True) 
        ) 
    ) 

    user = User(module.params.get('user'))
    success, msg = user.user_exists()

    if success: 
        module.exit_json(msg=msg) 
    else: 
        module.fail_json(msg=msg) 

if __name__ == "__main__": 
    main() 
