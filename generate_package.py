import json
import sys



def generate(version: str, sha: str) -> str:
    package = ""
    with open("Package.template", "r") as fp:
        package = fp.read()
        
    return package.replace("#VERSION#", version).replace("#SHA#", sha)

args = sys.argv


with open(args[1], "w") as fp:
    fp.write(generate(args[2], args[3]))