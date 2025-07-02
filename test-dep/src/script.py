import json
import os
import sys

def main():
    args = sys.argv[1:]  # Get command line arguments
    print("Arguments passed to the script:", args)

    # Check if a config file is provided
    config_file = next((arg for arg in args if arg.startswith("--config=")), None)
    if config_file:
        config_file_path = config_file.split("=")[1]
        if os.path.exists(config_file_path):
            with open(config_file_path, 'r') as f:
                config_content = json.load(f)
                print("Config file content:", json.dumps(config_content, indent=2))
        else:
            print(f"Config file {config_file_path} does not exist.")
    else:
        print("No config file provided.")

    # print content of file secrets.json
    secrets_file_path = os.path.join(os.path.dirname(__file__), 'secrets.json')
    if os.path.exists(secrets_file_path):
        with open(secrets_file_path, 'r') as f:
            secrets_content = json.load(f)
            print("secrets.json content:", json.dumps(secrets_content, indent=2))
    else:
        print(f"secrets.json file does not exist at {secrets_file_path}.")

    # print content of file vars.json
    vars_file_path = os.path.join(os.path.dirname(__file__), 'vars.json')
    if os.path.exists(vars_file_path):
        with open(vars_file_path, 'r') as f:
            vars_content = json.load(f)
            print("vars.json content:", json.dumps(vars_content, indent=2))

            # if vars.json contains a key "policy" with value "fail", exit with code 1
            if vars_content.get("policy") == "fail":
                print("Policy is set to 'fail'. Exiting with code 1.")
                sys.exit(1)
    else:
        print(f"vars.json file does not exist at {vars_file_path}.")
    
    # create file outputs.json with content { success: true }
    outputs_file_path = os.path.join(os.path.dirname(__file__), 'outputs.json')
    with open(outputs_file_path, 'w') as f:
        json.dump({"some_value": "test"}, f)
    print(f"Created outputs.json at {outputs_file_path} with content {{ 'some_value': test }}")

if __name__ == "__main__":
    main()