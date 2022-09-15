from brownie import HashBrownie, config, accounts

def deploy_token():
    account = accounts.add(config['key'])
    token = HashBrownie.deploy({"from":account}, publish_source=True)
    print("Contract deployed to {}".format(token.address))

def main():
    deploy_token()