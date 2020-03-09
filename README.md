# Docker wrapped scripts for Github deployments

https://developer.github.com/v3/repos/deployments/

## Example usages

```
GITHUB_TOKEN=[YOUR_TOKEN]

# Create new deployment
DEPLOYMENT_ID=$(./bin/create_deployment.sh tachiba/example_app master)
# Or fetch current deployment
DEPLOYMENT_ID=$(./bin/fetch_deployment.sh tachiba/example_app master)

# Update the status
./bin/create_deployment_status.sh tachiba/example_app ${DEPLOYMENT_ID} pending
./bin/create_deployment_status.sh tachiba/example_app ${DEPLOYMENT_ID} success
./bin/create_deployment_status.sh tachiba/example_app ${DEPLOYMENT_ID} failure
```
