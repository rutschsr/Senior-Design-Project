import subprocess
import platform
 
def ping_ip(current_ip_address):
        try:
            output = subprocess.check_output("ping -{} 1 {}".format('n' if platform.system().lower(
            ) == "windows" else 'c', current_ip_address ), shell=True, universal_newlines=True)
            if 'unreachable' in output:
                return False
            else:
                return True
        except Exception:
                return False
 
if __name__ == '__main__':
        if ping_ip('10.10.10.1'):
            print(f"{each} is available")
        else:
            print(f"{each} is not available")
